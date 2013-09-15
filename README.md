# attomos's Vim configurations
If you think this is good for you, use it, hack it and share it.  
These configurations have been used with [Vim](http://www.vim.org) 7.4 on my MacBook OSX 10.8.4  
and Ubuntu Precise on my Vagrant environment.

# Try it (This won't harm your old vimrc)

    git clone git@github.com:attomos/attomosvim.git ~/.attomosvim
    vim -u ~/.attomosvim/vimrc

# Installation

## Automatic way (\*nix only)
This will remove all of your existing `.vimrc` and `.vim` directory.  
Please backup and use at your own risk.

via [Curl](http://curl.haxx.se/)

    curl -L http://j.mp/attomosvim | bash

via [wget](http://www.gnu.org/software/wget/)

    wget --no-check-certificate http://j.mp/attomosvim -O - | bash

## Manual way
1.  Clone the repo

        git clone git@github.com:attomos/attomosvim.git ~/.attomosvim

2.  Put this on your `.vimrc`

        source ~/.attomosvim/vimrc
        colorscheme default " you can change it later
        set bg=dark         " you can change it later
        source ~/.attomosvim/goodspell.vim
        "let g:languagetool_jar="<path_to_languagetool_jar>"

    **NOTE** keep the line `source ~/.attomosvim/goodspell.vim` below your colorscheme and background settings.  
    This won't mess up when Vim highlighting bad misspelled words.

3.  For GUI lover, add this line in your `.gvimrc` after the previous steps too

        source ~/.attomosvim/gvimrc

Then just start using `vim`.

Thanks [fisa-vim-config](https://github.com/fisadev/fisa-vim-config) for awesome
automatic Vundle set up at the first time Vim run without Vundle installed.

# List of bundles
Not yet bro

## TODO (write instructions for ctags, LanguageTool, linters, special chars, powerline font and YCM)
- [Exuberant Ctags](http://ctags.sourceforge.net/)
- [flake8](http://flake8.readthedocs.org/en/latest/)
- [Powerline font](https://github.com/Lokaltog/powerline-fonts)
- [LanguageTool](http://www.languagetool.org/)
- [Set locale for Mac](http://stackoverflow.com/questions/7165108/in-osx-lion-lang-is-not-set-to-utf8-how-fix)
- [Set locale for Ubuntu](http://askubuntu.com/questions/193251/how-to-set-all-locale-settings-in-ubuntu)
- [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)
