nmap <Leader>fa :Ag <C-r><C-w><CR>
nmap <Leader>fb :Buffers<CR>
nmap <Leader>ff :Files<CR>
nmap <Leader>ft :Tags <C-r><C-w><CR>

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }
