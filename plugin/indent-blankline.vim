if exists('g:plugs["indent-blankline.nvim"]')
  let g:indent_blankline_char = '¦'
  " let g:indent_blankline_char_list = ['|', '¦', '┆', '┊']
  let g:indent_blankline_use_treesitter = v:true
  let g:indent_blankline_filetype_exclude = ['help', 'xml']

  nmap <F6> :IndentBlanklineToggle<CR>
endif

