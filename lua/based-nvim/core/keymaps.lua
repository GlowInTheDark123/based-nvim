-- editor keymaps

local g = vim.g
local keymap = vim.keymap

g.mapleader = " "
g.localmapleader = " "

-- general keymaps

keymap.set("n", "<leader>nh", "<cmd>nohl<CR>")

-- split management
keymap.set("n", "<leader>sv", "<C-w>v") -- vertical split
keymap.set("n", "<leader>sh", "<C-w>s") -- horizontal split
keymap.set("n", "<leader>sx", "<cmd>close<CR>") -- close split 

-- better window navigation
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-l>", "<C-w>l")

-- buffer navigation
keymap.set("n", "<S-l>", "<cmd>bnext<CR>")
keymap.set("n", "<S-h>", "<cmd>bprevious<CR>")

-- move text through lines in v-mode
keymap.set("x", "J", "<cmd>m '>+1<CR>gv=gv")
keymap.set("x", "K", "<cmd>m '<-2<CR>gv=gv")

-- plugin keymaps

-- nvim-transparent
keymap.set("n", "<leader>b", "<cmd>TransparentToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>")
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")
