vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

require("nvim-tree").setup()

vim.keymap.set("n", "<leader>ee", ":NvimTreeFocus<CR>")
vim.keymap.set("n", "<leader>et", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>eq", ":NvimTreeCollapse<CR>")
vim.keymap.set("n", "<leader>er", ":NvimTreeRefresh<CR>")
