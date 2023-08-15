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
	UPDATE="apt upgrade -y"
fi

$UPDATE
# Install neovim
$INSTALL neovim
# Install w3m if you need it
$INSTALL w3m w3m-img
# The only prereqs for Podman
$INSTALL uidmap
$INSTALL curl


# Create default user folders
mkdir /etc/skel/Downloads
mkdir /etc/skel/Applications
mkdir /etc/skel/Repos
mkdir /etc/skel/Pictures
mkdir /etc/skel/Pictures/Wallpapers
mkdir /etc/skel/.local
mkdir /etc/skel/.local/bin
mkdir /etc/skel/.config

cp -r ./* /etc/skel/.config

echo -n "Username: "
read USER
useradd -m $USER
passwd $USER

echo "All done."
