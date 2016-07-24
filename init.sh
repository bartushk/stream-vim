#!/bin/bash

cd "$(dirname "$0")"

mkdir ./bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

rm -f ~/.vimrc
ln -s ~/.vim/.vimrc ~/.vimrc
ln -s ~/.vim/.tmux.conf ~/.tmux.conf
vim +PluginInstall +qall

cd ~/.vim/bundle/YouCompleteMe
./install.sh --racer-completer
