-- general editor settings

local opt = vim.opt
local g = vim.g

-- tabs / indenting settings
opt.expandtab = true
opt.smartindent = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4

-- numbers
opt.number = true
opt.relativenumber = true

-- line wrapping / scrolloff
opt.wrap = false
opt.scrolloff = 8

-- search settings
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true

-- apperance
opt.signcolumn = "yes"
opt.laststatus = 2
opt.cmdheight = 2

-- misc
opt.errorbells = false
opt.updatetime = 150
opt.timeoutlen = 300

-- split defaults
opt.splitbelow = true
opt.splitright = true

-- use system clipboard
opt.clipboard:append("unnamedplus")

-- gui mouse stuff
opt.mouse = "a"
opt.guicursor = ""

-- disable messages and nvim startup screen
opt.shortmess:append "sIc"

-- disable backups / swapfiles
opt.backup = false
opt.swapfile = false
