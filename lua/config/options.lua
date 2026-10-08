local opt = vim.opt

opt.number = true
opt.relativenumber = true

opt.wrap = false

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = false
-- opt.autoindent = true
-- opt.smartindent = true
-- opt.signcolumn = 'yes'

opt.scrolloff = 8

opt.colorcolumn = "80"


-- vim.cmd.colorscheme("catppuccin_macchiato")

-- opt.pastetoggle = "<F3>"

opt.hlsearch = false
opt.incsearch = true

-- opt.mouse = ""

opt.cursorline = true


-- opt.list = true
-- opt.listchars:append "lead:⋅"
-- opt.listchars:append "nbsp:%"
-- opt.listchars:append "extends:>"
-- opt.listchars:append "precedes:<"

opt.exrc = true

opt.wildmode = "longest:full,full"

-- opt.clipboard = "unnamedplus"
opt.signcolumn="yes:2"

vim.lsp.enable('clangd')
vim.lsp.enable('luals')
vim.lsp.enable('eslint')

vim.lsp.enable('svelte')
vim.lsp.enable('ts_ls')

local base_on_attach = vim.lsp.config.eslint.on_attach
vim.lsp.config("eslint", {
  on_attach = function(client, bufnr)
    if not base_on_attach then return end

    base_on_attach(client, bufnr)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      command = "LspEslintFixAll",
    })
  end,
})
