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

" highlight yanked text for 1.5s
if (has("nvim-0.5"))
  augroup highlight_yank
      autocmd!
      autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank("IncSearch", 1500)
  augroup END
endif

highlight! link Folded Comment
