" leader definition
let mapleader = ","

" remap escape key
inoremap jk <Esc>
" if has('nvim')
"   tnoremap jk <C-\><C-n>
" endif

" remap fwd search to stay at word under cursor
nnoremap * *N

" navigation / views
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
map <s-h> :tabprevious<CR>
map <s-l> :tabnext<CR>
nnoremap <c-n> :nohl<CR>
nnoremap <c-q> :pclose<CR>
inoremap <c-q> <Esc>:pclose<CR>
nnoremap <space> za
vnoremap <space> zf

" text manipulation
vnoremap < <gv
vnoremap > >gv

" Move lines
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" leader combinations
nmap <Leader>s :set spell!<CR>
nmap <Leader>r :%s/\<<C-r><C-w>\>/
nmap <Leader>nf :set nofoldenable<CR>
nmap <Leader>f0 :set foldenable foldlevel=0<CR>
nmap <Leader>f1 :set foldenable foldlevel=1<CR>
nmap <Leader>f2 :set foldenable foldlevel=2<CR>
nmap <Leader>f3 :set foldenable foldlevel=3<CR>
nmap <Leader>bd :b#<bar>bd#<CR>
nmap <expr> <Leader>mq ':cfile ' . $CERR_LOCATION . '<CR>'

" custom functions
map <F7> :call ToggleShowWidth()<CR>
