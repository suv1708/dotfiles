#!/bin/bash

#Define Colors
declare -r greenColour="\e[0;32m\033[1m"
declare -r endColour="\033[0m\e[0m"
declare -r redColour="\e[0;31m\033[1m"
declare -r blueColour="\e[0;34m\033[1m"
declare -r yellowColour="\e[0;33m\033[1m"
declare -r purpleColour="\e[0;35m\033[1m"
declare -r turquoiseColour="\e[0;36m\033[1m"
declare -r grayColour="\e[0;37m\033[1m"
# Colors By s4vitaar <3



echo -ne "${redColour} [*] Bienvenido ..." && sleep 1
echo -e "${endColour}"

echo -ne "${grayColour} Vista Previa\n" && sleep 2
echo " https://i.imgur.com/7job3z6.png"

echo -ne "\n"

git clone https://github.com/Bleyom/dotfiles

echo -ne "${greenColour}creating bspwm, sxhkd, backup ...\n"

mv ~/.config/polybar/ ~/.config/polybar-backup 2>/dev/null 

cp -r dotfiles/polybar/ ~/.config/ && sleep 2

echo -ne "\n"

echo -ne "${greenColour}[*] Polybar Backup Done ..." && sleep 2

echo -ne "\n"

mv ~/.config/bspwm ~/.config/bspwm-backup 2>/dev/null

cp -r dotfiles/bspwm/ ~/.config/ && sleep 2

echo -ne "${greenColour}[*] Bspwm Backup Done ..."  && sleep 2

echo -ne "\n"

mv ~/.config/sxhkd ~/.config/sxhkd-backup 2>/dev/null

cp -r dotfiles/bspwm/ ~/.config/ && sleep 2

echo -ne "${greenColour}[*] Sxhkd Backup Done ..."  && sleep 2

echo -ne "\n"

echo -ne "${redColour}[*] Gracias <3"

echo -ne "\n"

echo -ne "${redColor}[*] By Bleyom ..."

  


