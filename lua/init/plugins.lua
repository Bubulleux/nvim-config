vim.cmd.packadd("packer.nvim")
return require('packer').startup(function(use)
    -- Package manager
    use 'wbthomason/packer.nvim'

    -- Vim motion game
    use "ThePrimeagen/vim-be-good"

    -- Colorsheme
    use "EdenEast/nightfox.nvim"

    -- Fuzzy finder
    use {
        "nvim-telescope/telescope.nvim", tag = "0.1.0",
        requires = { { "nvim-lua/plenary.nvim" } }
    }

    -- Git integration
    use { "/tpope/vim-fugitive" }

    -- Highlighting
    use { "nvim-treesitter/nvim-treesitter",  run = ":TSUpdate" }

    -- Status line
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- Comment line
    use { 'numToStr/Comment.nvim' }

    -- Witch keys
    use { "folke/which-key.nvim" }

    -- File tree
    use { 'nvim-tree/nvim-tree.lua' }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = "v2.x",
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
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
end)

