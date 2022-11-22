-- alpha-nvim configuration

local setup, alpha = pcall(require, 'alpha')
if not setup then
    return
end

local dashboard = require 'alpha.themes.dashboard'
dashboard.section.header.val = {
    [[ _                            _                       _            ]],
    [[| |                          | |                     (_)           ]],
    [[| |__    __ _  ___   ___   __| | ______  _ __ __   __ _  _ __ ___  ]],
    [[| '_ \  / _` |/ __| / _ \ / _` ||______|| '_ \\ \ / /| || '_ ` _ \ ]],
    [[| |_) || (_| |\__ \|  __/| (_| |        | | | |\ V / | || | | | | |]],
    [[|_.__/  \__,_||___/ \___| \__,_|        |_| |_| \_/  |_||_| |_| |_|]],
}

dashboard.section.buttons.val = {
    dashboard.button('e', ' ' .. ' New file', ':ene<CR>'),
    dashboard.button('f', ' ' .. ' Find file', ':Telescope find_files <CR>'),
    dashboard.button('r', ' ' .. ' Recent files', ':Telescope oldfiles <CR>'),
    dashboard.button('t', ' ' .. ' Find text', ':Telescope live_grep <CR>'),
    dashboard.button('c', ' ' .. ' Config', ':e $MYVIMRC <CR>'),
    dashboard.button('q', ' ' .. ' Quit', ':qa<CR>'),
}

local function footer()
    return 'based-nvim'
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = 'Type'
dashboard.section.header.opts.hl = 'Include'
dashboard.section.buttons.opts.hl = 'Keyword'

dashboard.opts.opts.noautocmd = true

alpha.setup(dashboard.opts)
