-- nvim-tree configuration

local setup, nvimtree = pcall(require, 'nvim-tree')
if not setup then
    return
end

-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

nvimtree.setup({
    disable_netrw = false,

    view = {
        side = 'left',
        width = 26,
        hide_root_folder = true,
    },

    git = {
        enable = false,
        ignore = true,
    },

    actions = {
        open_file = {
            resize_window = true,
        },
    },

    renderer = {
        icons = {
            show = {
                folder = true,
                file = true,
                folder_arrow = true,
                git = false,
            },

            glyphs = {
                default = '',
                symlink = '',
                folder = {
                    default = '',
                    empty_open = '',
                    symlink = '',
                    symlink_open = '',
                    arrow_open = '',
                    arrow_closed = '',
                },
            },
        },

        indent_markers = {
            enable = true,
        },
    },
})
