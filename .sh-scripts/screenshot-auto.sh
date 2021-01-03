#!/bin/bash
timestamp="$(date +%Y%m%d%H%M%S)"
targetbase="$HOME/Screenshots"
mkdir -p $targetbase
[ -d $targetbase ] || exit 1
#touch $targetbase/$timestamp.txt
sleep 0.5 && scrot "$targetbase/$timestamp.png" -sb -q 10
