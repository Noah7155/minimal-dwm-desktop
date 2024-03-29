    
#-------------------------------------------------------------------------------
# ____                               __ _                     _____ _ ____ ____  
#|  _ \ _ __ __ _  __ _  ___  _ __  / _| | __ _ _ __ ___   __|___  / | ___| ___| 
#| | | | '__/ _` |/ _` |/ _ \| '_ \| |_| |/ _` | '_ ` _ \ / _ \ / /| |___ \___ \ 
#| |_| | | | (_| | (_| | (_) | | | |  _| | (_| | | | | | |  __// / | |___) |__) |
#|____/|_|  \__,_|\__, |\___/|_| |_|_| |_|\__,_|_| |_| |_|\___/_/  |_|____/____/ 
#                 |___/
#-------------------------------------------------------------------------------
#
# https://www.youtube.com/channel/UCqGyzqfltwGBneZOUEz7ayg
#
#-------------------------------------------------------------------------------
#
# https://github.com/Dragonflame7155
#
#-------------------------------------------------------------------------------

mkdir -p ~/.config/nitrogen
mkdir ~/.config/picom
touch ~/.xinitrc

wget https://dl.suckless.org/dwm/dwm-6.4.tar.gz

tar xvf dwm-6.4.tar.gz 

cp -f config.h dwm-6.4/

cp nitrogen.cfg ~/.config/nitrogen
cp picom.conf ~/.config/picom

cp -f xinitrc ~/.xinitrc
