set background=dark
set t_Co=256

colorscheme nord

" activate true color support
if (has("nvim"))
  " old NEOVIM
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
if (has("termguicolors"))
  " new NEOVIM and VIM>7.4.1770
  set termguicolors
endif

" highlight! link Folded Comment
