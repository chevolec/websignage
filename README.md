# websignage

This project uses Electron and display a local website that shows the images.


To install you must have git  and have the files in the home folder

```
sudo apt update
sudo apt install git vim -y
cd ~
git clone https://github.com/chevolec/websignage.git
mv websineage/* ./
rm -fr sineage_dist
chmod +x install.sh
```


### To run on startup

In the file /etc/rc.local, insert at the end
```
Xorg -s 0 -quiet -nocursor &
sudo -u pi ~/autorun.sh >~/auto.log 2>&1 &
```
After that, restart



## To Do

- Generate website on the fly, after update images
- set the screen size by variable
- Check if there is an update in the FTP file
