#!/bin/bash
while true
do
~/Electron/electron --disable-seccomp-filter-sandbox --display=:0 ~/display
sleep 5
done
