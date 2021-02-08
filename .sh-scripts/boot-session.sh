#!/bin/bash
APPLE_DEV_ID=`xinput list | grep 'Apple Inc. Magic Trackpad 2' | cut -f 2 -d '=' | cut -f 1 -d '['`
if [[ ! -z "$APPLE_DEV_ID" ]]; then
  CONFIG_ID=`xinput list-props $APPLE_DEV_ID | grep 'Tapping Enabled (' | cut -f 2 -d '(' | cut -f 1 -d ')'`
  # Set tab as left click
  xinput set-prop $APPLE_DEV_ID $CONFIG_ID 1
  # Set accel speed
  CONFIG_ID=`xinput list-props $APPLE_DEV_ID | grep 'Accel Speed (' | cut -f 2 -d '(' | cut -f 1 -d ')'`
  xinput set-prop $APPLE_DEV_ID $CONFIG_ID 0.55
fi

KEN_DEV_ID=`xinput list | grep 'Kensington Slimblade Trackball' | cut -f 2 -d '=' | cut -f 1 -d '['`
if [[ ! -z "$KEN_DEV_ID" ]]; then
  CONFIG_ID=`xinput list-props $KEN_DEV_ID | grep 'Accel Speed (' | cut -f 2 -d '(' | cut -f 1 -d ')'`
  xinput set-prop $KEN_DEV_ID $CONFIG_ID 0.55
fi


CUR_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd "$CUR_DIR"
killall 'fix-imwheel.sh' &
sleep 1
./fix-imwheel.sh &