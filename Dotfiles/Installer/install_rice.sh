#!/bin/bash
# This script was made to easily install the minimum required to clone this repository
# and run the other scripts. You shouldn't use it.

#Configure Reflector
sudo pacman -Syu
sudo pacman --needed --noconfirm -S reflector
sudo reflector --latest 5 --sort rate --save /etc/pacman.d/mirrorlist
sudo systemctl enable reflector.service

#Install Git
sudo pacman --needed --noconfirm -S git

#Install Make Paru
sudo pacman --needed --noconfirm base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ..
rm -rf paru
cd
clear

#Install Base Graphics + Firefox
sudo pacman --needed --noconfirm -S xorg-server xorg-apps xorg-xinit xterm xclip i3-gaps i3blocks numlockx ttf-dejavu-nerd
echo 'exec i3' > ~/.xinitrc
paru -S firefox

#Install Other Dependencies
sudo paru --needed --noconfirm -S python-pipx man-db kitty vim playerctl rofi polybar feh gcc yazi picom nerd-fonts fd pavucontrol brighntessctl dmenu python python-requests python-cairo python-gobject libwnck3 wget dunst network-manager-applet cava


#Clone Main repo
clear
cd
git clone https://github.com/WatchfulSquidEyes/dotfiles_everforest.git
cd dotfiles_everforest

cd

