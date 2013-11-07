" vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={{{,}}} foldlevel=0 foldmethod=marker spell:
set nocompatible " no vi compatible

let s:dirname = expand("<sfile>:p:h")

" Setting up Vundle {{{
let install_vundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle..."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let install_vundle=0
endif

filetype off " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
exec "source " . s:dirname . "/vundles.vim"
filetype plugin indent on " required!

if install_vundle == 0
    echo "Installing Bundles, please ignore key map error messages"
    echo ""
    :BundleInstall
endif
" }}}

" A must for me {{{
if $TERM == "xterm-256color"
  set t_Co=256
endif

set hidden                                          " good for editing 2 or more buffers
set wildmenu                                        " Better command-line completion
set wildmode=list:longest,full                      " Command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]                       " Backspace and cursor keys wrap too

set showcmd                                         " Show partial commands in the last line of the screen
set hlsearch                                        " Highlight search
set incsearch                                       " While typing, show where the pattern
set ignorecase                                      " Use case insensitive search, except when using capital letters
set smartcase                                       " Good when search pattern contains upper case characters

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline
set laststatus=2
set confirm                                         " Confirm dialogue is cute

set visualbell                                      " Use visual bell instead of beeping
"set cmdheight=1                                    " and it is default

syntax on                                           " Enable syntax highlighting
set nu                                              " Display number and relative line numbers at once
set relativenumber

set cc=80                                           " set colorcolumn, good for Python
set shiftwidth=4                                    " General indentation options
set softtabstop=4
set expandtab

set nowrap                                          " wrap long line
set shortmess+=filmnrxoOtT                          " Abbrev. of messages (avoids 'hit enter')
set viewoptions=folds,options,cursor,unix,slash     " Better Unix / Windows compatibility
set virtualedit=onemore                             " Allow for cursor beyond last character
set history=1000                                    " Store a ton of history (default is 20)
set tabpagemax=15                                   " Only show 15 tabs
set showmode                                        " Display the current mode
set cursorline                                      " Do not highlight current line
highlight clear SignColumn                          " SignColumn sould match background for
                                                    " things like signify
set ruler                                           " Show the ruler
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)  " A ruler on steroids

" Auto change directory, good to go with CtrlP
autocmd BufEnter * if bufname("") !~ "^\[A-Za-z0-9\]*://" | lcd %:p:h | endif

set winminheight=0                                  " Windows height only 0
set nolist                                          " No list characters by default
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.,eol:¬  " Highlight problematic whitespace
" }}}

" source them {{{
exec "source " . s:dirname . "/autocomplete.vim"
exec "source " . s:dirname . "/backup.vim"
exec "source " . s:dirname . "/chords.vim"
exec "source " . s:dirname . "/custom_command.vim"
exec "source " . s:dirname . "/ctrlpconf.vim"
exec "source " . s:dirname . "/disablearrowkeys.vim"
exec "source " . s:dirname . "/etc.vim"
exec "source " . s:dirname . "/filetypes.vim"
exec "source " . s:dirname . "/jsdoc.vim"
exec "source " . s:dirname . "/mappings.vim"
" }}}

" Take a look at it {{{
" If your NERDTree look sucks, change it to 0
"let NERDTreeDirArrows=1

" Fixed tmux messed up with some colorschemes
set term=screen-256color
" For AngularJS especially
let g:syntastic_html_checkers=[]
" }}}

" A must
let g:syntastic_always_populate_loc_list = 1
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'jsp' : 1,
    \}
