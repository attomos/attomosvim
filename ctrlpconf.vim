" CtrlP
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\.git$\|\.hg$\|\.svn$',
    \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$' }
let g:ctrlp_user_command = {
    \ 'types': {
        \ 1: ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others'],
        \ 2: ['.hg', 'hg --cwd %s locate -I .'],
    \ },
    \ 'fallback': 'pt %s --nocolor -l -g ""'
\ }
let g:ctrlp_extensions = ['funky']
let g:ctrlp_use_caching = 20

" ctrlp-funky
let g:ctrlp_funky_matchtype = 'path'
