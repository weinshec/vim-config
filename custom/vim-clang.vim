let g:clang_c_options = '-std=c++11'
let g:clang_cpp_options = '-std=c++11'
let g:clang_c_completeopt = 'menuone,preview,noselect,noinsert'
let g:clang_cpp_completeopt = 'menuone,preview,noselect,noinsert'
let g:clang_complete_auto = 0
let g:clang_auto_select = 0
let g:clang_default_keymappings = 0
let g:clang_use_library = 1
let g:clang_close_preview = 1
let g:clang_auto_user_options = 'compile_commands.json, .clang, path'
let g:clang_user_options = '-std=c++11'
let g:clang_auto = 0
let g:clang_diagsopt = ''
let g:clang_verbose_pmenu = 1
let g:clang_pwheight = 4

map <silent> <C-c> <Esc>:ClangCloseWindow<CR>
