if exists('g:plugs["diffview.nvim"]')

lua << EOF
  local cb = require'diffview.config'.diffview_callback

  require'diffview'.setup {
    diff_binaries = false,    -- Show diffs for binaries
    use_icons = false,        -- Requires nvim-web-devicons
    file_panel = {
      width = 35
    },
    key_bindings = {
      -- The `view` bindings are active in the diff buffers, only when the current
      -- tabpage is a Diffview.
      view = {
        ["]q"]        = cb("select_next_entry"),  -- Open the diff for the next file 
        ["[q"]        = cb("select_prev_entry"),  -- Open the diff for the previous file
        ["<F5>"]      = cb("toggle_files"),       -- Toggle the files panel.
      },
      file_panel = {
        ["j"]         = cb("next_entry"),         -- Bring the cursor to the next file entry
        ["k"]         = cb("prev_entry"),         -- Bring the cursor to the previous file entry.
        ["<cr>"]      = cb("select_entry"),       -- Open the diff for the selected entry.
        ["R"]         = cb("refresh_files"),      -- Update stats and entries in the file list.
        ["]q"]        = cb("select_next_entry"),  -- Open the diff for the next file 
        ["[q"]        = cb("select_prev_entry"),  -- Open the diff for the previous file
        ["<F5>"]      = cb("toggle_files"),       -- Toggle the files panel.
      }
    }
  }
EOF

endif
