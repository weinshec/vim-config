local ok, onenord = pcall(require, "onenord")

if not ok then
    return
end

onenord.setup {}
