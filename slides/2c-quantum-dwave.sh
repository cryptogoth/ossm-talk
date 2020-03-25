#!/bin/sh
clear
figlet 'Quantum Processors'

echo "
D-Wave was the first company to manufacture quantum processors.

Current models have between 1000 and 4000 usable quantum bits.
"

echo "Image: [A D-Wave processor column, cooled to 20 mK...]"
read y
feh images/dwave-column.jpg

echo "Image: [Humans next to a D-Wave fridge...]"
read y
feh images/dwave-group.png
