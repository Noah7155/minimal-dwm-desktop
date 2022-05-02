#!/bin/sh

echo "generating directories and files..."

mkdir --parents ~/.config/kitty
mkdir --parents ~/.config/picom
touch ~/.zshrc
touch ~/.xinitrc

echo "gathering packages..."

sudo pacman -Syu git zsh xorg xorg-xinit neofetch picom dmenu kitty nitrogen emacs dwm

echo "collecting dwm-6.3.tar.gz..."

wget https://dl.suckless.org/dwm/dwm-6.3.tar.gz

echo "gathering github repositories..."

echo "cloning minimal-dwm-desktop..."

git clone https://github.com/Dragonflame7155/minimal-dwm-desktop.git

echo "cloning shell-files..."

git clone https://github.com/Dragonflame7155/shell-files.git

echo "cloning config-files-dump..."

git clone https://github.com/Dragonflame7155/config-files-dump.git

echo "cloning emacs-files..."

git clone https://github.com/Dragonflame7155/emacs-files.git

echo "unpacking dwm-6.3..."

tar -xvf dwm-6.3.tar.gz

cd dwm-6.3

cp ~/minimal-dwm-desktop/config.h ~/dwm-6.3/config.h

cd ..

mv ~/config-files-dump/kitty.conf ~/.config/kitty/

cp ~/minimal-dwm-desktop/xinitrc ~/.xinitrc

cd dwm-6.3

sudo make install

startx
