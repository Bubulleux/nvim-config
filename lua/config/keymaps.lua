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
map("v", "<leader>yy", '"+y')
map("n", "<leader>Y", '"+yg_')
map("n", "<leader>yu", '"+yy')


-- map("n", "<leader>p", '"+p')
-- map("n", "<leader>P", '"P')

-- map("n", "<leader>fa", ":LspZeroFormat<CR>", { desc = "Format all file" })

map("i", "£", "\\")

local keyset = vim.keymap.set

keyset("i", "<c-j>", "<Cmd>lua vim.snippet.jump(1)<CR>")
keyset({"i", "n"}, "<F4>", "<Cmd>lua vim.lsp.buf.code_action()<CR>")

keyset("n", "gd", "<Cmd>Telescope lsp_definitions<CR>", {silent = true})
keyset("n", "gy", "<Cmd>Telescope lsp_type_definitions<CR>", {silent = true})
keyset("n", "gi", "<Cmd>Telescope lsp_implementations<CR>", {silent = true})
keyset("n", "gr", "<Cmd>Telescope lsp_references<CR>", {silent = true})

vim.keymap.set("n", "<F2>", vim.lsp.buf.rename)
