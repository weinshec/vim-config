" call NeoMake automatically on read and write
call neomake#configure#automake('w')

" shortcut mappings
nmap <Leader>m  <CR>:NeomakeSh make<CR>
nmap <Leader>mc <CR>:NeomakeSh make clean<CR>
