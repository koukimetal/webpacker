#!/bin/sh

if [ $# -ne 1 ]; then
  echo "webpacker.sh <path>"
  exit 1
fi

docker run -v `pwd`/$1:/temp webpacker
