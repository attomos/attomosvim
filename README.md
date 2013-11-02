# attomos's Vim configurations
These configurations have been used with [Vim](http://www.vim.org) 7.4 on my MacBook
OSX 10.8.4 and Ubuntu Precise on my Vagrant environment.

Inspired by [spf13-vim](https://github.com/dtinth/.vimrc), [dtinth's
.vimrc](https://github.com/dtinth/.vimrc) and [fisa-vim-config](https://github.com/fisadev/fisa-vim-config)

# Installation

## Automatic way (\*nix only)
This will remove all of your existing `.vimrc` and `.vim` directory.  
Please backup and use at your own risk.

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

# List of bundles
**Coming soon!**

### General Programming
- Lokaltog/vim-easymotion
- scrooloose/syntastic
- scrooloose/nerdtree
- scrooloose/nerdcommenter
- kien/ctrlp.vim
- tacahiroy/ctrlp-funky
- fisadev/vim-ctrlp-cmdpalette
- mattn/ctrlp-mark
- git://github.com/Valloric/YouCompleteMe.git
- tpope/vim-unimpaired
- tpope/vim-surround
- tpope/vim-repeat
- tpope/vim-abolish
- spf13/vim-autoclose
- majutsushi/tagbar
- junegunn/vim-easy-align
- IndexedSearch
- vim-scripts/PreserveNoEOL

### Git
- tpope/vim-fugitive
- gregsexton/gitv
- mattn/gist-vim
- mhinz/vim-signify

### For each file type
#### CSS related
- hail2u/vim-css3-syntax

#### CSV
- chrisbra/csv.vim

#### JS related
- pangloss/vim-javascript
- briancollins/vim-jst
- kchmck/vim-coffee-script
- moll/vim-node
- digitaltoad/vim-jade

#### HTML
- matchit.zip

#### Markdown
- tpope/vim-markdown

#### Puppet
- Puppet-Syntax-Highlighting

#### Python
- vim-scripts/python_match.vim
- hynek/vim-python-pep8-indent

#### YAML
- avakhov/vim-yaml

### etc.
- juvenn/mustache.vim

### Utilities
- bling/vim-airline
- Valloric/MatchTagAlways
- attomos/ultisnips
- spiiph/vim-space
- sjl/gundo.vim
- greyblake/vim-preview
- vim-scripts/sessionman.vim
- vim-scripts/restore_view.vim
- vim-scripts/LanguageTool
- Shougo/unite.vim
- mattn/webapi-vim

### Colorscheme
- altercation/vim-colors-solarized
- flazz/vim-colorschemes
- fisadev/fisa-vim-colorscheme

## TODO
- Write instructions for ctags, LanguageTool, linters, special chars, g:airline_mode_map config,  powerline font and YCM
- [Exuberant Ctags](http://ctags.sourceforge.net/)
- [flake8](http://flake8.readthedocs.org/en/latest/)
- [Powerline font](https://github.com/Lokaltog/powerline-fonts)
- [LanguageTool](http://www.languagetool.org/)
- [Set locale for Mac](http://stackoverflow.com/questions/7165108/in-osx-lion-lang-is-not-set-to-utf8-how-fix)
- [Set locale for Ubuntu](http://askubuntu.com/questions/193251/how-to-set-all-locale-settings-in-ubuntu)
- [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)
