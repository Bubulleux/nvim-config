local map = vim.keymap.set

map({ "n", "v", "i" }, "<Left>", "<Nop>")
map({ "n", "v", "i" }, "<Right>", "<Nop>")
map({ "n", "v", "i" }, "<Up>", "<Nop>")
map({ "n", "v", "i" }, "<Down>", "<Nop>")
map({ "n", "v", "i" }, "<Esc>", "<Nop>")
map("n", "<Space>", "<Nop>")

map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

map("n", "gg", "ggzz")
map("n", "G", "Gzz")

map("n", "n", "nzz")
map("n", "N", "Nzz")

map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

map("v", "<S-Tab>", "<gv")
map("v", "<Tab>", ">gv")

map("n", "<C-J>", ":bnext<CR>")
map("n", "<C-K>", ":bprevious<CR>")

-- Copy to clipboard
map("v", "<leader>y", '"+y')
map("n", "<leader>Y", '"+yg_')
map("n", "<leader>y", '"+y')
map("n", "<leader>yy", '"+yy')


-- map("n", "<leader>p", '"+p')
-- map("n", "<leader>P", '"P')

map("n", "<leader>fa", ":LspZeroFormat<CR>", { desc = "Format all file" })

map("i", "£", "\\")
