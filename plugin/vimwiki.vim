if exists('g:plugs["vimwiki"]') 

  let g:vimwiki_global_ext = 0
  let g:vimwiki_list = [{
    \ 'path': '~/wiki/',
    \ 'syntax': 'markdown',
    \ 'ext': '.md',
    \ 'auto_diary_index': 1,
    \ }]
  let g:vimwiki_ext2syntax = {
    \ '.md': 'markdown',
    \ '.markdown': 'markdown',
    \ '.mdown': 'markdown'
    \}
  let g:vimwiki_markdown_link_ext = 1
  let g:vimwiki_filetypes = ['markdown']
  let g:vimwiki_auto_chdir = 1

  command! VimwikiPandoc ! pandoc -o ~/scratch/%:t:r.pdf --from markdown --template eisvogel --listings %

endif
