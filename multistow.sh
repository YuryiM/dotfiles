# !/bin/zsh

stow -D enchant && cp -r $DOTFILES/enchant/.config/enchant $XDG_CONFIG_HOME/ && rm -r $DOTFILES/enchant/
stow -D evolution && cp -r $DOTFILES/evolution/.config/evolution $XDG_CONFIG_HOME/ && rm -r $DOTFILES/evolution/
stow -D 'Github Desktop' && cp -r $DOTFILES/Github\ Desktop/.config/Github\ Desktop $XDG_CONFIG_HOME/ && rm -r $DOTFILES/Github\ Desktop/
stow -D gnome-control-center && cp -r $DOTFILES/gnome-control-center/.config/gnome-control-center $XDG_CONFIG_HOME/ && rm -r $DOTFILES/gnome-control-center/
stow -D gnome-session && cp -r $DOTFILES/gnome-session/.config/gnome-session $XDG_CONFIG_HOME/ && rm -r $DOTFILES/gnome-session/
stow -D goa-1.0 && cp -r $DOTFILES/goa-1.0/.config/goa-1.0 $XDG_CONFIG_HOME/ && rm -r $DOTFILES/goa-1.0/
stow -D gtk-3.0 && cp -r $DOTFILES/gtk-3.0/.config/gtk-3.0 $XDG_CONFIG_HOME/ && rm -r $DOTFILES/gtk-3.0/
stow -D gtk-4.0 && cp -r $DOTFILES/gtk-4.0/.config/gtk-4.0 $XDG_CONFIG_HOME/ && rm -r $DOTFILES/gtk-4.0/
stow -D ibus && cp -r $DOTFILES/ibus/.config/ibus $XDG_CONFIG_HOME/ && rm -r $DOTFILES/ibus/
stow -D keepassxc && cp -r $DOTFILES/keepassxc/.config/keepassxc $XDG_CONFIG_HOME/ && rm -r $DOTFILES/keepassxc/
stow -D nautilus && cp -r $DOTFILES/nautilus/.config/nautilus $XDG_CONFIG_HOME/ && rm -r $DOTFILES/nautilus/
stow -D pulse && cp -r $DOTFILES/pulse/.config/pulse $XDG_CONFIG_HOME/ && rm -r $DOTFILES/pulse/
stow -D QDirStat && cp -r $DOTFILES/QDirStat/.config/QDirStat $XDG_CONFIG_HOME/ && rm -r $DOTFILES/QDirStat/
stow -D texstudio && cp -r $DOTFILES/texstudio/.config/texstudio $XDG_CONFIG_HOME/ && rm -r $DOTFILES/texstudio/
stow -D xfce4 && cp -r $DOTFILES/xfce4/.config/xfce4 $XDG_CONFIG_HOME/ && rm -r $DOTFILES/xfce4/
