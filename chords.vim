" From http://github.com/dtinth/.vimrc
" chord files for vim-arpeggio

function! Chords#setup()
  Arpeggio inoremap fun function
  Arpeggio inoremap FUN Function
  Arpeggio inoremap end end
  Arpeggio inoremap the the
  "Arpeggio inoremap def def<CR>end<Up><Esc>A<Space>
  Arpeggio inoremap cla class<CR>end<Up><Esc>A<Space>
  Arpeggio inoremap {} {<CR>}<Esc>O
  Arpeggio inoremap () ()<Left>
  Arpeggio inoremap con console.log
  "Arpeggio inoremap doe do<CR>end<Esc>O<Tab>
  Arpeggio inoremap thi this
  Arpeggio inoremap ten .then
  Arpeggio inoremap req require('')<Left><Left>
  Arpeggio inoremap awd var<Space>
  Arpeggio inoremap doc document.
  Arpeggio inoremap win window.
  Arpeggio inoremap pro .prototype.
  Arpeggio inoremap arj Array
  Arpeggio inoremap obj Object
  Arpeggio inoremap ret return<Space>
  "Arpeggio inoremap le .length
  " arg still hard
  "Arpeggio inoremap arg arguments
  Arpeggio inoremap ;f ;(function() {<Cr>})()<Esc>O<Tab>
  " #bcbk
  Arpeggio inoremap sd <C-w>
  Arpeggio inoremap kl <C-w>
  Arpeggio inoremap rea fs.readFile
  Arpeggio inoremap jsp JSON.parse
  Arpeggio inoremap jst JSON.stringify
  Arpeggio inoremap bin .bind
  Arpeggio inoremap thr throw new Error()<left>
  " me
  Arpeggio nnoremap ciw ciw
  Arpeggio nnoremap ci{ ciw{
  Arpeggio nnoremap ci} ciw}
endfunction

autocmd VimEnter * call Chords#setup()
let g:arpeggio_timeoutlen=30
