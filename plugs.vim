" vim-plug for good : )
call plug#begin('~/.vim/plugged')

" General
Plug 'Lokaltog/vim-easymotion'
Plug 'scrooloose/syntastic'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'
Plug 'jasoncodes/ctrlp-modified.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/vim-easy-align'
Plug 'kana/vim-arpeggio'
Plug 'tristen/vim-sparkup'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'editorconfig/editorconfig-vim'

" Git
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'mattn/gist-vim'
Plug 'mhinz/vim-signify'

" CSS related
Plug 'hail2u/vim-css3-syntax'
Plug 'wavded/vim-stylus'
Plug 'groenewege/vim-less'

" HTML and friends
Plug 'matchit.zip'
Plug 'othree/html5.vim'

" JS
Plug 'moll/vim-node'
Plug 'marijnh/tern_for_vim'
" Plug 'jason0x43/vim-js-indent'
Plug 'mxw/vim-jsx'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'maksimr/vim-jsbeautify'
Plug 'einars/js-beautify'
" Plug 'pangloss/vim-javascript'
Plug 'othree/yajs.vim'
" Plug 'leafgarland/typescript-vim'
Plug 'heavenshell/vim-jsdoc'

" YAML
Plug 'avakhov/vim-yaml'

" Utilities
Plug 'bling/vim-airline'
Plug 'attomos/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mbbill/undotree'
Plug 'vim-scripts/restore_view.vim'
Plug 'nazo/pt.vim'
Plug 'benmills/vimux'
Plug 'michaeljsmith/vim-indent-object'

Plug 'flazz/vim-colorschemes'

call plug#end()
