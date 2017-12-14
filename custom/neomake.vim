" call NeoMake automatically on read and write
call neomake#configure#automake('w')

" disable c/c++ linters
let g:neomake_cpp_enabled_makers = []

" shortcut mappings
nmap <Leader>m  <CR>:NeomakeSh make<CR>
nmap <Leader>mc <CR>:NeomakeSh make clean<CR>
