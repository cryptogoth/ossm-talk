#!/bin/sh

# Download images and movies locally before presenting

youtube-dl https://www.youtube.com/watch\?v\=V4f_1_r80RY
curl -X GET "https://qph.fs.quoracdn.net/main-qimg-368a2556ebfac7549fd1598716a634fd" -o images/fantastic-beasts.jpg
