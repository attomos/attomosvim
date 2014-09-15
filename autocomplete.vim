" YCM and UltiSnips
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_filetype_identifier_group = 0
let g:UltiSnipsListSnippets="<C-l>"
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"
let g:UltiSnipsEditSplit="vertical"
" Use your own fork is better than keep your snippets in Dropbox
let g:UltiSnipsSnippetDirectories=["UltiSnips"]

" jedi-vim
let g:jedi#goto_assignments_command = ""
let g:jedi#rename_command = ""
let g:jedi#show_call_signatures = "0"

" neocomplete.vim
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
