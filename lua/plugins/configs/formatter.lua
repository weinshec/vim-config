local ok, formatter = pcall(require, "formatter")

if not ok then
    return
end

local util = require "formatter.util"

formatter.setup {
  -- Enable or disable logging
  logging = true,
  -- Set the log level
  log_level = vim.log.levels.WARN,
  -- All formatter configurations are opt-in
  filetype = {
    cpp = {
      -- require("formatter.defaults.clangformat")
      function()
        return {
          exe = "clang-format",
          args = {
            "-style=file",
            "-assume-filename",
            util.escape_path(util.get_current_buffer_file_name()),
          },
          stdin = true,
          try_node_modules = true,
      }
      end
    },

    python = {
      function()
        return {
            exe = "black",
            args = { "-q", "-" },
            stdin = true,
        }
      end
    },

    rust = {
      function()
        return {
            exe = "rustfmt",
            args = {"--edition 2021"},
            stdin = true,
        }
      end
    },

    -- Use the special "*" filetype for defining formatter configurations on
    -- any filetype
    ["*"] = {
      -- "formatter.filetypes.any" defines default configurations for any
      -- filetype
      require("formatter.filetypes.any").remove_trailing_whitespace
    }
  }
}

vim.keymap.set("n", "<leader>gq", ":Format<CR>")
