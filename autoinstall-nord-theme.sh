#!/bin/bash


# Download ressources
cd ~/res/repo
git clone git@github.com:splixx05/theme-nord.git



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
mkdir -p ~/Pictures/Wallpaper
mv ~/res/repo/theme-nord/wallpaper ~/Pictures/Wallpaper




# Installing ulauncher-theme
sudo gdebi install-y ./ulauncher_5.14.7_all.deb
mkdir -p ~/.config/ulauncher/user-themes
mv ~/res/repo/theme-nord/nordzy-dark-green ~/.config/ulauncher/user-themes
mv ~/res/repo/theme-nord/nordzy-dark-green/ulauncher.desktop ~/.config/autostart



# Installing conky
mkdir -p ~/.config/conky
mv ~/res/repo/theme-nord/conky/grumimosa ~/.config/conky
mv ~/res/repo/theme-nord/conky/conky-startup.desktop ~/.config/autostart
echo 'MUFFIN_NO_SHADOWS=1' | sudo tee -a /etc/environment


# Installing glava
sudo nala install -y libgl1-mesa-dev libpulse0 libpulse-dev libxext6 libxext-dev libxrender-dev libxcomposite-dev liblua5.3-dev liblua5.3 lua-lgi lua-filesystem libobs0 libobs-dev meson

cd ~/res/repo/theme-nord/glava
meson build --prefix /usr
ninja -C build
sudo ninja -C build install
glava --copy-config
mv ~/.config/glava/radial.glsl ~/.config/glava/radial.glsl.00
mv ~/.config/glava/rc.glsl00 ~/.config/glava/rc.glsl.00
mv ~/res/repo/theme-nord/glava-config/radial.glsl ~/.config/glava/
mv ~/res/repo/theme-nord/glava-config/rc.glsl ~/.config/glava/
mv ~/res/repo/theme-nord/glava-config/glava-startup.desktop ~/.config/autostart


:'# Restore configs
cd ~/res/repo/theme-nord/cinnamon-nord.conf
dconf load /org/cinnamon/ < cinnamon-nord.conf'





: ' Check if PATH exists
if [ ! -f ~/PATH ]; then
  touch ~/PATH
  echo "~/PATH have been written"
else
  echo "~/PATH already exists"
fi '
