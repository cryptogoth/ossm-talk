#! /bin/sh


INDEX=$((INDEX + 1))
export INDEX

source import.sh
echo "looking for $FILE"

# If we don't find the next letter
# Increment the number

if [ ! -e "${FILE}" ]; then
  NUMBER=$((NUMBER + 1))
  INDEX=1
  export NUMBER
fi

source import.sh

clear

source $FILE
