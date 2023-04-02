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


lsp.ensure_installed({
    "clangd",
    "pylsp",
    "cmake",
    "sumneko_lua",
    "html",
    "cssls",
    "tsserver",
})

lsp.setup()

vim.diagnostic.config({
    update_in_insert = true,
    virtual_text = true,
})
