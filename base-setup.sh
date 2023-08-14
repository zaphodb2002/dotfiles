#! /usr/bin/bash

# figure out what os we're running
OS=$(cat /etc/*release | grep -w "ID")
echo $OS

if [[ $OS == "ID=arch" ]]
then
	echo "Running Arch (btw)"
	INSTALL="pacman -S --noconfirm"
	UPDATE="pacman -Syyu --noconfirm"
else
	echo "Probably Debian"
	INSTALL="apt install -y"
	UPDATE="apt update -y &&apt upgrade -y"
fi

$UPDATE
# Install nvim
$INSTALL nvim
# Install w3m if you need it
$INSTALL w3m
# The only prereqs for Podman
$INSTALL uidmap
$INSTALL curl
USER="zaphod"
USER_HOME=/home/$USER

useradd $USER

mkdir $USERHOME/Downloads
mkdir $USERHOME/Applications
mkdir $USERHOME/Repos
mkdir $USERHOME/Pictures
mkdir $USERHOME/Pictures/Wallpapers
mkdir $USERHOME/.local
mkdir $USERHOME/.local/bin
mkdir $USERHOME/.config

cp ./* $USERHOME/.config

echo "All done."
