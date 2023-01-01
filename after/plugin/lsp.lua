vim.opt.signcolumn = "yes"

local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed({
    "clangd",
    "pylsp",
    "cmake",
    "sumneko_lua",
})

lsp.setup()

vim.diagnostic.config({update_in_insert = true,})
