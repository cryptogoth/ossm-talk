#!/bin/sh

clear
figlet '6. Fantastic beasts' > art.txt

node -e "require('./outline')(5)"

node -e "require('terminal-image').file('images/fantastic-beasts.jpg').then((val) => console.log(val))"
