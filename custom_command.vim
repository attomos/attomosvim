" vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={{{,}}} foldlevel=0 foldmethod=marker spell:
" From http://github.com/dtinth/.vimrc
" Very useful
let g:custom_command = ''

" {{{ Default custom commands
autocmd BufRead,BufNewFile,FileType c let g:custom_command = 'gcc % -o %:r.out ; ./%:r.out'
autocmd BufRead,BufNewFile,FileType cpp let g:custom_command = 'g++ % -o %:r.out ; ./%:r.out'
autocmd BufRead,BufNewFile,FileType java let g:custom_command = 'javac % ; java %:r'
autocmd BufRead,BufNewFile,FileType python let g:custom_command = 'python %'
autocmd BufRead,BufNewFile,FileType ruby let g:custom_command = 'ruby %'
" }}}

let g:silent_custom_command = 0
function! custom_command#run()
 if g:custom_command == ''
     let g:custom_command = 'echo no command'
 endif
  up
  if g:silent_custom_command
    execute 'silent !' . g:custom_command
  else
    execute '!' . g:custom_command
  end
endfunction

function! custom_command#set()
  let new_command = input('Enter Custom Command$ current is`' . g:custom_command . '`')
  if new_command != ""
    let g:custom_command = new_command
  end
endfunction

