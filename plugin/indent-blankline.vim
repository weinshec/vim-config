if exists('g:plugs["indent-blankline.nvim"]')
  let g:indent_blankline_char = '|'
  " let g:indent_blankline_char_list = ['|', '¦', '┆', '┊']
  let g:indent_blankline_use_treesitter = v:true
  let g:indent_blankline_filetype_exclude = ['help', 'xml']
  let g:indent_blankline_show_first_indent_level = v:false
  let g:indent_blankline_show_trailing_blankline_indent = v:false

  " WORKAROUND: until fix of https://github.com/neovim/neovim/issues/14209
  " see also: https://github.com/lukas-reineke/indent-blankline.nvim/issues/59
  set colorcolumn=99999

  nmap <F6> :IndentBlanklineToggle<CR>
endif

