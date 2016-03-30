let g:tagbar_autoclose = 1
let g:tagbar_autofocus = 0
let g:tagbar_sort      = 0
let g:tagbar_type_python = {
    \ 'kinds' : [
        \ 'i:imports:1:0',
        \ 'c:classes',
        \ 'f:functions',
        \ 'm:members',
        \ 'v:variables:1:0',
    \ ],
\ }

map <F9> :TagbarToggle<CR>
