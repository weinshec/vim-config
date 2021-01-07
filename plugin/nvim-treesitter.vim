if exists('g:plugs["nvim-treesitter"]') 

lua <<EOF
require'nvim-treesitter.configs'.setup {

  ensure_installed = {
    "cpp", "css", "html", "javascript", "json", "markdown",
    "python", "rst", "ruby", "rust", "toml", "yaml"
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

autocmd FileType cpp,python,vimwiki set foldmethod=expr
autocmd FileType cpp,python,vimwiki set foldexpr=nvim_treesitter#foldexpr()
let g:vimwiki_folding = 'custom'

endif
