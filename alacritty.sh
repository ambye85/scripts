#!/usr/bin/env sh

################################################################################
# Fonts
################################################################################
# How to install Menlo for Powerline? Install Nerd Fonts and use thoe instead.
# Install these (used by powerline10k)
#https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Regular.ttf
#https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Bold.ttf
#https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Italic.ttf
#https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Bold%20Italic.ttf



################################################################################
# alacritty
################################################################################
# MUST RUN ZSH BEFORE THIS
mkdir -p ~/.config/alacritty
ln -s ~/.dotfiles/alacritty.yml ~/.config/alacritty/alacritty.yml

brew cask install alacritty

git clone https://github.com/jwilm/alacritty.git /tmp/alacritty
# man pages
sudo mkdir -p /usr/local/share/man/man1
gzip -c /tmp/alacritty/extra/alacritty.man | sudo tee /usr/local/share/man/man1/alacritty.1.gz > /dev/null
# completions
mkdir -p ~/.config/zsh/functions
cp /tmp/alacritty/extra/completions/_alacritty ~/.config/zsh/functions/_alacritty
# terminfo
sudo tic -xe alacritty,alacritty-direct /tmp/alacritty/extra/alacritty.info
rm -rf /tmp/alacritty
