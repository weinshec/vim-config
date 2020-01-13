let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }


command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)


nmap <Leader>fa :Rg <C-r><C-w><CR>
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
