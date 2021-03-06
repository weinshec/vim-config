if exists('g:plugs["nvim-lsp"]')

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

  nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
  nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
  nnoremap <silent> ]d    <cmd>lua vim.lsp.diagnostic.goto_next { wrap = false }<CR>
  nnoremap <silent> [d    <cmd>lua vim.lsp.diagnostic.goto_prev { wrap = false }<CR>

  nnoremap <silent> gh    <cmd>lua vim.lsp.buf.signature_help()<CR>


endif
