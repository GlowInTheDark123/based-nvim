-- lsp configuration

local setup, lsp = pcall(require, 'lspconfig')
if not setup then
    return
end

require('based-nvim.plugins.lsp.mason')
require('based-nvim.plugins.lsp.handlers').setup()
