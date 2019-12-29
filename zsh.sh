#!/usr/bin/env sh

################################################################################
# ZSH
################################################################################
brew install zsh zsh-completions

ln -s ~/.dotfiles/zshrc ~/.zshrc
#cp ~/.dotfiles/p10k.zsh ~/.p10k.zsh

# install zplugin
mkdir ~/.zplugin
git clone https://github.com/zdharma/zplugin.git ~/.zplugin/bin
source ~/.zshrc
zplugin self-update
