#!/bin/bash



# Download ressources
cd ~/Downloads
git clone git@github.com:vinceliuice/WhiteSur-gtk-theme.git
git clone git@github.com:alvatip/Nordzy-icon.git
git clone git@github.com:alvatip/Nordzy-cursors.git



# Installing gtk-theme
cd WhiteSur-gtk-theme/
./install.sh --nord



# Installing icons
cd ~/Downloads/Nordzy-icon/
./install.sh --total



# Installing cursors
cd ~/Downloads/Nordzy-cursors/
./install.sh



# Installing cursors
cd ~/Downloads/Nordzy-cursors/
./install.sh



# Installing fonts
# cd ~/Downloads/name-of-repo/name-of-file
mv ~/Downloads/fonts ~/.fonts



# Installing wallpaper
mkdir -p ~/Pictures/Wallpaper
# cd ~/Downloads/name-of-repo/name-of-file
mv ~/Downloads/wallpaper/bild.jpg ~/Pictures/Wallpaper/bild.jpg
# gsettings change wallpaper



# Restore configs
cd ~/Downloads/name-of-repo/cinnamon-nord.conf
dconf load /org/cinnamon/ < cinnamon-nord.conf



# Installing ulauncher-theme
sudo nala install-y ./ulauncher_5.14.7_all.deb
mkdir -p ~/.config/ulauncher/user-themes
mv ~/Downloads/name-of-repo/name-of-file ~/.config/ulauncher/user-themes/name-of-file
mv ~/Downloads/name-of-repo/ulauncher.desktop ~/.config/autostart/ulauncher.desktop



# Installing conky
mkdir -p ~/.config/conky
mv ~/Downloads/name-of-repo/name-of-file ~/.config/conky/name-of-file
mv ~/Downloads/name-of-repo/conky-startup.desktop ~/.config/autostart/conky-startup.desktop
echo 'MUFFIN_NO_SHADOWS=1' | sudo tee -a /etc/environment





