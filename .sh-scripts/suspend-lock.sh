#!/bin/bash
killall firefox
nordvpn disconnect
slock &
sleep 3
systemctl suspend
