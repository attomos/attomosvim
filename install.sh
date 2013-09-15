#!/usr/bin/env bash

# Let's try it
git clone https://github.com/attomos/attomosvim ~/.attomosvim
echo source ~/.attomosvim/vimrc >> ~/.vimrc
echo colorscheme fisa >> ~/.vimrc
echo set bg=dark >> ~/.vimrc
echo source ~/.attomosvim/goodspell.vim >> ~/.vimrc
echo '"let g:languagetool_jar=""' >> ~/.vimrc
vim
