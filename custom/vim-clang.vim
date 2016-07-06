let g:clang_c_options = '-std=c++11'
let g:clang_cpp_options = '-std=c++11'
let g:clang_cpp_completeopt = 'menuone,preview,noinsert'
let g:clang_auto = 1
"let g:clang_diagsopt = ''   " <- disable diagnostics

map <silent> <C-c> <Esc>:ClangCloseWindow<CR>
