-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
        -- Packer can manage itself
        use 'wbthomason/packer.nvim'

        use {
            'nvim-telescope/telescope.nvim', tag = '0.1.1',
            -- or                            , branch = '0.1.x',
            requires = { { 'nvim-lua/plenary.nvim' } }
        }

        -- Color Schemes
        use("catppuccin/nvim")
        use("bluz71/vim-moonfly-colors")
        use("Shatur/neovim-ayu")
        use("ellisonleao/gruvbox.nvim")
        use("rebelot/kanagawa.nvim")

        -- vim.cmd.colorscheme 'catppuccin-mocha'

        use {
            'nvim-lualine/lualine.nvim',
            requires = { 'kyazdani42/nvim-web-devicons', opt = true }
        }

        use "lukas-reineke/indent-blankline.nvim"

        use {
            'numToStr/Comment.nvim',
            config = function()
                require('Comment').setup()
            end
        }

        -- Which Key - Shows possible keybinds
        use {
            "folke/which-key.nvim",
            config = function()
                vim.o.timeout = true
                vim.o.timeoutlen = 300
                require("which-key").setup {
                    -- config
                }
            end
        }

        use {
            'norcalli/nvim-colorizer.lua',
        }

        use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
        use('nvim-treesitter/playground')

        use('theprimeagen/harpoon')
        use('theprimeagen/vim-be-good')

        use('mbbill/undotree')
        use('tpope/vim-fugitive')
        use('MunifTanjim/prettier.nvim')

        -- fun
        use('eandrju/cellular-automaton.nvim')

        -- lsp
        use {
            'VonHeikemen/lsp-zero.nvim',
            ebranch = 'v1.x',
            requires = {
                -- LSP Support
                { 'neovim/nvim-lspconfig' }, -- Required
                { 'williamboman/mason.nvim' }, -- Optional
                { 'williamboman/mason-lspconfig.nvim' }, -- Optional

                -- Autocompletion
                { 'hrsh7th/nvim-cmp' }, -- Required
                { 'hrsh7th/cmp-nvim-lsp' }, -- Required
                { 'hrsh7th/cmp-buffer' }, -- Optional
                { 'hrsh7th/cmp-path' }, -- Optional
                { 'saadparwaiz1/cmp_luasnip' }, -- Optional
                { 'hrsh7th/cmp-nvim-lua' }, -- Optional

                -- Snippets
                { 'L3MON4D3/LuaSnip' }, -- Required
                { 'rafamadriz/friendly-snippets' }, -- Optional
            }
        }
    end)
