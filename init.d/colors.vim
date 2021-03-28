set background=dark
set t_Co=256


if (has("nvim-0.5"))
  let g:nvcode_termcolors=256
  colorscheme nord
else
  colorscheme nord
endif

" activate true color support
if (has("nvim"))
  " old NEOVIM
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
if (has("termguicolors"))
  " new NEOVIM and VIM>7.4.1770
  set termguicolors
endif

" highlight yanked text
if (has("nvim-0.5"))
  augroup highlight_yank
      autocmd!
      autocmd TextYankPost * lua require'vim.highlight'.on_yank({
            \ higroup="Search", timeout=1000})
  augroup END
endif

highlight! link Folded Comment
