local ok, indent = pcall(require, "neorg")

if not ok then
    return
end

neorg.setup {
    load = {
        ["core.defaults"] = {}
    }
}
