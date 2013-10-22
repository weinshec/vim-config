"""""""""""""""
"" General Sets
"""""""""""""""

autocmd! bufwritepost .vimrc source %

set number
set tabstop=4
set shiftwidth=4
set expandtab
set laststatus=2
set nowrap
set autoindent
set gdefault
set wildmenu
set history=700
set undolevels=700
set hlsearch
set incsearch
set ignorecase
set smartcase
set nobackup
set nowritebackup
set noswapfile
set pastetoggle=<F2>
set clipboard=unnamedplus
set bs=2


""""""""""""""""""""""""""
"" Pathogen Plugin Manager
""""""""""""""""""""""""""
execute pathogen#infect()

""""""""""""""""""""""
"" Syntax highlighting
""""""""""""""""""""""
syntax on
filetype plugin indent on

""""""""""""""
"" Colorscheme
""""""""""""""
set t_Co=256
colorscheme m4ckColors

"""""""""""""""""""
"" Type Definitions
"""""""""""""""""""
au BufNewFile,BufRead *.conf set filetype=cfg

""""""""""""""""
"" Spellchecking
""""""""""""""""
if v:version >= 700
    ""setlocal spell spelllang=en_us
    setlocal spell spelllang=de,en_us
    set nospell
endif

"""""""""""
"" Encoding
"""""""""""
let g:NERDTreeDirArrows=0

""""""""""""""
"" MAPPINGS
""""""""""""""

nmap <F8> :TagbarToggle<CR>
nmap <F10> :call <SID>SynStack()<CR>
nmap <C-W>u :call MergeTabs()<CR>
inoremap jk <Esc>
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
map <s-h> <esc>:tabprevious<CR>
map <s-l> <esc>:tabnext<CR>
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

"" Leader key combinations
let mapleader = ","
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/
map <Leader>e :e.<CR>
map <Leader>m :!make<CR>
map <Leader>mc :!make clean<CR>
vnoremap <Leader>t= :Tab/=<CR>
vnoremap <Leader>t, :Tab/,<CR>
vnoremap <Leader>t) :Tab/)<CR>
vnoremap <Leader>t( :Tab/(<CR>


command! Q q " Bind :Q to :q
command! Qall qall 


""""""""
"" CtrlP
""""""""
set runtimepath^=~/.vim/bundle/ctrlp
set wildignore+=*.root,*.tar.gz,*.o,*.so,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(root|tar.gz|o|so|zip)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }


""""""""""""
"" VimScript
""""""""""""
" Show type of object under curser
function! <SID>SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" Merge a tab into a split in the previous window
function! MergeTabs()
  if tabpagenr() == 1
    return
  endif
  let bufferName = bufname("%")
  if tabpagenr("$") == tabpagenr()
    close!
  else
    close!
    tabprev
  endif
  vsplit
  execute "buffer " . bufferName
endfunction

