# dotfiles
Linux dotfiles for my Fedora 36 installation

How to activate systemd daemons:
[Link](https://unix.stackexchange.com/a/646116)

In order to symlink the files, simple enter the /dotfiles/ directory and run 'stow program'
When adding new dotfiles, make sure the file structuctur is compatible with GNU Stow.
The structure should be ~/dotfiles/program/.config/program/
