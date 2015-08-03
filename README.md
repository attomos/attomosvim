# attomos's Vim configurations
These configurations have been used with [Vim](http://www.vim.org) 7.4 on my MacBook
OSX 10.8.4 and Ubuntu Precise on my Vagrant environment.

Inspired by [spf13-vim](https://github.com/spf13/spf13-vim), [dtinth's
.vimrc](https://github.com/dtinth/.vimrc) and [fisa-vim-config](https://github.com/fisadev/fisa-vim-config)

# Installation

## Automatic way (\*nix only)
This will remove all of your existing `.vimrc` and `.vim` directory.  
Please backup your vim config before doing this.

via [Curl](http://curl.haxx.se/)

    curl -L http://j.mp/attomosvim | sh

via [wget](http://www.gnu.org/software/wget/)

    wget --no-check-certificate http://j.mp/attomosvim -O - | sh

## Manual way
1.  Clone the repo

        git clone git@github.com:attomos/attomosvim.git ~/.attomosvim

2.  Put this on your `.vimrc`

        source ~/.attomosvim/vimrc
        colorscheme fisa " you can change it later
        set bg=dark         " you can change it later
        source ~/.attomosvim/goodspell.vim
        "let g:languagetool_jar=""

    **NOTE** keep the line `source ~/.attomosvim/goodspell.vim` below your colorscheme and background settings.  
    This won't mess up when Vim highlighting bad misspelled words.

3.  For GUI lover, add this line in your `.gvimrc` after the previous steps too

        source ~/.attomosvim/gvimrc

Then just start using `vim`.

Thanks [fisa-vim-config](https://github.com/fisadev/fisa-vim-config) for awesome
automatic Vundle set up at the first time Vim run without Vundle installed.


## Install latest version of these
- [ag](https://github.com/ggreer/the_silver_searcher)

        brew install ag

- [ctags](http://ctags.sourceforge.net/)

        brew install ctags

- [Dash](https://kapeli.com/dash)

        brew cask install dash # or download and install it manually

- [flake8](http://flake8.readthedocs.org/en/latest/)

        pip install flake8

- [fzf](https://github.com/junegunn/fzf)

        brew reinstall --HEAD fzf
        /usr/local/Cellar/fzf/HEAD/install

- [LanguageTool](https://languagetool.org/)

        Download stand-alone version and extract it in ~/src

## TODO
- [Powerline font](https://github.com/Lokaltog/powerline-fonts)
- [Set locale for Mac](http://stackoverflow.com/questions/7165108/in-osx-lion-lang-is-not-set-to-utf8-how-fix)
- [Set locale for Ubuntu](http://askubuntu.com/questions/193251/how-to-set-all-locale-settings-in-ubuntu)
