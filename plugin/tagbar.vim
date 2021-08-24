if exists('g:plugs["tagbar"]') 
  nmap <F8> :TagbarToggle<CR>

  let g:tagbar_type_markdown = {
    \ 'ctagstype': 'markdown',
    \ 'kinds': [
      \ 'c:chapter:0:1',
      \ 's:section:0:1',
      \ 'S:subsection:0:1',
      \ 't:subsubsection:0:1',
      \ 'T:l4subsection:0:1',
      \ 'u:l5subsection:0:1',
    \ ],
    \ 'sro': '""',
    \ 'kind2scope': {
      \ 'c' : 'chapter',
      \ 's' : 'section',
      \ 'S' : 'subsection',
      \ 't' : 'subsubsection',
      \ 'T' : 'l4subsection',
    \ },
    \ 'scope2kind': {
      \ 'chapter' : 'c',
      \ 'section' : 's',
      \ 'subsection' : 'S',
      \ 'subsubsection' : 't',
      \ 'l4subsection' : 'T',
    \ },
  \ }

  let g:tagbar_type_vimwiki = {
    \ 'ctagstype': 'markdown',
    \ 'kinds': [
      \ 'c:chapter:0:1',
      \ 's:section:0:1',
      \ 'S:subsection:0:1',
      \ 't:subsubsection:0:1',
      \ 'T:l4subsection:0:1',
      \ 'u:l5subsection:0:1',
    \ ],
    \ 'sro': '""',
    \ 'kind2scope': {
      \ 'c' : 'chapter',
      \ 's' : 'section',
      \ 'S' : 'subsection',
      \ 't' : 'subsubsection',
      \ 'T' : 'l4subsection',
    \ },
    \ 'scope2kind': {
      \ 'chapter' : 'c',
      \ 'section' : 's',
      \ 'subsection' : 'S',
      \ 'subsubsection' : 't',
      \ 'l4subsection' : 'T',
    \ },
  \ }

endif
