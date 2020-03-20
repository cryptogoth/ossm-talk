#!/bin/sh

LETTERS=($(python -c "print(' '.join([chr(x) for x in range(97,97+26)]))"))
LETTER=${LETTERS[${INDEX}]}
export LETTER

FILEBASE="slides/${NUMBER}${LETTER}"
if [ ! -e "${FILEBASE}" ] && [ "${INDEX}" -eq "1" ]; then
  FILEBASE="slides/${NUMBER}"
fi

FILE=$(ls ${FILEBASE}* | head -n 1)

export FILE
