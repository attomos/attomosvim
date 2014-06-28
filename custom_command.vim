" vim: set sw=2 et tw=78 foldmarker={{{,}}} foldlevel=0 foldmethod=marker spell:
" From http://github.com/dtinth/.vimrc
" Very useful
let g:custom_command = ''
let g:_custom_command = ''

" {{{ Default custom commands
autocmd BufRead,BufNewFile,BufEnter *.c let g:_custom_command = 'gcc % -o %:r.o && ./%:r.o'
autocmd BufRead,BufNewFile,BufEnter *.cpp,*.cc let g:_custom_command = 'g++ % -o %:r.o && ./%:r.o'
autocmd BufRead,BufNewFile,BufEnter *.java let g:_custom_command = 'javac % && java %:r'
autocmd BufRead,BufNewFile,BufEnter *.js let g:_custom_command = 'node %'
autocmd BufRead,BufNewFile,BufEnter *.py let g:_custom_command = 'python %'
autocmd BufRead,BufNewFile,BufEnter *.rb let g:_custom_command = 'ruby %'
autocmd BufRead,BufNewFile,BufEnter *.scala let g:_custom_command = 'scala %'
autocmd BufRead,BufNewFile,BufEnter *.go let g:_custom_command = 'go run %'
autocmd BufRead,BufNewFile,BufEnter *.swift let g:_custom_command = 'swift -sdk $(xcrun --show-sdk-path --sdk macosx) % && ./%:r'
" }}}

function! custom_command#run()
  if g:custom_command == ''
    let g:custom_command = 'echo no command'
  endif
  up
  execute '!' . g:custom_command
endfunction

function! custom_command#set()
  if !empty(g:custom_command) " Always suggest default custom command
    let l:new_command = input('Enter Custom Command$ ', g:custom_command)
  else
    let l:new_command = input('Enter Custom Command$ ', g:_custom_command)
  endif
  if l:new_command != ""
    let g:custom_command = l:new_command
  end
endfunction

function! custom_command#reset()
  let g:custom_command = ''
  echo 'g:custom_command is now empty'
endfunction
