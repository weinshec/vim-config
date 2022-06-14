local ok, indent = pcall(require, "indent_blankline")

if not ok then
    return
end

indent.setup {
    char = "│",
    space_char_blankline = " ",
    show_first_indent_level = true,
    filetype_exclude = {
        "log",
        "fugitive",
        "gitcommit",
        "vimwiki",
        "markdown",
        "txt",
        "help",
        "git",
        "", -- for all buffers without a file type
    },
    buftype_exclude = { "terminal", "nofile" },
    show_trailing_blankline_indent = false,
    show_current_context = true,
    context_patterns = {
        "class",
        "function",
        "method",
        "block",
        "list_literal",
        "selector",
        "^if",
        "^table",
        "if_statement",
        "while",
        "for",
    },
}

vim.keymap.set("n", "<F6>", ":IndentBlanklineToggle<CR>")
