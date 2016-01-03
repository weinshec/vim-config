set runtimepath^=~/.vim/plugged/ctrlp
set wildignore+=*.root,*.tar.gz,*.o,*.so,*.zip,*.pdf
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(root|tar.gz|o|so|zip|pdf|eps|pyc)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" Make startify not open ctrlp in a new buffer
let g:ctrlp_reuse_window = 'startify'

