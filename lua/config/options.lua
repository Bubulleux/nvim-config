local opt = vim.opt

opt.number = true
opt.relativenumber = true

opt.wrap = false

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

opt.scrolloff = 8

opt.colorcolumn = "80"


-- vim.cmd.colorscheme("catppuccin_macchiato")

opt.pastetoggle = "<F3>"

opt.hlsearch = false
opt.incsearch = true

opt.mouse = ""

opt.cursorline = true

-- opt.list = true
-- opt.listchars:append "lead:⋅"
-- opt.listchars:append "nbsp:%"
-- opt.listchars:append "extends:>"
-- opt.listchars:append "precedes:<"

opt.exrc = true

opt.wildmode = "longest:full,full"

opt.clipboard = "unnamedplus"
