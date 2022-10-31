local map = require("functions").map
local keymap = vim.keymap
-- telescope maps
map("n", "<leader>ff", [[<cmd>lua require("telescope.builtin").find_files({layout_strategy="vertical"})<CR>]])
map("n", "<leader>fg", [[<cmd>lua require("telescope.builtin").live_grep({layout_strategy="vertical"})<CR>]])

map("n", "<leader>mc", [[<cmd>lua require("telescope").extensions.metals.commands()<CR>]])

-- lsp maps
map("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>")
map("n", "<leader>b", "<cmd>lua vim.lsp.buf.definition()<CR>")
map("n", "<leader>>", "<cmd>lua vim.lsp.buf.code_action()<CR>")
map("n", "<leader>L", "<cmd>lua vim.lsp.buf.formatting()<CR>")
map("n", "<leader>p", "<cmd>lua vim.lsp.buf.signature_help()<CR>")

-- metals
map("n", "<leader>O", [[<cmd>lua require("metals").organize_imports()<CR>]])

--tree
map("n", "<leader>e", "[[<cmd>NvimTreeToggle<CR>]]")

-- lazygit
map("n", "<leader>gg","<cmd>LazyGit<CR>")

-- custom
keymap.set("i", "jk", "<ESC>") -- emulate escape with jk

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") 
