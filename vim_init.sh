#!/bin/bash

# Vim directory tree creation
cd $HOME/.vim && mkdir -p {'autoload','backup','bundle','colors','plugged'}
if [ $? -eq 0 ]; then
  echo Vim directory tree created
else
  echo Unnable to create directories
  exit N
fi

# Installing Vundle and Plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

apt install build-essential cmake vim-nox python3-dev

git clone https://github.com/ycm-core/YouCompleteMe.git 
cd $HOME/.vim/bundle/YouCompleteMe && python3 install.py --all
vim +BundleInstall +qall
