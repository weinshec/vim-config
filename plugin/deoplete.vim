if exists('g:plugs["deoplete.nvim"]') 
  let g:deoplete#enable_at_startup = 1
  call deoplete#custom#option({
  \ 'auto_complete': v:false,
  \ 'ignore_sources': {
  \    '_': ['around', 'buffer'],
  \   },
  \ })

  inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ deoplete#manual_complete()
  function! s:check_back_space() abort "{{{
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
  endfunction"}}}

  inoremap <silent><expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<TAB>"
  inoremap <expr><BS>  deoplete#smart_close_popup()."\<C-h>"
endif
