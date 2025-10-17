local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    -- bootstrap lazy.nvim
    -- stylua: ignore
    vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable",
        lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = "ù"

 require("lazy").setup({
      spec = {
          { import = "plugins" },
      },
     -- defaults = {
     --     lazy = false,
     -- },
     -- install = { colorscheme = { "catppuccin_macchiato", "habamax" }},
 })
