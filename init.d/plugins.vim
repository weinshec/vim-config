call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'lilydjwg/colorizer'
Plug 'tpope/vim-surround'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-commentary'
Plug 'vim-scripts/rfc-syntax'
Plug 'arcticicestudio/nord-vim'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf.vim'
Plug 'ledger/vim-ledger'
Plug 'rhysd/vim-clang-format'
Plug 'christoomey/vim-tmux-navigator'
Plug 'will133/vim-dirdiff'
Plug 'godlygeek/tabular'

if (has("nvim"))
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  " TODO: Remove once native LSP support is merged with neovim 0.5.0
  Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh'}
endif

call plug#end()

