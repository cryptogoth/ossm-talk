'use strict'
const fs = require('fs')
const { List } = require('immutable')
require('colors')

// Re-enable if we have time for fancy whisper AND image / movie embedding
const ENABLE_WHISPER = false
let web3

if (ENABLE_WHISPER) {
  const Web3 = require('web3')
  web3 = new Web3('wss://whisper.arcology.nyc:8547')
}

const DEFAULT_CHANNEL = 'default'
const DEFAULT_TOPIC = '0x11223344'
const POW_TARGET = 2
const POW_TIME = 100
const TTL = 20

let initted = false
let keyPair
let channelSymKey
let channelTopic

// Only call this if ENABLE_WHISPER is true
const init = async () => {
  if (!initted) {
    keyPair = await web3.shh.newKeyPair()
    channelSymKey = await web3.shh.generateSymKeyFromPassword(DEFAULT_CHANNEL);
    channelTopic = DEFAULT_TOPIC;
    initted = true
  }
  return { keyPair, channelSymKey, channelTopic }
}

const post = async (message) => {
  if (ENABLE_WHISPER) {
    const { keyPair, channelSymKey, channelTopic } = await init()
    web3.shh.post({
      symKeyID: channelSymKey,
      sig: keyPair,
      ttl: TTL,
      topic: channelTopic,
      payload: web3.utils.fromAscii(message + '\n'),
      powTime: POW_TIME,
      powTarget: POW_TARGET
    }); 
  } 
  console.log(message)
}

const topics = List(fs.readFileSync('outline.txt').toString().split('\n')).filter(
  (x) => x !== ''
)

module.exports = async (index) => {
  const asciiArt = fs.readFileSync('art.txt').toString()
  const string = topics.map((x, i) => {
    const str = asciiArt.rainbow.bgGray
    return ((i === index) ? '*' + str + '*' : (i+1) + '.  ' + x )
  })
  await post(string.toJS().join('\n\r'))
}
