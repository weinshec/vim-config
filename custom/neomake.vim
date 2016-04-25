autocmd! BufWritePost * Neomake

"let g:neomake_cpp_enable_markers=['clang']
"let g:neomake_cpp_clang_args = ["-std=c++11", "-Wextra", "-Wall", "-g"]

nmap <Leader>m  :w<CR>:NeomakeSh make<CR>
nmap <Leader>mc :w<CR>:NeomakeSh make clean<CR>
nmap <Leader>ml :w<CR>:NeomakeSh pdflatex %<CR>
