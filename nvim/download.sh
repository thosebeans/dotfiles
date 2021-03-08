#!/usr/bin/env sh

wget "$1" -O "$2" ||
curl "$1" -o "$2"
