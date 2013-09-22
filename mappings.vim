let mapleader = ","

" enter: clear highlight
" from garybernhardt/dotfiles
function! MapCR()
    nnoremap <cr> :nohlsearch<cr>
endfunction
call MapCR()
autocmd! CmdwinEnter * :unmap <cr>
autocmd! CmdwinLeave * :call MapCR()

" Shortcuts
" Change Working Directory to that of the current file
cmap cwd lcd %:p:h
cmap cd. lcd %:p:h

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
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

" Easier horizontal scrolling
map zl zL
map zh zH

" NERDTree
"map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>

" Code folding options
nmap <leader>f0 :set foldlevel=0<CR>
nmap <leader>f1 :set foldlevel=1<CR>
nmap <leader>f2 :set foldlevel=2<CR>
nmap <leader>f3 :set foldlevel=3<CR>
nmap <leader>f4 :set foldlevel=4<CR>
nmap <leader>f5 :set foldlevel=5<CR>
nmap <leader>f6 :set foldlevel=6<CR>
nmap <leader>f7 :set foldlevel=7<CR>
nmap <leader>f8 :set foldlevel=8<CR>
nmap <leader>f9 :set foldlevel=9<CR>

" Find merge conflict markers
map <leader>fc /\v^[<\|=>]{7}( .*\|$)<CR>

" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" Fugitive
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gl :Glog<CR>
nnoremap <silent> <leader>gp :Git push<CR>

" Toggle list characters
map <leader>l :set list!<CR>

" Toggle spelling
nmap <leader>s :set spell!<CR>

" CtrlP mappings (from https://github.com/fisadev/fisa-vim-config)
" Adapted some to make yourself comfy
nnoremap <leader>gg :CtrlPBufTag<CR>
nnoremap <leader>G :CtrlPBufTagAll<CR>
nnoremap <leader>F :CtrlPLine<CR>
nnoremap <leader>m :CtrlPMRUFiles<CR>
nnoremap <leader>C : CtrlPCmdPalette<CR>
nnoremap <Leader>fu :CtrlPFunky<CR>
nnoremap <leader>fs :CtrlPMark<CR>

" yank to clipboard maps
nnoremap <C-y> "+y
vnoremap <C-y> "+y

" Allow using the repeat operator with a visual selection (!)
" http://stackoverflow.com/a/8064607/127816
vnoremap . :normal .<CR>

" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

" Gundo
nmap <F5> :GundoToggle<CR>

" vim-easy-align
vnoremap <silent> <Enter> :EasyAlign<CR>

" Use <F2> to toggle between 'paste' and 'nopaste'
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>

" For preview markdown and friends
" gem install bluecloth
map <silent> \p :Preview<CR>

" Firefox, of course :)
nmap <leader>p :!open -a Firefox %<CR><CR>

" TagBar
nnoremap <silent> <leader>tt :TagbarToggle<CR>

" Tabman
let g:tabman_toggle = '<leader>tm'

" https://vimeo.com/67215271
" now <C-c> won't break the autoclose parentheses
inoremap <C-c> <Esc>
