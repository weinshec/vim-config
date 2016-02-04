""""""""""""""""
"" General Setup
""""""""""""""""

autocmd! bufwritepost .vimrc source %

"" Options on the neovim defaults list
set autoindent
set autoread
set backspace=2
set complete=.,w,b,u,t
set display=lastline
set encoding=utf-8
set formatoptions=t,c,q,j
set history=10000
set hlsearch
set incsearch
set langnoremap
set laststatus=2
set listchars=tab:>-,trail:-,nbsp:+
set mouse=a
set nocompatible
set nrformats=hex
set sessionoptions=blank,buffers,curdir,folds,help,tabpages,winsize
set smarttab
set tabpagemax=50
set tags="./tags;,tags"
set ttyfast
set wildmenu

"" Additional Options
set clipboard=unnamedplus
set expandtab
set foldlevel=1
set foldmethod=syntax
set gdefault
set ignorecase
set list
set nobackup
set noswapfile
set nowrap
set nowritebackup
set number
set pastetoggle=<F2>
set printoptions=paper:A4,syntax:y,wrap:y,left:5pc,number:y
set shiftwidth=4
set smartcase
set splitbelow
set splitright
set t_Co=256
set tabstop=4
set undolevels=10000


""""""""""""""""""""""
"" Syntax highlighting
""""""""""""""""""""""
syntax on
filetype plugin indent on


""""""""""""""
"" Colorscheme
""""""""""""""
"colorscheme monokai


"""""""""""""""""""
"" Type Definitions
"""""""""""""""""""
au BufNewFile,BufRead *.conf set filetype=cfg
au BufNewFile,BufRead *.py set foldmethod=indent


""""""""""""""""
"" Spellchecking
""""""""""""""""
if v:version >= 700
    setlocal spell spelllang=en_us
    set nospell
endif


""""""""""""
"" LeaderKey
""""""""""""
let mapleader = ","


"""""""""""""""""
"" Plugin Manager
"""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'tomasr/molokai'
Plug 'itchyny/lightline.vim'
Plug 'kien/ctrlp.vim'
Plug 'godlygeek/tabular'
Plug 'lilydjwg/colorizer'
Plug 'tpope/vim-surround'
Plug 'SirVer/ultisnips'
Plug 'scrooloose/nerdcommenter'
Plug 'justmao945/vim-clang'
Plug 'majutsushi/tagbar'
if has('nvim')
    Plug 'benekastah/neomake'
    Plug 'Shougo/deoplete.nvim'
endif
call plug#end()

runtime custom/molokai.vim
runtime custom/lightline.vim
runtime custom/ctrlp.vim
runtime custom/tabular.vim
runtime custom/vim-clang.vim
runtime custom/tagbar.vim
if has('nvim')
    runtime custom/neomake.vim
    runtime custom/deoplete.vim
endif


""""""""""""""
"" MAPPINGS
""""""""""""""
inoremap jk <Esc>
map  <C-n> :nohl<CR>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
map <s-h> :tabprevious<CR>
map <s-l> :tabnext<CR>
vnoremap < <gv
vnoremap > >gv
nnoremap <space> za
vnoremap <space> zf

"" Call custom functions
map  <F8> :call ToggleShowWidth()<CR>
nmap <F12> :call <SID>SynStack()<CR>

"" Leader key combinations
nmap <Leader>s :set spell!<CR>
nmap <Leader>r :%s/\<<C-r><C-w>\>/
nmap <Leader>m :w <bar> !make<CR>
nmap <Leader>mc :w <bar> !make clean<CR>
nmap <Leader>mt :w <bar> !make test<CR>

command! Q q
command! Qa qall 
command! W w 
command! Wq wq


""""""""""""
"" VimScript
""""""""""""
" Toggle display of 80th column
function! ToggleShowWidth()
    if &cc > 0
        let &cc = 0
        let &textwidth = 0
    else
        let &cc = 80
        let &textwidth = 79
    endif
endfunc

" Show type of object under curser
function! <SID>SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

