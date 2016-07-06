let g:deoplete#enable_at_startup = 1

autocmd InsertLeave * if pumvisible() == 0|pclose|endif
