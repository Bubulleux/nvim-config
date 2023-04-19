vim.keymap.set({"n", "v", "i"}, "<Left>", "<Nop>")
vim.keymap.set({"n", "v", "i"}, "<Right>", "<Nop>")
vim.keymap.set({"n", "v", "i"}, "<Up>", "<Nop>")
vim.keymap.set({"n", "v", "i"}, "<Down>", "<Nop>")
vim.keymap.set({"n", "v", "i"}, "<Esc>", "<Nop>")
vim.keymap.set("n", "<Space>", "<Nop>")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-J>", ":bnext<CR>")
vim.keymap.set("n", "<C-K>", ":bprevious<CR>")
