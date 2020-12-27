#!/bin/bash
APPLE_DEV_ID=`xinput list | grep 'Apple Inc. Magic Trackpad 2' | cut -f 2 -d '=' | cut -f 1 -d '['`
if [[ ! -z "$APPLE_DEV_ID" ]]; then
  # Set tab as left click
  xinput set-prop $APPLE_DEV_ID 309 1
  # Set accel speed
  xinput set-prop $APPLE_DEV_ID 302 0.55
fi

KEN_DEV_ID=`xinput list | grep 'Kensington Slimblade Trackball' | cut -f 2 -d '=' | cut -f 1 -d '['`
if [[ ! -z "$KEN_DEV_ID" ]]; then
  xinput set-prop $APPLE_DEV_ID 302 0.55
fi