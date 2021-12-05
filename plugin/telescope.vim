if exists('g:plugs["telescope.nvim"]') 

lua <<EOF

-- You dont need to set any of these options. These are the default ones. Only
-- the loading is important
require('telescope').setup {
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  }
}
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')

EOF

" nmap <Leader>fr <cmd>Telescope grep_string<cr>
nmap <expr> <Leader>fr '<cmd>Telescope grep_string<cr>' . "'" . expand('<cword>')
nmap <Leader>fR <cmd>Telescope live_grep<cr>
nmap <Leader>fb <cmd>Telescope buffers<cr>
nmap <Leader>ff <cmd>Telescope find_files<cr>
nmap <expr> <Leader>fi '<cmd>Telescope find_files<cr>' . "'" . ImplHeaderFile()
nmap <Leader>fg <cmd>Telescope git_files<cr>


function! ImplHeaderFile()
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

vim.command("let implHeaderFile = '{}'".format(getHdrImplFilename()))

endpython
return implHeaderFile
endfunc


endif
