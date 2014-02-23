let mapleader = " "

" <CR> to clear matched patterns
nnoremap <CR> :noh<CR>
" from garybernhardt/dotfiles
"function! MapCR()
    "nnoremap <cr> :nohlsearch<cr>
"endfunction
"call MapCR()
"autocmd! CmdwinEnter * :unmap <cr>
"autocmd! CmdwinLeave * :call MapCR()

" vim-easy-align
vnoremap <silent> <Enter> :EasyAlign<cr>

" Shortcuts
" Change Working Directory to that of the current file
cmap cwd lcd %:p:h
cmap cd. lcd %:p:h

" Copy selection to clipboard
noremap <Leader>y "*y
" Copy line to clipboard
noremap <Leader>Y "*Y

" http://stackoverflow.com/a/726920/606355
cmap w!! w !sudo tee % >/dev/null

" Easy windows
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l
map <C-H> <C-W>h

" Fast tabs
map <S-H> gT
map <S-L> gt

" Some helpers to edit mode
" http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%:h').'/'<CR>
map <Leader>ew :e %%
map <Leader>es :sp %%
map <Leader>ev :vsp %%
map <Leader>et :tabe %%

" Easier horizontal scrolling
map zl zL
map zh zH

" NERDTree
map <Leader>E :NERDTreeToggle<CR>:NERDTreeMirror<CR>
"map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>

" Code folding options
nmap <Leader>f0 :set foldlevel=0<CR>
nmap <Leader>f1 :set foldlevel=1<CR>
nmap <Leader>f2 :set foldlevel=2<CR>
nmap <Leader>f3 :set foldlevel=3<CR>
nmap <Leader>f4 :set foldlevel=4<CR>
nmap <Leader>f5 :set foldlevel=5<CR>
nmap <Leader>f6 :set foldlevel=6<CR>
nmap <Leader>f7 :set foldlevel=7<CR>
nmap <Leader>f8 :set foldlevel=8<CR>
nmap <Leader>f9 :set foldlevel=9<CR>

" Find merge conflict markers
map <Leader>fc /\v^[<\|=>]{7}( .*\|$)<CR>

" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" Fugitive
nnoremap <silent> <Leader>gs :Gstatus<CR>
nnoremap <silent> <Leader>gd :Gdiff<CR>
nnoremap <silent> <Leader>gc :Gcommit<CR>
nnoremap <silent> <Leader>gb :Gblame<CR>
nnoremap <silent> <Leader>gl :Glog<CR>
nnoremap <silent> <Leader>gp :Git push<CR>

" Toggle list characters
map <Leader>l :set list!<CR>

" Toggle spelling
nmap <Leader>ss :set spell!<CR>:set spell?<CR>

" CtrlP mappings (from https://github.com/fisadev/fisa-vim-config)
" Adapted some to make me comfy
nnoremap <Leader>gg :CtrlPBufTag<CR>
nnoremap <Leader>G :CtrlPBufTagAll<CR>
nnoremap <Leader>F :CtrlPLine<CR>
nnoremap <Leader>m :CtrlPMRUFiles<CR>
nnoremap <Leader>fu :CtrlPFunky<CR>

" Allow using the repeat operator with a visual selection (!)
" http://stackoverflow.com/a/8064607/127816
vnoremap . :normal .<CR>

" Bubble single lines
"nmap <C-Up> [e
"nmap <C-Down> ]e
" Bubble multiple lines
"vmap <C-Up> [egv
"vmap <C-Down> ]egv

" Gundo
nmap <F5> :GundoToggle<CR>

" Use <F2> to toggle between 'paste' and 'nopaste'
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>

" For preview markdown and friends
" gem install bluecloth
map <silent> \p :Preview<CR>

" Open default browser, Chrome in this case
nmap <Leader>p :!open -a Google\ Chrome %<CR><CR>

" TagBar
nnoremap <silent> <Leader>tt :TagbarToggle<CR>

" Tabman
let g:tabman_toggle = '<Leader>tm'

" https://vimeo.com/67215271
" now <C-c> won't break the autoclose parentheses
inoremap <C-c> <Esc>

" custom command
map <Leader>r :call custom_command#run()<cr>
map <Leader>sc :call custom_command#set()<cr>

" http://statico.github.io/vim.html
nmap \w :setlocal wrap!<CR>:setlocal wrap?<CR>

" Custom command for run system command silently and redraw the editing buffer
" http://vim.wikia.com/wiki/Avoiding_the_%22Hit_ENTER_to_continue%22_prompts
command! -nargs=1 Silent
\ | execute ':silent !'.<q-args>
\ | execute ':redraw!'

map <Leader>sl :Silent<Space>

nnoremap <silent> <Leader>ig :IndentGuidesToggle<CR>

" Map <Leader>ff to display all lines with keyword under cursor
" and ask which one to jump to
nmap <Leader>ff [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>

nnoremap \et :set expandtab!<CR>:set expandtab?<CR>

"let g:seek_subst_disable = 1
"let g:SeekKey = '<Space>'
"let g:SeekBackKey = '<S-Space>'

let g:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")'

" vim-rpec mappings
map <Leader>T :call RunCurrentSpecFile()<CR>
map <Leader>S :call RunNearestSpec()<CR>
map <Leader>L :call RunLastSpec()<CR>
map <Leader>A :call RunAllSpecs()<CR>

vmap <C-t><C-t> <Plug>SendSelectionToTmux
nmap <C-t><C-t> <Plug>NormalModeSendToTmux
nmap <C-t>r <Plug>SetTmuxVars

" Send to tmux
" Send custom command to tmux
" FIXME: Better write function to get the proper path
map <silent> <Leader>R :call Send_to_Tmux(substitute(substitute(g:custom_command, "%:r", expand("%:r"), ""), "%", expand("%"), "") . "\n")<CR>
" Send `clear` to tmux
map <silent> <Leader>K :call Send_to_Tmux("clear\n")<CR>
" Send  to tmux
map <silent> <Leader>C :call Send_to_Tmux("\u0003")<CR>

" Stripe whitespace
nmap <silent> <Leader>st :call StripTrailingWhitespace()<CR>

function! ToggleRubyChecker()
  if g:syntastic_ruby_checkers == ['mri']
    let g:syntastic_ruby_checkers=['rubocop']
  else
    let g:syntastic_ruby_checkers=['mri']
  end
  echo g:syntastic_ruby_checkers[0]
endfunction

nnoremap <Leader>\ :call ToggleRubyChecker()<CR>

" From http://vimcasts.org/episodes/creating-mappings-that-accept-a-count/
nnoremap Q :normal n.<CR>

" From http://vimcasts.org/episodes/creating-repeatable-mappings-with-repeat-vim/
nnoremap <silent> <Plug>TransposeCharacters xp
\:call repeat#set("\<Plug>TransposeCharacters")<CR>
nmap cp <Plug>TransposeCharacters

nnoremap <Leader>D :Dash<CR>
