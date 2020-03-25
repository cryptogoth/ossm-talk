#!/bin/sh

clear
figlet '4. Web // privacy // mesh' > art.txt

node -e "require('./outline')(3)"

echo "
  web engineering : stories from Amazon, Etsy, and scaling demand
  privacy engineering : stories from Ethereum, and scaling anonymity
  mesh engineering : stories from NYC Mesh, and scaling decentralization
"
