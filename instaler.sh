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

echo "do you wish to continue (y/n)) ?"
read i
if [ $i != "y" ]
then
    exit
  fi


echo -ne "${redColour} [*] Welcome ..." && sleep 1
echo -e "${endColour}"

echo -ne "${grayColour} Preview\n" && sleep 2
echo " https://i.imgur.com/7job3z6.png"

echo -ne "\n"

git clone https://github.com/Bleyom/dotfiles

echo -ne "${greenColour}creating bspwm, sxhkd, kitty, backup and adding the new configuration ...\n"

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

cp -r dotfiles/sxhkd/ ~/.config/ && sleep 2

echo -ne "${greenColour}[*] Sxhkd Backup Done ..."  && sleep 2

echo -ne "\n"

mv ~/.config/kitty ~/.config/kitty-backup 2>/dev/null

cp -r dotfiles/kitty/ ~/.config/ && sleep 2

echo -ne "${greenColour}[*] Kitty Backup Done ..."  && sleep 2

echo -ne "\n"

mv ~/.config/dunst ~/.config/dunst-backup 2>/dev/null

cp -r dotfiles/dunst/ ~/.config/ && sleep 2

echo -ne "${greenColour}[*] Dunst Backup Done ..."  && sleep 2

echo -ne "\n"

echo -ne "${redColour}[*] Configuration loaded successfully"

echo -ne "\n"
echo -ne "\n"

echo -ne "${redColour}[*] Thanks <3"

echo -ne "\n"

echo -ne "${redColor}[*] By Bleyom ..."

echo "Bye ..."


