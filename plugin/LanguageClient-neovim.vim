if exists('g:plugs["LanguageClient-neovim"]') 
  let g:LanguageClient_hasSnippetSupport=1
  let g:LanguageClient_serverCommands = {
      \ 'python': ['pyls'],
      \ }
endif
