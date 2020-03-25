#!/bin/sh
clear
figlet 'Quantum Circuits'

echo "
My thesis work was on quantum architecture for breaking RSA:
how to arrange quantum bits to run efficiently, and complete within human lifetimes.

Write inputs into some qubits.
"

echo "Image: [A constant-depth fanout circuit...]"
feh images/fanout-circuit.png

echo "Image: [A 1-qubit carry-save adder...]"
read y
feh images/qcsa1.png

echo "Image: [A 3-qubit carry-save adder...]"
read y
feh images/qcsa3.png
