#!/bin/bash

# Update necessary packages after install
dnf update

# Enables the free and non-free RPM Fusion repository
dnf -y install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y

# Mirror MTW Repo for Github Desktop
rpm --import https://mirror.mwt.me/shiftkey-desktop/gpgkey
sh -c 'echo -e "[mwt-packages]\nname=GitHub Desktop\nbaseurl=https://mirror.mwt.me/shiftkey-desktop/rpm\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=https://mirror.mwt.me/shiftkey-desktop/gpgkey" > /etc/yum.repos.d/mwt-packages.repo'
dnf update

# Install list of packages in packages.list
dnf install -y $(< packages.list)

# Install Obsidian.md
flatpak install flathub md.obsidian.Obsidian

# CONFIGURE RCLONE!!!! INSERT INSTRUCTIONS HERE

# Enable OpenH264 
sudo dnf config-manager --set-enabled fedora-cisco-openh264

# Install Docker
# sudo dnf -y install dnf-plugins-core
# sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
# sudo dnf install docker-ce docker-ce-cli containerd.io docker-compose-plugin

# Add VS Code Repository ()
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
dnf check-update
sudo dnf -y install code

# Neovim symlink
# ln -s ../.config/nvim/ ~/.config/nvim




