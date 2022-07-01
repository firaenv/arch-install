#!/bin/bash

# Default packages are for the configuration and corresponding .config folders
# Install packages after installing base Arck with no GUI

# Install AUR Helper
sudo pacman -Sy git -y
git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -si

# Cd to arch dir
cd ~/arch-install

# xorg display server installation
yay -S xorg

# Python is required for bumblebee-status.
yay -S python-pip

# Microsoft for Intel/AMD
# yay -S amd-ucode
yay -S intel-ucode

# Network Manager
yay -S networkmanager

# Installation for Appearance management
yay -S lxappearance

# File Manager
yay -S pcmanfm xfce4-settings ranger

# Network File Tools/System Events
yay -S dialog mtools dosfstools avahi-daemon acpi acpid gvfs

sudo systemctl enable avahi-daemon
sudo systemctl enable acpid

# Terminal
yay -S kitty

# Sound packages
yay -S pulseaudio alsa-utils pavucontrol volumeicon

# Neofetch/HTOP
yay -S neofetch htop

# EXA installation
# replace ls command in .bashrc file with line below 
# alias ls='exa -al --long --header --color=always --group-directories-first'
yay -S exa

# Printing and bluetooth
yay -S cups
yay -S bluez blueman

sudo systemctl enable bluetooth
sudo systemctl enable cups

# Browser Installation
yay -S chromium

# Desktop background browser/handler
yay -S feh

# i3-gaps
yay -S i3-gaps

# Packages needed i3-gaps after installation
yay -S dmenu sxhkd numlockx rofi dunst libnotify picom unzip geany simple-scan gvfs

# Install a Text Editor
yay -S micro

# Install fonts
yay -S ttf-font-awesome powerline-fonts ttf-ubuntu-font-family ttf-liberation terminus-font

# Create folder in user directory
xdg-users-dirs-update

# Install Ly Console Display Manager
cd 
cd Downloads
git clone --recurse-submodules https://github.com/nullgemm/ly.git
cd ly/
make
sudo make install
sudo systemctl enable ly

source ~/arch-install/nerdfonts.sh
source ~/arch-install/copyconf.sh

printf "\e[1;32mYou can now reboot! Thanks you.\e[0m\n"
