vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
	    'nvim-telescope/telescope.nvim', tag = '0.1.0',
	    -- or                            , branch = '0.1.x',
  	    requires = { {'nvim-lua/plenary.nvim'} }
    }

    use('sainnhe/gruvbox-material')
    use({ 'rose-pine/neovim', as = 'rose-pine' })

    use {
        'xiantang/darcula-dark.nvim',
        requires = {"nvim-treesitter/nvim-treesitter"}
    }

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('nvim-treesitter/playground')
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('kdheepak/lazygit.nvim')

    use({
        'jose-elias-alvarez/null-ls.nvim',
        config = function()
            require('null-ls').setup()
        end,
        requires = { 'nvim-lua/plenary.nvim' },
    })

    use {
        'VonHeikemen/lsp-zero.nvim',
  	    requires = {
    	    -- LSP Support
    	    {'neovim/nvim-lspconfig'},
    		{
                'williamboman/mason.nvim',
                opts = {
                    ensure_installed = {
                        "pyright",
                        "isort",
                    }
                },
            },
    		{'williamboman/mason-lspconfig.nvim'},

    		-- Autocompletion
    		{'hrsh7th/nvim-cmp'},
    		{'hrsh7th/cmp-buffer'},
    		{'hrsh7th/cmp-path'},
    		{'saadparwaiz1/cmp_luasnip'},
    		{'hrsh7th/cmp-nvim-lsp'},
    		{'hrsh7th/cmp-nvim-lua'},

    		-- Snippets
    		{'L3MON4D3/LuaSnip'},
    		{'rafamadriz/friendly-snippets'},
  	    }
    }

    use('ray-x/go.nvim')
    -- use('stsewd/isort.nvim')
    use('nvim-lualine/lualine.nvim')

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    use {
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup()
        end
    }

    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    }

end)
