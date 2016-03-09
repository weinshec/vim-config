let g:deoplete#enable_at_startup = 1
let g:deoplete#disable_auto_complete = 1

autocmd InsertLeave * if pumvisible() == 0|pclose|endif

inoremap <silent><expr> <C-@>
\ pumvisible() ? "\<C-n>" :
\ deoplete#mappings#manual_complete()
