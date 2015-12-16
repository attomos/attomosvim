" vim: set sw=2 ts=2 sts=2 et tw=78 foldlevel=0 foldmethod=marker spell:
set nocompatible " no vi compatible

let s:dirname = expand("<sfile>:p:h")

" Setting up vim-plug {{{
let install_plug=0
let vim_plug=expand('~/.vim/autoload/plug.vim')
if !filereadable(vim_plug)
  echo "Installing vim-plug..."
  echo ""
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  let install_plug=1
endif

filetype off " required!
exec "source " . s:dirname . "/plugs.vim"
filetype plugin indent on " required!

if install_plug == 1
  echo "Installing plugins, please ignore key map error messages"
  echo ""
  let g:plug_threads=1
  :PlugInstall
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
set splitright                                      " Always split window on the right.

" set path+=/usr/include/c++/**

set showcmd                                         " Show partial commands in the last line of the screen
set hlsearch                                        " Highlight search CTRL-L :)
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

set cc=0                                           " set colorcolumn, good for Python
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
highlight clear SignColumn                          " SignColumn sould match background for
                                                    " things like signify
set ruler                                           " Show the ruler
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)  " A ruler on steroids

" Auto change directory, good to go with CtrlP
" if !Windows
" autocmd BufEnter * if bufname("") !~ "^\[A-Za-z0-9\]*://" | lcd %:p:h | endif

set winminheight=0                                  " Windows height only 0
scriptencoding utf-8
set encoding=utf-8
set nolist                                          " No list characters by default
" Highlight problematic whitespace
if (has('win32') || has('win64'))
  set listchars=tab:>-,trail:.,precedes:<,extends:>,eol:¬
else
  set listchars=tab:›\ ,trail:•,extends:#,nbsp:.,eol:¬
endif

" }}}

" Strip whitespace {{{
function! StripTrailingWhitespace()
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " do the business:
  %s/\s\+$//e
  " clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction
" }}}

" source them {{{
exec "source " . s:dirname . "/autocomplete.vim"
exec "source " . s:dirname . "/backup.vim"
exec "source " . s:dirname . "/chords.vim"
exec "source " . s:dirname . "/custom_command.vim"
exec "source " . s:dirname . "/ctrlpconf.vim"
exec "source " . s:dirname . "/filetypes.vim"
exec "source " . s:dirname . "/mappings.vim"
" }}}

" If NERDTree doesn't look right, change 1 to 0
"let NERDTreeDirArrows=1

" Fixed tmux messed up with some colorschemes
" set term=screen-256color
let g:syntastic_ruby_checkers=['mri']
let g:syntastic_html_checkers=[]
" let g:syntastic_javascript_checkers=['jshint']
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_python_flake8_args='--max-complexity 10'
" let g:syntastic_cpp_checkers=['cpplint']
let g:syntastic_c_include_dirs=['/usr/local/include/']
let NERDSpaceDelims=1

let g:plug_threads=1

" A must
let g:syntastic_always_populate_loc_list = 1
nnoremap <F1> :normal 1<CR>
" set rtp+=~/.fzf

" Syntax for these JS libraries
let g:used_javascript_libs='jquery,underscore,react,angularjs,angularui,chai'

let g:sparkupMappingInsertModeOnly = 1

" http://vi.stackexchange.com/a/247/2446
if &term =~ '256color'
  " disable Background Color Erase (BCE)
  set t_ut=
endif

if has('win32') || has('win64')
  set term=xterm
  set t_ut= " setting for looking properly in tmux
  set t_ti= t_te= " prevent vim from clobbering the scrollback buffer
  let &t_Co = 256
  " trick to support 256 colors and scroll in conemu
  let &t_AF="\e[38;5;%dm"
  let &t_AB="\e[48;5;%dm"
  inoremap <esc>[62~ <c-x><c-e>
  inoremap <esc>[63~ <c-x><c-y>
  nnoremap <esc>[62~ 3<c-e>
  nnoremap <esc>[63~ 3<c-y>
endif
