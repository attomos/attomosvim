" vim: set sw=2 et tw=78 foldmarker={{{,}}} foldlevel=0 foldmethod=marker spell:
" From http://github.com/dtinth/.vimrc
" Very useful
let g:custom_command = ''

" {{{ Default custom commands
autocmd BufRead,BufNewFile,BufEnter *.c let g:custom_command = 'gcc % -o %:r.out ; ./%:r.out'
autocmd BufRead,BufNewFile,BufEnter *.cpp,*.cc let g:custom_command = 'g++ % -o %:r.out ; ./%:r.out'
autocmd BufRead,BufNewFile,BufEnter *.java let g:custom_command = 'javac % ; java %:r'
autocmd BufRead,BufNewFile,BufEnter *.js let g:custom_command = 'node %'
autocmd BufRead,BufNewFile,BufEnter *.py let g:custom_command = 'python %'
autocmd BufRead,BufNewFile,BufEnter *.rb let g:custom_command = 'ruby %'
" }}}

function! custom_command#run()
  if g:custom_command == ''
    let g:custom_command = 'echo no command'
  endif
  up
  execute '!' . g:custom_command
endfunction

function! custom_command#set()
  let l:new_command = input('Enter Custom Command$ ', g:custom_command)
  if l:new_command != ""
    let g:custom_command = l:new_command
  end
endfunction
