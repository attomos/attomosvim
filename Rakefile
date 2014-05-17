require 'date'
require 'fileutils'

task :install do
  puts 'Installing attomosvim'
  vimrc = File.expand_path('~/.vimrc')
  puts vimrc
  now = DateTime.now.strftime('%d-%m-%Y')
  backup_vimrc = File.expand_path("~/vimrc_#{now}")
  if File.exist?(vimrc)
    FileUtils.mv(vimrc, backup_vimrc)
  end
  File.new(vimrc, 'w').tap do |f|
    f.write %q{" vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={{{,}}} foldlevel=0 foldmethod=marker spell:
source ~/.attomosvim/vimrc
set bg=light
colorscheme solarized
set shell=/bin/bash
source ~/.attomosvim/good_highlight.vim
let g:languagetool_jar="~/src/LanguageTool-2.3/languagetool-commandline.jar"
hi Visual guifg=NONE guibg=#FFDB9D guisp=#3c414c gui=NONE ctermfg=NONE ctermbg=222 cterm=NONE
nnoremap zg <NOP>

" Airline {{{
let g:airline_theme = 'sol'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline#extensions#hunks#non_zero_only = 1
let g:airline_powerline_fonts=1
let g:airline_mode_map = {
  \ '__' : '-',
  \ 'n'  : 'N',
  \ 'i'  : 'I',
  \ 'R'  : 'R',
  \ 'c'  : 'C',
  \ 'v'  : 'V',
  \ 'V'  : 'V',
  \ '' : 'V',
  \ 's'  : 'S',
  \ 'S'  : 'S',
  \ '' : 'S',
  \ }
" }}}
}
  end
end
