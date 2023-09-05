require("mason").setup()

require("mason-lspconfig").setup({
    ensure_installed = {
        "clangd",
        "pylsp",
        "cmake",
        "sumneko_lua",
        "html",
        "cssls",
        "tsserver",
        "pyflake",
    }
})
