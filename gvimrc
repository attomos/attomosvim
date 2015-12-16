" vim: set sw=2 ts=2 sts=2 et tw=78 foldmarker={{{,}}} foldlevel=0 foldmethod=marker spell:

if has("gui_running")
  set listchars=tab:›\ ,trail:•,extends:#,nbsp:.,eol:¬  " Highlight problematic whitespace
  " tab navigation like firefox
  nnoremap <C-S-tab> :tabprevious<CR>
  nnoremap <C-tab>   :tabnext<CR>
  inoremap ö *
  vnoremap ã "*y
  cnoremap ö *
  set guifont=Ubuntu_Mono_derivative_Powerlin:h12:cANSI
  set guioptions-=e  "remove tab pages
  set guioptions-=m  "remove menu bar
  set guioptions-=T  "remove toolbar
  set guioptions-=r  "remove right-hand scroll bar
  set guioptions-=L  "remove left-hand scroll bar
  " GUI is running or is about to start.
  " Maximize gvim window.
  "set lines=999 columns=999
  " But I don't do that.
  set lines=25 columns=80
  "set noea " no equalalways
else
  " This is console Vim.
  if exists("+lines")
    set lines=50
  endif
  if exists("+columns")
    set columns=100
  endif
endif
