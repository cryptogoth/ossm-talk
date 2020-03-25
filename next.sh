#! /bin/sh


INDEX=$((INDEX + 1))
export INDEX

source import.sh
echo "looking for $FILE"

# If we don't find the next letter
# Increment the number

while [ ! -e "${FILE}" ]; do
  NUMBER=$((NUMBER + 1))
  INDEX=1
  export NUMBER
  source import.sh
done

clear

source $FILE
