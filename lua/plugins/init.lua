local install_path = vim.fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = vim.fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
end

vim.cmd [[packadd packer.nvim]]

local ok, packer = pcall(require, "packer")
if not ok then
    return
end

packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "single" }
        end,
        prompt_border = "single",
    },
    git = {
        clone_timeout = 600,
    },
    auto_clean = true,
    compile_on_sync = false,
}

return packer.startup(function(use)
    use { "wbthomason/packer.nvim" }

    -- ui
    use { "rmehri01/onenord.nvim", config = require "plugins.configs.onenord" }
    use { "lukas-reineke/indent-blankline.nvim", config = require "plugins.configs.indent" }
    use { "nvim-lualine/lualine.nvim",
        config = require "plugins.configs.lualine",
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- syntax
    use {
        "nvim-treesitter/nvim-treesitter",
        requires = {
            "p00f/nvim-ts-rainbow",
        },
        run = ":TSUpdate",
        config = require "plugins.configs.treesitter",
    }

    -- LSP
    use {
        "neovim/nvim-lspconfig",
        config = require "plugins.configs.lsp",
    }

    -- filetypes
    use {
        "nvim-neorg/neorg",
        requires = {
            "nvim-lua/plenary.nvim",
        },
        config = require "plugins.configs.neorg",
    }

    -- utilities
    use { "junegunn/fzf",
        requires = {
            "junegunn/fzf.vim",
        },
        run = "fzf#install()",
        config = require "plugins.configs.fzf",
    }
    use { "christoomey/vim-tmux-navigator" }
    use { "tpope/vim-surround" }
    use { "tpope/vim-unimpaired" }
    use { "numToStr/Comment.nvim", config = require "plugins.configs.comment" }
    use { "sirver/ultisnips", config = require "plugins.configs.ultisnips" }
    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = require "plugins.configs.todo",
    }
    use { "tpope/vim-fugitive" }
    use { "sbdchd/neoformat",
        config = require "plugins.configs.neoformat",
    }

    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
