" vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={{{,}}} foldlevel=0 foldmethod=marker spell:
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

" syn match   myTodo   "\<\(TODO\|FIXME\|XXX\|NOTE\|HACK\|REVIEW\|OPTIMIZE\)\>"
" hi def link myTodo Todo
" hi def myTodo myTodo
" TODO FIXME XXX NOTE OPTIMIZE HACK REVIEW
" hi Todo term=bold cterm=bold ctermfg=154 guifg=#87e087 ctermbg=none guibg=none
" MatchTagAlways
let g:mta_use_matchparen_group = 0
let g:mta_set_default_matching_color = 0
highlight MatchTag ctermfg=black ctermbg=lightgreen guifg=black guibg=lightgreen

" For light background
" TODO: If light background detected
" hi Visual guifg=NONE guibg=#FFDB9D guisp=#3c414c gui=NONE ctermfg=NONE ctermbg=222 cterm=NONE

hi Search term=none cterm=none ctermfg=0 ctermbg=83 guifg=#000000 guibg=#5fff5f
" hi IncSearch term=reverse cterm=reverse ctermfg=0 ctermbg=83 guifg=#ffffff guibg=#282828
hi PMenu term=none cterm=none ctermfg=15 ctermbg=239 guifg=#ffffff guibg=#282828
hi PMenuSel term=none cterm=none ctermfg=15 ctermbg=27 guifg=#ffffff guibg=#0E7DFC
hi ColorColumn term=none cterm=none ctermfg=red ctermbg=240 guifg=red guibg=#282828

hi clear SpellLocal

" highlight lines in Sy and vimdiff etc.)
highlight DiffAdd           cterm=bold ctermbg=none ctermfg=40
highlight DiffDelete        cterm=bold ctermbg=none ctermfg=167
highlight DiffChange        cterm=bold ctermbg=none ctermfg=227

" highlight signs in Sy
highlight SignifySignAdd    cterm=bold ctermbg=237  ctermfg=40   guibg=#3a3a3a  guifg=#00df00
highlight SignifySignDelete cterm=bold ctermbg=237  ctermfg=167  guibg=#3a3a3a  guifg=#df5f5f
highlight SignifySignChange cterm=bold ctermbg=237  ctermfg=227  guibg=#3a3a3a  guifg=#ffff5f

" au VimEnter * RainbowParenthesesToggle
" au Syntax * RainbowParenthesesLoadRound
" au Syntax * RainbowParenthesesLoadSquare
" au Syntax * RainbowParenthesesLoadBraces

syn keyword pythonThis cls self

syn match pythonChain '\v(^|\W)(cls|self)\zs(\s*\.\s*\h\w*)+' contains=pythonMember
syn match pythonMember '\h\w*' contained
syn keyword pythonStatement class def self nextgroup=pythonFunction skipwhite
