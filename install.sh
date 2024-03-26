#!/bin/bash
# i didnt test it on anything posix. it should work with gnu coreutils

ln -isvn $(realpath ./mpv/) ~/.config/mpv
ln -isvn $(realpath ./nvim/) ~/.config/nvim

if [ ! -e ~/.local/share/nvim/site/autoload/plug.vim ] && [ command -v nvim ] ; then
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
fi
