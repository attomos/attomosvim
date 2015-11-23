" vim-plug for good : )
call plug#begin('~/.vim/plugged')

" General
Plug 'Lokaltog/vim-easymotion'
Plug 'scrooloose/syntastic'
Plug 'kien/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'
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
Plug 'gregsexton/gitv'
Plug 'mattn/gist-vim'
Plug 'mhinz/vim-signify'

" For each file type
" C++
Plug 'octol/vim-cpp-enhanced-highlight'

" Clojure
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'guns/vim-clojure-highlight', { 'for': 'clojure' }

" CSS related
Plug 'hail2u/vim-css3-syntax'
Plug 'wavded/vim-stylus'
Plug 'groenewege/vim-less'

" Go lang
Plug 'jnwhiteh/vim-golang'

" HTML and friends
Plug 'matchit.zip'
Plug 'othree/html5.vim'

" JS
Plug 'kchmck/vim-coffee-script'
Plug 'moll/vim-node'
Plug 'marijnh/tern_for_vim'
Plug 'jason0x43/vim-js-indent'
Plug 'mxw/vim-jsx'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'maksimr/vim-jsbeautify'
Plug 'leafgarland/typescript-vim'

" Julia
" Plug 'JuliaLang/julia-vim'

" Latex
Plug 'lervag/vimtex'

" Markdown
Plug 'tpope/vim-markdown'

" Python
Plug 'vim-scripts/python_match.vim'
Plug 'hynek/vim-python-pep8-indent'
Plug 'jmcantrell/vim-virtualenv'
Plug 'davidhalter/jedi-vim'
Plug 'alfredodeza/pytest.vim'

" Ruby
Plug 'vim-ruby/vim-ruby'

" Scala
Plug 'derekwyatt/vim-scala'

" YAML
Plug 'avakhov/vim-yaml'

" Utilities
Plug 'bling/vim-airline'
Plug 'attomos/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mbbill/undotree'
Plug 'greyblake/vim-preview'
Plug 'vim-scripts/restore_view.vim'
Plug 'vim-scripts/LanguageTool'
Plug 'Shougo/unite.vim'
Plug 'mattn/webapi-vim'
Plug 'guns/xterm-color-table.vim'
Plug 'nazo/pt.vim'
Plug 'jgdavey/tslime.vim'
Plug 'michaeljsmith/vim-indent-object'

" Colorscheme
Plug 'dtinth/vim-colors-dtinth256'
Plug 'flazz/vim-colorschemes'
Plug 'tomasr/molokai'
Plug 'fmoralesc/molokayo'
Plug 'chriskempson/base16-vim'
Plug 'michaeljsmith/vim-indent-object'


call plug#end()
