#!/bin/bash

#Install X enviroment
echo ''
echo 'Install X Enviroment '
echo ''
sudo apt install -y --no-install-recommends xserver-xorg xserver-xorg-input-evdev 

# Download  Electron 5.0.2
echo ''
echo 'Download Electron 5.0.2 '
echo ''
cd ~
wget https://github.com/electron/electron/releases/download/v5.0.2/electron-v5.0.2-linux-armv7l.zip
mkdir Electron
cd Electron
unzip ~/electron-v5.0.2-linux-armv7l.zip

# install the dependencies for Electron
echo ' '
echo 'Install the dependencies for Electron '
echo ' '
sudo apt install -y --no-install-recommends libnss3 libgtkextra-dev libgtk-3-0 libxtst-dev libxss1 

#set executable autorun
echo ''
echo 'Set sh files exec modes '
echo ''

mv ~/update_display.cron.bak ~/update_display.cron
chmod +x ~/autorun.sh
chmod +x ~/update_display.cron


# Clean up files
echo ''
echo 'Remove temporary files '
echo ''

rm ~/install.sh
rm ~/README.md
rm ~/electron-v5.0.2-linux-armv7l.zip

#Manually add lines to rc.local
echo ''
echo ''
echo 'To finish the setup, in the file /etc/rc.local, insert'
echo 'Xorg -s 0 -quiet -nocursor &'
echo 'sudo -u pi ~/autorun.sh >~/auto.log 2>&1 &'
echo 'after that, restart'

# ~/Electron/electron --display=:0 /home/pi/display
