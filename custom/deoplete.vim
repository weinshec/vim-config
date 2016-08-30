let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_refresh_always = 1
let g:deoplete#omni_patterns = {}
let g:deoplete#omni_patterns.cpp = '[^. *\t]\.\w*|[^. *\t]\::\w*|[^. *\t]\->\w*|#include\s*[<"][^>"]*'
let g:deoplete#omni#input_patterns={}
let g:deoplete#omni#input_patterns.cpp = ['[^. *\t]\.\w*','[^. *\t]\::\w*','[^. *\t]\->\w*','#include\s*[<"][^>"]*']

inoremap <expr><tab>  pumvisible() ? "\<C-n>" : "\<tab>"
inoremap <expr><S-tab> pumvisible() ? "\<C-p>" : "\<bs>"

autocmd InsertLeave * if pumvisible() == 0|pclose|endif
