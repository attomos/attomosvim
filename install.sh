#!/usr/bin/env bash

# Let's try it
git clone git@github.com:attomos/attomosvim.git ~/.attomosvim
echo source ~/.attomosvim/vimrc >> ~/.vimrc
echo colorscheme default >> ~/.vimrc
echo set bg=dark >> ~/.vimrc
echo source ~/.attomosvim/goodspell.vim >> ~/.vimrc
echo \"let g:languagetool_jar=\"<path_to_languagetool_jar>\" >> ~/.vimrc
vim
