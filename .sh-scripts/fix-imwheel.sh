#!/bin/bash
while true; do
CUR_PERCENT=$(ps -aux | grep imwheel | cut -f 5 -d ' ' | head -n 1)
#0.7
if [ "$CUR_PERCENT" != "0.0" ]; then
  killall imwheel
  sleep 1
  imwheel
fi
sleep 5
done