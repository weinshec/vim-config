let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }


command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

" Using floating windows of Neovim to start fzf
if has('nvim-0.4.0')
  let $FZF_DEFAULT_OPTS .= '--color=bg:#20242C --border --layout=reverse'
  function! FloatingFZF()
    let width = float2nr(&columns * 0.9)
    let height = float2nr(&lines * 0.6)
    let opts = { 'relative': 'editor',
      \ 'row': (&lines - height) / 2,
      \ 'col': (&columns - width) / 2,
      \ 'width': width,
      \ 'height': height,
      \ 'style': 'minimal'
      \}

    let win = nvim_open_win(nvim_create_buf(v:false, v:true), v:true, opts)
    call setwinvar(win, '&winhighlight', 'NormalFloat:TabLine')
  endfunction

  let g:fzf_layout = { 'window': 'call FloatingFZF()' }
endif

nmap <Leader>fr :Rg <C-r><C-w><CR>
nmap <Leader>fb :Buffers<CR>
nmap <Leader>ff :Files<CR>
nmap <Leader>ft :Tags <C-r><C-w><CR>
nmap <Leader>fi :call FzfFilesImplHdrFile()<CR>


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

vim.command("call fzf#vim#files('.', {'options':'--query " + getHdrImplFilename() + "'})")

endpython
endfunc
