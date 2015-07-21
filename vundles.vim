" vim-plug for good : )
call plug#begin('~/.vim/plugged')

" General Programming
Plug 'Lokaltog/vim-easymotion'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdcommenter'
Plug 'kien/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tommcdo/vim-exchange'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/vim-easy-align'
Plug 'kana/vim-arpeggio'
Plug 'rizzatti/funcoo.vim'
Plug 'rizzatti/dash.vim'

" Git
Plug 'tpope/vim-fugitive'
Plug 'gregsexton/gitv'
Plug 'mattn/gist-vim'
Plug 'mhinz/vim-signify'

" For each file type
" C++
Plug 'octol/vim-cpp-enhanced-highlight'
" Clojure
" TODO: not work well with Python template
" Plug 'eapache/rainbow_parentheses.vim'
Plug 'tpope/vim-fireplace'
Plug 'guns/vim-clojure-highlight'
" CSS related
Plug 'hail2u/vim-css3-syntax'
Plug 'wavded/vim-stylus'
Plug 'groenewege/vim-less'
" CSV
Plug 'chrisbra/csv.vim'
" Go lang
Plug 'jnwhiteh/vim-golang'
" HTML and friends
Plug 'matchit.zip'
Plug 'othree/html5.vim'
Plug 'tpope/vim-haml'
Plug 'slim-template/vim-slim'
" JS
Plug 'pangloss/vim-javascript'
Plug 'briancollins/vim-jst'
Plug 'kchmck/vim-coffee-script'
Plug 'moll/vim-node'
Plug 'digitaltoad/vim-jade'
" Julia
" Plug 'JuliaLang/julia-vim'
" Latex
Plug 'lervag/vimtex'
" Markdown
Plug 'tpope/vim-markdown'
" Puppet
Plug 'Puppet-Syntax-Highlighting'
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
" Swift
Plug 'toyamarinyon/vim-swift'
" YAML
Plug 'avakhov/vim-yaml'

" Utilities
Plug 'bling/vim-airline'
Plug 'attomos/ultisnips'
Plug 'honza/vim-snippets'
Plug 'sjl/gundo.vim'
Plug 'greyblake/vim-preview'
Plug 'vim-scripts/restore_view.vim'
Plug 'vim-scripts/LanguageTool'
Plug 'Shougo/unite.vim'
Plug 'mattn/webapi-vim'
Plug 'guns/xterm-color-table.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'epmatsw/ag.vim'
Plug 'thoughtbot/vim-rspec'
Plug 'jgdavey/tslime.vim'
Plug 'henrik/vim-reveal-in-finder'
Plug 'chakrit/vim-thai-keys'

" Colorscheme
Plug 'altercation/vim-colors-solarized'
Plug 'chriskempson/base16-vim'
Plug 'dtinth/vim-colors-dtinth256'
Plug 'flazz/vim-colorschemes'
Plug 'terryma/vim-expand-region'
Plug 'yosiat/oceanic-next-vim'

call plug#end()
