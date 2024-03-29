if exists('g:plugs["nvim-treesitter"]') 

lua <<EOF
require'tree-sitter-just'.setup{}
require'nvim-treesitter.configs'.setup {

  ensure_installed = {
    "bash", "c", "cpp", "css", "html", "javascript", "json", "just", "ledger",
    "lua", "markdown", "python", "rst", "ruby", "rust", "toml", "yaml",
  },

  highlight = {
    enable = true
  },

  refactor = {
    -- highlight_current_scope = {
    --   enable = true
    -- },

    highlight_definitions = {
      enable = true
    },


  },

}
EOF

autocmd FileType cpp,python set foldmethod=expr
autocmd FileType cpp,python set foldexpr=nvim_treesitter#foldexpr()

endif
