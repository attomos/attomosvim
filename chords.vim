" From http://github.com/dtinth/.vimrc
" chord files for vim-arpeggio

function! chords#general()
  Arpeggio inoremap {} {<CR>}<Esc>O
  Arpeggio inoremap () ()<Left>
  Arpeggio inoremap [] []<Left>
  Arpeggio inoremap ret return<Space>
  Arpeggio inoremap sd <C-w>
  Arpeggio inoremap kl <C-w>
  Arpeggio nnoremap jkl ciw
  Arpeggio nnoremap sdf :set paste!<CR>
  Arpeggio nnoremap askl :Silent clear<CR>
endfunction

function! chords#python()
  Arpeggio inoremap fun def ():<Left><Left><Left>
endfunction

function! chords#ruby()
  Arpeggio inoremap fun def<CR>end<Up><Space>
  Arpeggio inoremap cla class<CR>end<Up><Right><Right><Space>
  Arpeggio inoremap con puts<Space>
  Arpeggio inoremap inc include<Space>
  Arpeggio inoremap mod module<CR>end<Up><Right><Right><Right><Space>
  Arpeggio inoremap req require<Space>
endfunction

function! chords#javascript()
  Arpeggio inoremap awd var<Space>
  Arpeggio inoremap awf arguments
  Arpeggio inoremap ;f ;(function() {<Cr>})()<Esc>O<Tab>
  Arpeggio inoremap rea fs.readFile
  Arpeggio inoremap jsp JSON.parse
  Arpeggio inoremap jst JSON.stringify
  Arpeggio inoremap bin .bind
  Arpeggio inoremap thr throw new Error()<left>
  Arpeggio inoremap ten .then
  Arpeggio inoremap req require('')<Left><Left>
  Arpeggio inoremap doc document.
  Arpeggio inoremap win window.
  Arpeggio inoremap pro .prototype.
  Arpeggio inoremap arj Array
  Arpeggio inoremap obj Object
  Arpeggio inoremap thi this
  Arpeggio inoremap con console.log
  Arpeggio inoremap fun function
  Arpeggio inoremap FUN Function
endfunction

autocmd VimEnter * call chords#general()
autocmd FileType python call chords#python()
autocmd FileType coffee,javascript,jst,html call chords#javascript()
autocmd FileType ruby call chords#ruby()
let g:arpeggio_timeoutlen=30
