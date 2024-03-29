# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Created by newuser for 5.9
# Lines configured by zsh-newuser-install
bindkey -e
# # End of lines configured by zsh-newuser-install
# # The following lines were added by compinstall
zstyle :compinstall filename '/home/yuryi/.zshrc'

# # set options (man zshoptions)
setopt autocd extendedglob nomatch menucomplete
setopt interactive_comments
# #stty stop undef
zle_highlight=('paste:none')

autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
# zmodload zsh/comlist
# # End of lines added by compinstalla
autoload -Uz promptinit
promptinit
source $ZDOTDIR/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

# Set aliases
alias vim='nvim'

# source antidote
source ${ZDOTDIR:-~}/.antidote/antidote.zsh

# initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
antidote load
