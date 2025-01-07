#!/bin/bash

# Ensure to create 'res'-dir & download resources
if [ ! -d ~/res/repo ]; then
  mkdir ~/.res/repo
  cd ~/res/repo
    git clone git@github.com:splixx05/theme-nord.git
else
  cd ~/res/repo
    git clone git@github.com:splixx05/theme-nord.git
fi

# Installing gtk-theme
cd ~/res/repo/theme-nord/WhiteSur-gtk-theme/
./install.sh --nord

# Installing icons
cd ~/res/repo/theme-nord/Nordzy-icon/
./install.sh --total

# Installing cursors
cd ~/res/repo/theme-nord/Nordzy-cursors/
./install.sh

# Installing fonts
mv ~/res/repo/theme-nord/fonts ~/.local/share

# Installing wallpaper
mv ~/res/repo/theme-nord/Wallpaper ~/Pictures

# Installing ulauncher-theme
mkdir -p ~/.config/ulauncher/user-themes
mv ~/res/repo/theme-nord/nordzy-dark-green ~/.config/ulauncher/user-themes

# Installing conky
if [ ! -d ~/.config/conky ]; then
  mkdir ~/.config/conky
  mv ~/res/repo/theme-nord/conky/grumimosa ~/.config/conky
else
  mv ~/res/repo/theme-nord/conky/grumimosa ~/.config/conky
fi
mv ~/.config/conky/grumimosa/conky-startup.desktop ~/.config/autostart

# Installing glava-sources
sudo nala install -y libgl1-mesa-dev libpulse0 libpulse-dev libxext6 libxext-dev libxrender-dev libxcomposite-dev liblua5.3-dev liblua5.3-0 lua-lgi lua-filesystem libobs0 libobs-dev meson
sudo ldconfig

# If resources are needed: git clone https://gitlab.com/wild-turtles-publicly-release/glava/glava.git

cd ~/res/repo/theme-nord/glava
meson build --prefix /usr
ninja -C build
sudo ninja -C build install
glava --copy-config

mv ~/.config/glava/radial.glsl ~/.config/glava/radial.glsl.00
mv ~/.config/glava/rc.glsl ~/.config/glava/rc.glsl.00
mv ~/res/repo/theme-nord/glava-config/radial.glsl ~/.config/glava/
mv ~/res/repo/theme-nord/glava-config/rc.glsl ~/.config/glava/
mv ~/res/repo/theme-nord/glava-config/glava-startup.desktop ~/.config/autostart

# Restore d-configs
#cd ~/res/repo/theme-nord/cinnamon-config
#dconf load /org/cinnamon/ < cinnamon-nord.conf

# Disable window-shadows for conky > this statement works with 'Muffin' 
echo 'MUFFIN_NO_SHADOWS=1' | sudo tee -a /etc/environment


