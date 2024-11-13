#!/bin/sh

WHITE="\033[0;37m"
BLACK="\033[0;30m"
RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[0;33m"
BLUE="\033[0;34m"
MAGENTA="\033[0;35m"
CYAN="\033[0;36m"
GREY="\033[0;97m"

clear

echo -e "

${MAGENTA}╔═══════════════════════════════════╗
║                                   ║
║                                   ║
║    _______ _             _        ║
║   (_______) |           | |       ║
║    _____  | | ___  _   _| |  _    ║
║   |  ___) | |/ _ \| | | | | / )   ║
║   | |     | | |_| | |_| | |< (    ║
║   |_|     |_|\___/ \____|_| \_)   ║
║                                   ║
║                                   ║
╚═══════════════════════════════════╝ ${WHITE}by Prouk

"
echo -e "Welcome to Flouk flake installer."
echo -e "

${YELLOW}▐▀▀▀▀▀▌
${YELLOW}▐     ▌
${YELLOW}▐  _  ▌${RED} Disclaimer :
${YELLOW}▐ | | ▌${RED} This flake is made by me just for fun.
${YELLOW}▐ | | ▌${RED} Under no circumstances should you blindly trust something made by a random internet dude.
${YELLOW}▐ |_| ▌${RED} (even tho i tried to make things correctly).
${YELLOW}▐  _  ▌${RED} As this flake was made on my system, you'll have to modify the hyprland conf AND THE HARDWARE-CONFIGURATION FILE.
${YELLOW}▐ |_| ▌${RED} You can at any time contact me on Github or Discord.
${YELLOW}▐     ▌
${YELLOW}▐▄▄▄▄▄▌${WHITE}

"

read -p "Do you want to update the flake packages? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo "Updating flake package..."
    sudo nix flake update
    if [ $? -eq 0 ]
    then
        echo "Flake packages updated!"
    else
        echo "Failed to install NixOS config!"
        exit 1
    fi
fi

echo "Installing NixOS config..."
sudo nixos-rebuild switch --flake .
if [ $? -eq 0 ]
then
    echo "NixOS config isntalled!"
else
    echo "Failed to install NixOS config!"
    exit 1
fi

echo "Installing home-manager config..."
home-manager switch --flake .
if [ $? -eq 0 ]
then
    echo "home-manager config isntalled!"
else
    echo "Failed to install home-manager config!"
    exit 1
fi

read -p "Do you want to clean older NixOS generations? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo "Updating flake package..."
    sudo nix-collect-garbage -d
fi

echo -e "${GREEN}Thank you for installing Flouk flake, sleep well!${WHITE}"
