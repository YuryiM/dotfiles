#!/bin/bash

# Speed up DNF 

# Enables the free and non-free RPM Fusion repository
sudo dnf -y install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y

# Install plugins for playing movies and music
sudo dnf -y install gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel
sudo dnf -y install lame\* --exclude=lame-devel
sudo dnf group upgrade --with-optional Multimedia

# Install Docker
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf install docker-ce docker-ce-cli containerd.io docker-compose-plugin

# Enable OpenH264 
sudo dnf config-manager --set-enabled fedora-cisco-openh264

# Enables better font rendering
sudo dnf -y copr enable dawid/better_fonts
sudo dnf install -y fontconfig-font-replacements fontconfig-enhanced-defaults

# Add VS Code Repository ()
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
dnf check-update
sudo dnf -y install code

# Variable with list of packages to be installed
packages=""

while IDF='' read -r line; do
  # If line doesn't begin with '#'
  if ! [[ $line =~ ^#.* ]]; then
    # Add it to list of packages to be installed
     packages+=" $line"
  fi
done < pkglist.txt

# Install packages
sudo dnf -y install $packages

# Install fonts and use them

# Creates symbolic links

# Neovim symlink
ln -s ../.config/nvim/ ~/.config/nvim

# Awesome symlink
ln -s ../.config/awesome/ ~/.config/awesome/

# MPV symlink
ln -s ../.config/mpv/ ~/.config/mpv/
