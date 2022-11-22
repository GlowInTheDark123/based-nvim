-- nvim-transparent config

local setup, transparent = pcall(require, 'transparent')
if not setup then
    return
end

transparent.setup({
    extra_groups = {
        "NvimTreeNormal",
    }
})
