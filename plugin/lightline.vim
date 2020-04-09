if exists('g:plugs["lightline.vim"]') 
  let g:lightline = {
        \ 'colorscheme': 'one',
        \ 'active': {
        \   'left': [ [ 'mode', 'paste' ],
        \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
        \ },
        \ 'component': {
        \   'readonly': '%{&filetype=="help"?"":&readonly?"<RO>":""}',
        \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
        \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
        \ },
        \ 'component_function': {
        \   'filename': 'LightlineFilename',
        \ },
        \ 'component_visible_condition': {
        \   'readonly': '(&filetype!="help"&& &readonly)',
        \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
        \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
        \ },
        \ }

  function! LightlineFilename()
    return expand('%')

    " Use the version below to show rel path to git project root
    "
    " let root = fnamemodify(get(b:, 'git_dir'), ':h')
    " let path = expand('%:p')
    " if path[:len(root)-1] ==# root
    "   return path[len(root)+1:]
    " endif
    " return expand('%')
  endfunction

endif

