if exists('g:plugs["nvim-lsp"]')

  " global config
lua << EOF
vim.diagnostic.config({
    virtual_text = false,
    signs = true,
    float = { border = "single" },
})
EOF

  " rust
  if executable("rust-analyzer")
lua << EOF
local lsp = require'lspconfig'
lsp.rust_analyzer.setup {
    settings = {
        ["rust-analyzer"] = {
          diagnostics = {
              enable = true,
              disabled = {"unresolved-proc-macro"},
          },
        }
    }
}
EOF
    autocmd Filetype rust setlocal omnifunc=v:lua.vim.lsp.omnifunc
  endif

  " cpp
  if executable("clangd") && filereadable("compile_commands.json")
    lua require'lspconfig'.clangd.setup({})
    autocmd Filetype cpp setlocal omnifunc=v:lua.vim.lsp.omnifunc
  endif

  " mappings
  nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
  nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
  nnoremap <silent> gh    <cmd>lua vim.lsp.buf.signature_help()<CR>

  nnoremap <silent> ]d    <cmd>lua vim.diagnostic.goto_next()<CR>
  nnoremap <silent> [d    <cmd>lua vim.diagnostic.goto_prev()<CR>
  nnoremap <silent> <leader>dq <cmd>lua vim.diagnostic.setqflist()<CR>
  nnoremap <silent> <leader>dl <cmd>lua vim.diagnostic.setloclist()<CR>


endif
