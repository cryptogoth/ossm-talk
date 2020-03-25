#!/bin/sh

figlet "Web Engineering at Etsy"

echo "
I worked there from 2016 - 2018.

Etsy first made me conscious of engineering culture.

* Code as craft
* Blameless post-mortem
* Failure is a symptom of the system

* Google receives around 40,000 searches per second
* Etsy received 1,500 product searches per second
  * search architecture: 60 million product lists
  * divide them up into 8 shards
  * 2 sides of 8 columns each, 4 machines in each column: 32, x2 = 64
"

