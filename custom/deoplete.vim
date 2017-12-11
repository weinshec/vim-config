let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_refresh_always = 1
let g:deoplete#disable_auto_complete = 1

" <TAB>: completion.
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>"
      \ : <SID>is_whitespace() ? "\<TAB>"
      \ : deoplete#manual_complete()
inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<C-h>"

" Checks if previous character was a whitespace
function! s:is_whitespace() abort "{{{
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}

" <BS>: close popup and delete backword char.
if exists('g:AutoPairsMapBS')
  inoremap <expr><BS> pumvisible() ? deoplete#smart_close_popup() : AutoPairsDelete()
else
  inoremap <expr><BS> pumvisible() ? deoplete#smart_close_popup() : "\<BS>"
endif

" Close doc split when leaving insert mode
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" <CR>: close popup on Enter
inoremap <expr><CR> pumvisible() ? deoplete#close_popup() : "\<CR>"
