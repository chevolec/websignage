#!/bin/bash

#Install X enviroment
sudo apt install -y --no-install-recommends xserver-xorg xserver-xorg-input-evdev 

# Download  Electron 5.0.2
cd ~
mkdir Electron
cd Electron
unzip ~/artifacts/electron-v5.0.2-linux-armv7l.zip

# install the dependencies for Electron
sudo apt install -y --no-install-recommends libnss3 libgtkextra-dev libgtk-3-0 libxtst-dev libxss1 

#set executable autorun
chmod +x ~/autorun.sh
chmod +x ~/update_display.cron


# Clean up files
rm install.sh
rm README.md
#sudo shutdown -r now

#Manually add lines to rc.local
echo 'To finish the setup, in the file /etc/rc.local, insert'
echo 'Xorg -s 0 -quiet -nocursor &'
echo 'sudo -u pi ~/autorun.sh >~/auto.log 2>&1 &'
echo 'after that, restart'

# ~/Electron/electron --display=:0 /home/pi/display
