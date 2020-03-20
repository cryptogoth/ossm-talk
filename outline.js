'use strict'
const fs = require('fs')
const { List } = require('immutable')
require('colors')

const topics = List(fs.readFileSync('outline.txt').toString().split('\n')).filter(
  (x) => x !== ''
)

module.exports = (index) => {
  const asciiArt = fs.readFileSync('art.txt').toString()
  topics.map((x, i) => {
    const str = asciiArt.rainbow.bgGray
    console.log((i === index) ? '*' + str + '*' : (i+1) + '.  ' + x )
  })
}
