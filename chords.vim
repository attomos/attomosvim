" From http://github.com/dtinth/.vimrc
" chord files for vim-arpeggio

function! chords#general()
  Arpeggio inoremap {} {<CR>}<Esc>O
  Arpeggio inoremap () ()<Left>
  Arpeggio inoremap [] []<Left>
  Arpeggio inoremap ret return<Space>
  Arpeggio nnoremap jkl ciw
  Arpeggio nnoremap sdf :set paste!<CR>
  Arpeggio nnoremap kl :Silent clear<CR>
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
  Arpeggio inoremap daw describe<Space>""<Space>do<CR>end<Up><Right><Right><Right><Right><Right><Right><Right>
endfunction

function! chords#javascript()
  Arpeggio inoremap awd var<Space>
  Arpeggio inoremap awf arguments
  Arpeggio inoremap ;f ;(function() {<Cr>})()<Esc>O
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

function! chords#java()
  Arpeggio inoremap con System.out.println();<Left><Left>
  Arpeggio inoremap cla class <Space>{<Cr>}<Up><Right><Right><Right><Right><Right>
  Arpeggio inoremap mia public static void main(String[] args) {<Cr>}<Esc>O
endfunction

autocmd VimEnter * call chords#general()
autocmd FileType python call chords#python()
autocmd FileType coffee,javascript,jst,html call chords#javascript()
autocmd FileType java call chords#java()
autocmd FileType ruby call chords#ruby()
let g:arpeggio_timeoutlen=25
