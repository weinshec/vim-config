if exists('g:plugs["vim-clang-format"]') 
  let g:clang_format#detect_style_file = 1
  let g:clang_format#auto_formatexpr = 0
  let g:clang_format#enable_fallback_style = 0

  vmap gq :ClangFormat<CR>
endif
