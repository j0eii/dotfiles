#!/bin/sh
timestamp="$(date +%Y%m%d%H%M%S)"
targetbase="$HOME/screenshots"
mkdir -p $targetbase
[ -d $targetbase ] || exit 1
scrot $targetbase/$timestamp.png -sb  -q 10