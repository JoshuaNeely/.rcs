#!/bin/bash

# pull down Vundle; plugin manager for vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# automagically install Vundle plugins from .vimrc
vim +PluginInstall +qall

sudo apt install tmux
git clone git://github.com/airblade/vim-gitgutter.git

# tell vim to use plugins
vim +PluginInstall +qall

# restore versioned gnome settings
# captures keybindings... terminal settings... etc
dconf reset -f /org/gnome/
dconf load /org/gnome/ < ~/.gnome-preferences.txt

# allows rudimentary tab completion for bash functions!
sudo apt install rlwrap
