#!/bin/bash
timestamp="$(date +%Y%m%d%H%M%S)"
targetbase="$HOME/screenshots"
mkdir -p $targetbase
[ -d $targetbase ] || exit 1
touch $targetbase/$timestamp.txt
sleep 0.2 && scrot "$targetbase/$timestamp.png" -sb -q 10