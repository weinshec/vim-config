local utils = require "utils"

vim.g.mapleader = ","

vim.cmd [[filetype plugin indent on]]

local options = {
    clipboard = "unnamed",
    completeopt = "menu",
    cursorline = true,
    expandtab = true,
    fileencoding = "utf-8",
    hidden = true,
    ignorecase = true,
    laststatus = 3,
    mouse = "a",
    number = true,
    pumheight = 10,
    relativenumber = true,
    scrolloff = 5,
    shiftround = true,
    shiftwidth = 2,
    showmode = false,
    sidescrolloff = 5,
    signcolumn = "yes",
    smartcase = true,
    smartindent = true,
    splitbelow = true,
    splitright = true,
    swapfile = false,
    tabstop = 2,
    termguicolors = true,
    textwidth = 100,
    undodir = "/tmp/.nvimdid",
    undofile = true,
    updatetime = 250,
    wrap = false,
}
for key, value in pairs(options) do
    vim.opt[key] = value
end

vim.opt.diffopt:append("linematch:60")

utils.setSpacesSize {
    cmake = 2,
	lua = 4,
	go = 4,
	python = 4, 
	rust = 4, 
	cpp = 4, 
	c = 4
}
