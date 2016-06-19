#!/bin/sh

if [ -z "$1" ] || [ -z "$2" ]
	then
	echo "Usage $0 [path/to/bin] [docker-image]"
	exit
fi

echo "prepare..."
rm -rf ./tmp
mkdir tmp

echo "copy dependencies from: " $1
cp `ldd $1 | grep -v nux-vdso | awk '{print $3}'` ./tmp/

echo "build image: " $2
docker build -t $2 .
