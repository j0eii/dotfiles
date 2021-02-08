#!/bin/bash
nordvpn disconnect
slock &
sleep 3
systemctl suspend
