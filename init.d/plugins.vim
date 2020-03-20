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
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'ledger/vim-ledger'
Plug 'rhysd/vim-clang-format'
Plug 'christoomey/vim-tmux-navigator'
Plug 'will133/vim-dirdiff'
Plug 'godlygeek/tabular'

if (has("nvim"))
  Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh'}
endif

call plug#end()

