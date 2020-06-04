call plug#begin('~/.vim/plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'godlygeek/tabular'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf.vim'
Plug 'ledger/vim-ledger'
Plug 'Chiel92/vim-autoformat'
Plug 'sheerun/vim-polyglot'
Plug 'sirver/ultisnips'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-scripts/rfc-syntax'
Plug 'will133/vim-dirdiff'

if (has("nvim"))
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  " TODO: Remove once native LSP support is merged with neovim 0.5.0
  Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh'}
endif

if (executable("go"))
  Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
endif

call plug#end()

