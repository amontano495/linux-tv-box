#!/bin/bash
xargs sudo apt -y install < packages
mkdir -p ~/.config/autostart
sudo mv autologin.conf /etc/systemd/system/getty@tty1.service.d/autologin.conf
wget https://github.com/complexlogic/flex-launcher/releases/download/v2.1/flex-launcher_2.1_amd64.deb
sudo apt install ./flex-launcher_2.1_amd64.deb
cp /usr/share/applications/flex-launcher.desktop ~/.config/autostart
