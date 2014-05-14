set background=dark
highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "m4ck colors"

highlight Normal guifg=white guibg=#2e3436

highlight LineNr         ctermfg=250     ctermbg=239     cterm=bold
highlight LineNr         guifg=#bcbcbc   guibg=#4e4e4e   gui=bold
highlight StatusLine     ctermfg=255     ctermbg=25      cterm=bold
highlight StatusLine     guifg=#eeeeee   guibg=#005faf   gui=bold
highlight StatusLineNC   ctermfg=250     ctermbg=25      cterm=NONE
highlight StatusLineNC   guifg=#bcbcbc   guibg=#005faf   gui=NONE
highlight ColorColumn    ctermfg=NONE    ctermbg=245     cterm=NONE
highlight ColorColumn    guifg=NONE      guibg=#8a8a8a   gui=NONE
highlight NonText        ctermfg=12      ctermbg=NONE    cterm=NONE
highlight NonText        guifg=#729fcf   guibg=NONE      gui=NONE


""""""""""""
"" C++ stuff
""""""""""""
highlight cString        ctermfg=209  ctermbg=NONE  cterm=NONE 
highlight cType          ctermfg=46   ctermbg=NONE  cterm=NONE
highlight cNumbers       ctermfg=141  ctermbg=NONE  cterm=NONE
highlight cppStructure   ctermfg=14   ctermbg=NONE  cterm=NONE
highlight cCommentL      ctermfg=242  ctermbg=NONE  cterm=NONE
highlight cComment       ctermfg=256  ctermbg=4     cterm=NONE
highlight cTodo          ctermfg=0    ctermBG=11    cterm=bold


""""""""""""""
"" LaTeX stuff
""""""""""""""
highlight texStatement   ctermfg=46   ctermbg=NONE  cterm=NONE 

"""""""""""""""
"" Python stuff
"""""""""""""""
highlight pythonInclude ctermfg=39    ctermbg=NONE    cterm=bold
highlight link pythonComment    cCommentL
highlight link pythonString     cString 
highlight link pythonNumber     cNumbers
