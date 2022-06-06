if exists('g:plugs["fzf.vim"]')
  let g:fzf_action = {
    \ 'ctrl-t': 'tab split',
    \ 'ctrl-s': 'split',
    \ 'ctrl-v': 'vsplit' }

  let $FZF_DEFAULT_OPTS="--bind shift-up:preview-half-page-up,shift-down:preview-half-page-down"

  let g:fzf_layout = { 'down': '50%' }
  let g:fzf_preview_window = ['right:50%', 'ctrl-/']

  nmap <Leader>rr :Rg <C-r><C-w><CR>
  nmap <Leader>rg :GRg <C-r><C-w><CR>
  nmap <Leader>fb :Buffers<CR>
  nmap <Leader>ff :Files<CR>
  nmap <Leader>fg :GFiles<CR>
  nmap <Leader>fi :call FzfFilesImplHdrFile()<CR>

  if (executable("proximity-sort"))
    function! s:list_cmd()
      let base = fnamemodify(expand('%'), ':h:.:S')
      return base == '.' ? 'fd -t f' : printf('fd -t f | proximity-sort %s', expand('%'))
    endfunction

    command! -bang -nargs=? -complete=dir Files
      \ call fzf#vim#files(<q-args>,
      \   fzf#vim#with_preview({'source': s:list_cmd(), 'options': '--tiebreak=index'}))
  endif

  command! -bang -nargs=* GRg
    \ call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'dir': system('git -C '.expand('%:p:h').' rev-parse --show-toplevel 2> /dev/null')[:-2]}, <bang>0)

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
