#!/bin/sh

clear
figlet '2. Distributed // Systems' > art.txt

node -e "require('./outline')(1)"

figlet 'General approach:'

echo "
* have more than one machine
"


Opportunity:

* divide up work among multiple computers
* keep your metadata private

Challenge:

* agree on a value (consensus)
* agree on the time (clocks)
"
