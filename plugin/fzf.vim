if exists('g:plugs["fzf.vim"]')
  let g:fzf_action = {
    \ 'ctrl-t': 'tab split',
    \ 'ctrl-s': 'split',
    \ 'ctrl-v': 'vsplit' }


  nmap <Leader>fr :Rg <C-r><C-w><CR>
  nmap <Leader>fb :Buffers<CR>
  nmap <Leader>ff :Files<CR>
  nmap <Leader>fg :GFiles<CR>
  nmap <Leader>fi :call FzfFilesImplHdrFile()<CR>
  nmap <Leader>ft :Tags <C-r><C-w><CR>

  if (executable("proximity-sort"))
    function! s:list_cmd()
      let base = fnamemodify(expand('%'), ':h:.:S')
      return base == '.' ? 'fd -t f' : printf('fd -t f | proximity-sort %s', expand('%'))
    endfunction

    command! -bang -nargs=? -complete=dir Files
      \ call fzf#vim#files(<q-args>,
      \   fzf#vim#with_preview({'source': s:list_cmd(), 'options': '--tiebreak=index'}, <bang>0))
  endif
endif


function! FzfFilesImplHdrFile()
python3 << endpython

import vim
from os import path

extmap = {
    ".cpp": ".h",
    ".h": ".cpp",
}

def getFilenameFromBuffer(buffer):
    fullname = buffer.name
    return path.basename(fullname)

def getHdrImplFilename():
    currentFile = getFilenameFromBuffer(vim.current.buffer)
    name, ext = path.splitext(currentFile)
    return "{}{}".format(name, extmap.get(ext, ext))

vim.command("call fzf#vim#files('.', fzf#vim#with_preview({'options': '--tiebreak=index --query " + getHdrImplFilename() + "'}))")

endpython
endfunc
