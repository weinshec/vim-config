""""""""""""""""
"" General Setup
""""""""""""""""

autocmd! bufwritepost .vimrc source %

set autoindent
set autoread
set backspace=2
set clipboard=unnamedplus
set completeopt+=menuone
set completeopt+=noinsert
set display=lastline
set encoding=utf-8
set expandtab
set foldmethod=syntax
set formatoptions=tcqjn
set gdefault
set hidden
set history=1000
set ignorecase
set incsearch
set laststatus=2
set list
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set nobackup
set nocompatible
set noswapfile
set nowrap
set nowritebackup
set number
set pastetoggle=<F2>
set printoptions=paper:A4,syntax:y,wrap:y,left:5pc,number:y
set scrolloff=1
set sessionoptions=blank,buffers,curdir,folds,help,tabpages,winsize
set shiftwidth=2
set sidescroll=1
set sidescrolloff=1
set smartcase
set smarttab
set splitbelow
set splitright
set t_Co=256
set tabpagemax=50
set tabstop=2
set wildmenu
set wildignore+=*.root,*.tar.gz,*.o,*.so,*.zip,*.pdf

" neovim specifics
if has('nvim')
  set inccommand=nosplit
endif


""""""""""""""""""""""
"" Syntax highlighting
""""""""""""""""""""""
syntax on
filetype plugin indent on


"""""""""""""""""""
"" Type Definitions
"""""""""""""""""""
au BufNewFile,BufRead *.conf set filetype=cfg
au BufNewFile,BufRead *.tex set filetype=tex
au BufNewFile,BufRead *.py set foldmethod=indent
au FileType py setlocal shiftwidth=4 tabstop=4
au FileType ledger setlocal shiftwidth=4 tabstop=4


""""""""""""""""
"" Spellchecking
""""""""""""""""
if v:version >= 700
    setlocal spell spelllang=en_us
    set nospell
endif


"""""""""""
"" DiffMode
"""""""""""
if &diff
    " ignore whitespaces
    set diffopt+=iwhite
endif


""""""""""""
"" LeaderKey
""""""""""""
let mapleader = ","


"""""""""""""""""
"" Plugin Manager
"""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'rakr/vim-one'
Plug 'itchyny/lightline.vim'
Plug 'kien/ctrlp.vim'
Plug 'lilydjwg/colorizer'
Plug 'tpope/vim-surround'
Plug 'SirVer/ultisnips'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'tpope/vim-fugitive'
Plug 'weinshec/vim-dictcc'
Plug 'tpope/vim-unimpaired'
Plug 'tommcdo/vim-lion'
Plug 'tpope/vim-commentary'
Plug 'ledger/vim-ledger'
call plug#end()

runtime custom/lightline.vim
runtime custom/ctrlp.vim
runtime custom/ultisnips.vim
runtime custom/vim-cpp-enhanced-highlight.vim
runtime custom/fugitive.vim
runtime custom/vim-dictcc.vim


""""""""""""""
"" COLORSCHEME
""""""""""""""
set background=dark
colorscheme one

" activate true color support
if (has("nvim"))
  " old NEOVIM
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
if (has("termguicolors"))
  " new NEOVIM and VIM>7.4.1770
  set termguicolors
endif


""""""""""""""
"" MAPPINGS
""""""""""""""
inoremap jk <Esc>
nmap  <C-n> :nohl<CR>
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
cmap w!! w !sudo tee > /dev/null %

" neovim specifics
if has('nvim')
  tnoremap jk <C-\><C-n>
endif

"" Call custom functions
map  <F8> :call ToggleShowWidth()<CR>

"" Leader key combinations
nmap <Leader>s :set spell!<CR>
nmap <Leader>r :%s/\<<C-r><C-w>\>/
nmap <Leader>t :noautocmd vimgrep /TODO/j **/* <CR>:cw<CR>
nmap <Leader>f0 :set nofoldenable<CR>
nmap <Leader>f1 :set foldenable foldlevel=1<CR>
nmap <Leader>f2 :set foldenable foldlevel=2<CR>
nmap <Leader>f3 :set foldenable foldlevel=3<CR>

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

" Customize my fold text, behaviour and color
highlight! link Folded Comment
set foldtext=MyFoldText()

function! MyFoldText()
    if v:version < 701
      return foldtext()
    endif
    " clear fold from fillchars to set it up the way we want later
    let &l:fillchars = substitute(&l:fillchars,',\?fold:.','','gi')
    let l:numwidth = (v:version < 701 ? 8 : &numberwidth)
    let l:foldtext = '   |'.(v:foldend-v:foldstart).' lines|'
    let l:endofline = (&textwidth>0 ? &textwidth : 80)
    if &fdm=='diff'
      let l:linetext = strpart(' ---- unmodified content ----',0,l:endofline-strlen(l:foldtext))
    else
      let l:linetext = strpart(getline(v:foldstart),0,l:endofline-strlen(l:foldtext))
    endif
    let l:align = l:endofline-strlen(l:linetext)
    setlocal fillchars+=fold
    return printf('%s%*s', l:linetext, l:align, l:foldtext)
endfunction
