call plug#begin('~/.vim/plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'Chiel92/vim-autoformat'
Plug 'christoomey/vim-tmux-navigator'
Plug 'godlygeek/tabular'
Plug 'itchyny/lightline.vim'
Plug 'ledger/vim-ledger'
Plug 'sirver/ultisnips'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vimwiki/vimwiki'
Plug 'weinshec/vim-dictcc'
Plug 'will133/vim-dirdiff'
Plug 'm42e/trace32-practice.vim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'

if (has("nvim-0.5"))
  Plug 'lukas-reineke/indent-blankline.nvim'
  Plug 'neovim/nvim-lsp'
  Plug 'nvim-treesitter/nvim-treesitter'
  Plug 'IndianBoy42/tree-sitter-just'
endif

if (executable("go"))
  Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
endif

if (executable("ctags"))
  Plug 'majutsushi/tagbar'
endif

call plug#end()
