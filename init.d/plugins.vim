call plug#begin('~/.vim/plugged')

Plug 'christoomey/vim-tmux-navigator'
Plug 'godlygeek/tabular'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ledger/vim-ledger'
Plug 'Chiel92/vim-autoformat'
Plug 'sirver/ultisnips'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-scripts/rfc-syntax'
Plug 'will133/vim-dirdiff'
Plug 'vimwiki/vimwiki'
Plug 'plasticboy/vim-markdown'
Plug 'preservim/nerdtree'

if (has("nvim-0.5"))
  Plug 'neovim/nvim-lsp'
  Plug 'nvim-treesitter/nvim-treesitter'
  Plug 'lukas-reineke/indent-blankline.nvim', { 'branch': 'lua' }
  Plug 'christianchiarulli/nvcode-color-schemes.vim'
  Plug 'sindrets/diffview.nvim'
else
  Plug 'arcticicestudio/nord-vim'
endif

if (executable("go"))
  Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
endif

call plug#end()
