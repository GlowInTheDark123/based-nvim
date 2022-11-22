local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

-- reload packer whenever you save this file
vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugin-setup.lua source <afile> | PackerSync
    augroup end
]])

local packer_bootstrap = ensure_packer()

local status, packer = pcall(require, 'packer')
if not status then
    return
end

return packer.startup(function(use)
    use 'wbthomason/packer.nvim'

    -- colorscheme
    use 'ellisonleao/gruvbox.nvim'
    use { 
        'catppuccin/nvim', 
        as = 'catppuccin',
    }

    -- useful plugins
    use 'nvim-lua/plenary.nvim' 
    use 'nvim-lua/popup.nvim' 

    -- telescope
    use {
        'nvim-telescope/telescope.nvim',
        config = function() 
            require('based-nvim.plugins.telescope')
        end,
    }

    -- transparent
    use {
        'xiyaowong/nvim-transparent',
        config = function()
            require('based-nvim.plugins.transparent')
        end,
    }

    -- comments
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end,
    }

    -- automatically pair brackets, parenthesis, etc.
    use {
        'windwp/nvim-autopairs',
        config = function() 
            require('nvim-autopairs').setup()
        end,
    }

    -- startup screen
    use {
        'goolord/alpha-nvim',
        requires = {
            'nvim-tree/nvim-web-devicons', -- for file icons
        },
        config = function ()
            require('based-nvim.plugins.alpha')
        end,
    }

    -- completion
    use {
        'hrsh7th/nvim-cmp',
        requires = {
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-cmdline',
        },
        config = function() 
            require('based-nvim.plugins.cmp')
        end,
    }

    -- nvim-treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = function() 
            require('based-nvim.plugins.treesitter')
        end,
    }

    -- file explorer
    use { 
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- for file icons
        },
        config = function() 
            require('based-nvim.plugins.nvim-tree')
        end,
    }

    -- status line
    use {
        'nvim-lualine/lualine.nvim',
        requires = {
            'nvim-tree/nvim-web-devicons', -- for file icons
        },
        config = function() 
            require('based-nvim.plugins.lualine')
        end,
    }

    -- terminals in neovim
    use  {
        'akinsho/toggleterm.nvim',
        config = function() 
            require('based-nvim.plugins.toggleterm')
        end,
    }
    
    if packer_bootstrap then
        require('packer').sync()
    end
end)
