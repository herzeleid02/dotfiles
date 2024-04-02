hi clear Normal
set bg&

" Remove all existing highlighting and set the defaults.
hi clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif


highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
highlight CursorLineNr term=bold cterm=NONE ctermfg=Yellow ctermbg=NONE gui=NONE guifg=Yellow guibg=NONE

"highlight Cursor guifg=yellow guibg=black
"highlight CursorLine guibg=NONE ctermbg=NONE
"hi StatusLine   ctermfg=226  guifg=#ffff00 ctermbg=239 guibg=#4e4e4e cterm=bold gui=bold
"hi StatusLineNC ctermfg=249 guifg=#b2b2b2 ctermbg=237 guibg=#3a3a3a cterm=none gui=none

hi StatusLine   ctermfg=Yellow guifg=Yellow ctermbg=239 guibg=#4e4e4e cterm=bold gui=bold
hi StatusLineNC ctermfg=249 guifg=#b2b2b2 ctermbg=237 guibg=#3a3a3a cterm=none gui=none

" hi TabLineFill ctermfg=239 ctermbg=Black guifg=#4e4e4e guibg=#4e4e4e gui=none
hi TabLineFill ctermfg=237 ctermbg=Black guifg=#4e4e4e guibg=#4e4e4e gui=none
hi TabLineSel ctermfg=Yellow ctermbg=239
hi TabLine ctermfg=249 ctermbg=237
