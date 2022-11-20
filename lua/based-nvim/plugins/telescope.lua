-- telescope configuration

local setup, telescope = pcall(require, 'telescope')
if not setup then
    return
end

telescope.setup({
    defaults = {
        prompt_prefix = '$ ',
        selection_caret = '> ',
        path_display = { 'smart' },
    },
})
