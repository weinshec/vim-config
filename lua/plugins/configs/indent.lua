local ok, ibl = pcall(require, "ibl")

if not ok then
    return
end

ibl.setup {
    indent = {
        char = "│",
    },
    exclude = {
        filetypes = {
            "log",
            "fugitive",
            "gitcommit",
            "vimwiki",
            "markdown",
            "txt",
            "text",
            "help",
            "git",
            "", -- for all buffers without a file type
        },
        buftypes = {
            "terminal",
            "nofile",
        },
    },
}
