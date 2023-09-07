return {
    {
        'VonHeikemen/lsp-zero.nvim',
        branch       = 'v2.x',
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        },
        config       = function()
            vim.opt.signcolumn = "yes"

            local lsp = require('lsp-zero').preset({
                manage_nvim_cmp = {
                    set_sources = 'recommended',
                    set_basic_mappings = true,
                    set_extra_mappings = true,
                }
            })

            lsp.on_attach(function(client, bufnr)
                lsp.default_keymaps({
                    buffer = bufnr,
                    preserve_mappings = false,
                })
            end)

            lsp.set_sign_icons({
                error = '✘',
                warn = '▲',
                hint = '⚑',
                info = '»'
            })

            require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

            lsp.setup()

            vim.diagnostic.config({
                update_in_insert = true,
                virtual_text = true,
            })
        end,
    }
}
