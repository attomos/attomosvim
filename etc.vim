" vim signify moving between hunks
nmap gj <plug>(signify-next-hunk)
nmap gk <plug>(signify-prev-hunk)
" https://github.com/mhinz/vim-signify/commit/98e324a281e6ad38786fbb54ac70819db80a5aa7
" Sytastic error should be more important than signify
let g:signify_sign_overwrite=0
