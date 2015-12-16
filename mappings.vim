let mapleader = " "

" <CR> to clear matched patterns
nnoremap <CR> :noh<CR>

" vim-easy-align
vnoremap <silent> <Enter> :EasyAlign<CR>

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

" vim-easymotion
nmap s <Plug>(easymotion-s2)
vmap s <Plug>(easymotion-s2)

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
nnoremap <silent> <Leader>gd :Gvdiff<CR>
nnoremap <silent> <Leader>gc :Gcommit --verbose<CR>
nnoremap <silent> <Leader>gb :Gblame<CR>
nnoremap <silent> <Leader>gl :Glog<CR>
nnoremap <silent> <Leader>gp :Gpush<CR>

" Toggle list characters
map <Leader>l :set list!<CR>

" Toggle spelling
nmap <Leader>ss :set spell!<CR>:set spell?<CR>

" CtrlP mappings (from https://github.com/fisadev/fisa-vim-config)
" Altered some to suit my needs
nnoremap <Leader>gg :CtrlPBufTag<CR>
nnoremap <Leader>G :CtrlPBufTagAll<CR>
nnoremap <Leader>bb :CtrlPBuffer<CR> " consider CtrlPMixed?
nnoremap <Leader>F :CtrlPLine<CR>
nnoremap <Leader>m :CtrlPMRUFiles<CR>
nnoremap <Leader>fu :CtrlPFunky<CR>
nnoremap <Leader>M :CtrlPModified<CR>

" Allow using the repeat operator with a visual selection (!)
" http://stackoverflow.com/a/8064607/127816
vnoremap . :normal .<CR>

" Undotree
nmap <F5> :UndotreeToggle<CR>

" Use <F2> to toggle between 'paste' and 'nopaste'
nnoremap <F2> :set paste!<CR>
" set pastetoggle=<F2>

" Preview current buffer either Chrome or Mou (Markdown editor)
nmap <Leader>P :!open -a Google\ Chrome %<CR><CR>
nmap <Leader>o :!open -a Mou %<CR><CR>

" TagBar
nnoremap <silent> <Leader>TT :TagbarToggle<CR>

" https://vimeo.com/67215271
" now <C-c> won't break the autoclose parentheses
inoremap <C-c> <Esc>

" custom command
map <Leader>r :call custom_command#run()<CR>
map <Leader>sc :call custom_command#set()<CR>
map <silent> <Leader>sr  :call custom_command#reset()<CR>

" http://statico.github.io/vim.html
nmap \w :setlocal wrap!<CR>:setlocal wrap?<CR>

" Custom command for run system command silently and redraw the editing buffer
" http://vim.wikia.com/wiki/Avoiding_the_%22Hit_ENTER_to_continue%22_prompts
command! -nargs=1 Silent
\ | execute ':silent !'.<q-args>
\ | execute ':redraw!'

map <Leader>sl :Silent<Space>

" Map <Leader>ff to display all lines with keyword under cursor
" and ask which one to jump to
nmap <Leader>ff [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>

nnoremap \et :set expandtab!<CR>:set expandtab?<CR>

" Run custom command in tmux using Vimux.
" FIXME: Better write function to get the proper path
map <silent> <Leader>R :call VimuxRunCommand(substitute(substitute(g:custom_command, "%:r", expand("%:r"), ""), "%", expand("%"), ""))<CR>
" Send `clear` to tmux
map <silent> <Leader>K :call VimuxRunCommand("clear")<CR>
" Send  to tmux
map <silent> <Leader>C :call VimuxRunCommand("\u0003", 0)<CR>

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

nnoremap <Leader>fj :SyntasticToggleMode<CR>
nnoremap <Leader>\ :call ToggleRubyChecker()<CR>

" From http://vimcasts.org/episodes/creating-mappings-that-accept-a-count/
nnoremap Q :normal n.<CR>

" From http://vimcasts.org/episodes/creating-repeatable-mappings-with-repeat-vim/
nnoremap <silent> <Plug>TransposeCharacters xp
\:call repeat#set("\<Plug>TransposeCharacters")<CR>
nmap cp <Plug>TransposeCharacters

" nnoremap <Leader>D :Dash!<CR>

" http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/
" Faster :w combined with my :q
nnoremap <Leader>q :q<CR>
nnoremap <Leader>w :w<CR>

" Use Region expanding
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

function! Dict()
  let word = @*
  let term = get(a:000, 0, expand('<cword>'))
  let l:command = "open dict://"  . term
  execute ":silent! !" . l:command
  redraw!
endfunction

nnoremap <Leader>d :call Dict()<CR>

" Quickly select text you just pasted
noremap gV `[v`]

" maksimr/vim-jsbeautify
autocmd FileType javascript noremap <buffer>  <C-F> :call JsBeautify()<CR>
autocmd FileType html noremap <buffer> <C-F> :call HtmlBeautify()<CR>
autocmd FileType css noremap <buffer> <C-F> :call CSSBeautify()<CR>
autocmd FileType javascript vnoremap <buffer> <C-F> :call RangeJsBeautify()<CR>
autocmd FileType html vnoremap <buffer> <C-F> :call RangeHtmlBeautify()<CR>
autocmd FileType css vnoremap <buffer> <C-F> :call RangeCSSBeautify()<CR>

" Movement in insert mode
inoremap <C-h> <C-o>h
inoremap <C-l> <C-o>a
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k
inoremap <C-^> <C-o><C-^>

" Better tag matching
nmap <Leader>% :MtaJumpToOtherTag<cr>

" hunk jumping
nmap gj <plug>(signify-next-hunk)
nmap gk <plug>(signify-prev-hunk)

" hunk text object
omap ic <plug>(signify-motion-inner-pending)
xmap ic <plug>(signify-motion-inner-visual)
omap ac <plug>(signify-motion-outer-pending)
xmap ac <plug>(signify-motion-outer-visual)
" https://github.com/mhinz/vim-signify/commit/97e324a281e6ad38786fbb54ac70819db80a5aa7
" Sytastic error should be more important than signify
let g:signify_sign_overwrite=0

" text object for whole buffer
xmap ig :normal ggVG<CR>
omap ig :normal ggVG<CR>

" Buffer
nnoremap <Leader>bd :bdel<CR>

" YankRing.vim
nnoremap <Leader>;; :YRShow<CR>
nnoremap <Leader>;: :YRSearch<CR>
nnoremap <Leader>;c :YRClear<CR>

" JavaScript mappings
let g:tern_map_prefix = '<Leader>'
let g:tern_show_argument_hints='on_hold'
function! mappings#js()
  nnoremap <silent> <Leader>jd :JsDoc<CR>
  nnoremap <silent> <Leader>td :TernDoc<CR>
  nnoremap <silent> <Leader>tb :TernDocBrowse<CR>
  nnoremap <silent> <Leader>tt :TernType<CR>
  nnoremap <silent> <Leader>td :TernDef<CR>
  nnoremap <silent> <Leader>tR :TernRename<CR>
endfunction

autocmd FileType coffee,javascript,jst,html call mappings#js()
