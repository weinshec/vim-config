local ok, nordic = pcall(require, "nordic")

if not ok then
    return
end

nordic.load {}
