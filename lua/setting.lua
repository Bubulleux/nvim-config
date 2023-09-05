vim.o.number = true
vim.o.relativenumber = true

vim.o.wrap = false

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.smartindent = true

vim.o.scrolloff = 8

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.cmd.colorscheme("catppuccin_macchiato")

vim.o.pastetoggle = "<F3>"

vim.o.hlsearch = false
vim.o.incsearch = true

vim.o.mouse = ""

vim.o.cursorline = true

vim.opt.list = true
vim.opt.listchars:append "lead:⋅"
vim.opt.listchars:append "nbsp:%"
vim.opt.listchars:append "extends:>"
vim.opt.listchars:append "precedes:<"

vim.o.exrc = true

vim.o.wildmode = "longest:full,full"

vim.opt.clipboard = "unnamedplus"
