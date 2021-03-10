if exists('g:plugs["indent-blankline.nvim"]')
  let g:indent_blankline_char = '¦'
  " let g:indent_blankline_char_list = ['|', '¦', '┆', '┊']
  let g:indent_blankline_use_treesitter = v:true
  let g:indent_blankline_filetype_exclude = ['help', 'xml']
  let g:indent_blankline_show_first_indent_level = v:false

  nmap <F6> :IndentBlanklineToggle<CR>
endif

