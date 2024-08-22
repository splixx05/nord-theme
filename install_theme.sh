#!/bin/sh

sudo nala install -y libgl1-mesa-dev libpulse0 libpulse-dev libxext6 libxext-dev libxrender-dev libxcomposite-dev liblua5.3-dev liblua5.3 lua-lgi lua-filesystem libobs0 libobs-dev meson

: 'git clone https://github.com/jarcode-foss/glava
cd glava
meson build --prefix /usr
ninja -C build
sudo ninja -C build install '
