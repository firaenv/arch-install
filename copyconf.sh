####
# This script is used to copy my config files over for use on reboot of installation.

# Using bumblebee-status instead of polybar or i3status (installed for initial login)
yay -S bumblebee-status -y

# Package neeeded for bumblebee-status if using yay module - currently configured is i3gaps config file.

cd 
cd arch-install

cp -r .config/backgrounds ~/.config
cp -r .config/bumblebee-status ~/.config
cp -r .config/i3 ~/.config
cp -r .config/neofetch ~/.config
cp -r .config/rofi ~/.config
cp -r .config/kitty ~/.config
chmod +x ~/.config/i3/autostart.sh
