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
set foldlevel=99
set foldmethod=syntax
set formatoptions=tcqjn
set gdefault
set hidden
set history=1000
set ignorecase
set incsearch
set laststatus=2
set list
set listchars=tab:>\ ,trail:‧,extends:>,precedes:<,nbsp:+
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
set wildmode=list:longest,full
set wildignore+=*.root,*.tar.gz,*.o,*.so,*.zip,*.pdf,*.d,*.cmdline,*.bake

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
au FileType cpp setlocal shiftwidth=4 tabstop=4 formatexpr= formatprg=clang-format\ -style=file


""""""""""""""""
"" Spellchecking
""""""""""""""""
if v:version >= 700
    setlocal spell spelllang=en_us
    set nospell
endif

""""""""""""""""""""
"" Leader Definition
""""""""""""""""""""
let mapleader = ","


"""""""""""""""""
"" Plugin Manager
"""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'chriskempson/base16-vim'
Plug 'Yggdroot/indentLine'
Plug 'itchyny/lightline.vim'
Plug 'lilydjwg/colorizer'
Plug 'tpope/vim-surround'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-commentary'
if isdirectory(expand("~/.fzf"))
  Plug '~/.fzf'
  Plug 'junegunn/fzf.vim'
endif
if (has("nvim"))
  Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh'}
endif
call plug#end()

runtime custom/fugitive.vim
runtime custom/fzf.vim
runtime custom/lightline.vim
runtime custom/lsp.vim
runtime custom/ultisnips.vim


""""""""""""""
"" COLORSCHEME
""""""""""""""
" set background=dark
colorscheme base16-oceanicnext

" activate true color support
if (empty($TMUX))
  if (has("nvim"))
    " old NEOVIM
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    " new NEOVIM and VIM>7.4.1770
    set termguicolors
  endif
endif


"""""""""""""""""
"" NETRW SETTINGS
"""""""""""""""""
let g:netrw_banner = 0
let g:netrw_liststyle = 3


""""""""""""""
"" MAPPINGS
""""""""""""""
" remap escape key
inoremap jk <Esc>
if has('nvim')
  tnoremap jk <C-\><C-n>
endif

" navigation / views
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
map <s-h> :tabprevious<CR>
map <s-l> :tabnext<CR>
nnoremap <c-n> :nohl<CR>
nnoremap <c-q> :pclose<CR>
nnoremap <space> za
vnoremap <space> zf

" text manipulation
vnoremap < <gv
vnoremap > >gv

" custom functions
map <F8> :call ToggleShowWidth()<CR>

" Leader key combinations
nmap <Leader>s :set spell!<CR>
nmap <Leader>r :%s/\<<C-r><C-w>\>/
nmap <Leader>nf :set nofoldenable<CR>
nmap <Leader>f0 :set foldenable foldlevel=0<CR>
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
" Toggle display of 120th column
function! ToggleShowWidth()
    if &cc > 0
        let &cc = 0
        let &textwidth = 0
    else
        let &cc = 120
        let &textwidth = 119
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
