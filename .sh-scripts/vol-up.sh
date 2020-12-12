#!/bin/bash
pactl -- set-sink-volume $(pactl list short sinks | grep RUNNING | cut -f 1 -d 'a') +2%
