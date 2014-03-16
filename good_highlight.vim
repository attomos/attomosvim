" Spell checking and proper highlighting, US English
set spell
set spelllang=en_us
hi clear SpellBad
hi clear SpellCap
hi clear SpellLocal
hi clear SpellRare
hi SpellBad cterm=underline gui=underline
hi SpellCap cterm=underline gui=underline
hi SpellLocal cterm=underline gui=underline
hi SpellRare cterm=underline gui=underline
hi Search term=none cterm=none ctermfg=8 ctermbg=93 guifg=#ffffff guibg=#282828

" syn match   myTodo   "\<\(TODO\|FIXME\|XXX\|NOTE\|HACK\|REVIEW\|OPTIMIZE\)\>"
" hi def link myTodo Todo
" hi def myTodo myTodo
" TODO FIXME XXX NOTE OPTIMIZE HACK REVIEW
hi Todo term=bold cterm=bold ctermfg=154 guifg=#87e087 ctermbg=none guibg=none

" MatchTagAlways
let g:mta_use_matchparen_group = 0
let g:mta_set_default_matching_color = 0
hi MatchTag ctermfg=black ctermbg=229 guifg=black guibg=lightgreen

let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'eruby' : 1,
    \ 'jinja' : 1,
    \ 'jsp' : 1,
    \}
