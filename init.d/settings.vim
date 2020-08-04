syntax on
filetype plugin indent on

set autoindent
set autoread
set backspace=2
set clipboard=unnamedplus
set completeopt+=menuone
set completeopt+=noinsert
set conceallevel=0
set cursorline
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
set inccommand=split
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
set relativenumber
set scrolloff=1
set sessionoptions=blank,buffers,curdir,folds,help,tabpages,winsize
set shiftwidth=2
set sidescroll=1
set sidescrolloff=1
set smartcase
set smarttab
set splitbelow
set splitright
set tabpagemax=50
set tabstop=2
set textwidth=100
set wildignore+=*.root,*.tar.gz,*.o,*.so,*.zip,*.pdf,*.d,*.cmdline,*.bake
set wildmenu
set wildmode=list:longest,full

" spellchecking
if v:version >= 700
    setlocal spell spelllang=en_us
    set nospell
endif

" absolute linenumbers in diff views
if &diff
  set norelativenumber
endif
