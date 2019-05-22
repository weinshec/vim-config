nmap <Leader>fa :Ag <C-r><C-w><CR>
nmap <Leader>fb :Buffers<CR>
nmap <Leader>ff :Files<CR>
nmap <Leader>ft :Tags <C-r><C-w><CR>
nmap <Leader>fi :call FzfFilesImplHdrFile()<CR>

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }


function! FzfFilesImplHdrFile()
python << endpython

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
