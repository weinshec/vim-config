" Personal configuration [10 TITLE COLOR]
"  No BG - White Text Bold
syntax region t0 matchgroup=Type start="<t0" end=">" concealends
hi t0 guifg=#FFFFFF gui=bold
"Cyan Text Bold
syntax region t1 matchgroup=Type start="<t1" end=">" concealends
hi t1 guifg=#0086b3 gui=bold
" Orange Text Bold
syntax region t2 matchgroup=Type start="<t2" end=">" concealends
hi t2 guifg=#CE8300 gui=bold
" Pink Text Bold
syntax region t3 matchgroup=Type start="<t3" end=">" concealends
hi t3 guifg=#FF3377 gui=bold
" Green Text Bold
syntax region t4 matchgroup=Type start="<t4" end=">" concealends
hi t4 guifg=#00CC00 gui=bold
syntax region tg matchgroup=Type start="<tg" end=">" concealends
hi tg guifg=#999999 gui=bold

" Cyan BG
syntax region t5 matchgroup=Type start="<t5" end=">" concealends
hi t5 guibg=#0099FF guifg=white gui=bold
" Grey BG
syntax region t6 matchgroup=Type start="<t6" end=">" concealends
hi t6 guibg=#666666 guifg=white gui=bold
" Orange BG
syntax region t7 matchgroup=Type start="<t7" end=">" concealends
hi t7 guibg=#CE8300 guifg=white gui=bold
" Pink BG 
syntax region t8 matchgroup=Type start="<t8" end=">" concealends
hi t8 guibg=#C100BB guifg=white gui=bold
" Green BG
syntax region t9 matchgroup=Type start="<t9" end=">" concealends
hi t9 guibg=#00CC00 guifg=white gui=bold
" End of personal configuration 
