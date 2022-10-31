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
map("n", "<leader>tt", "[[<cmd>NvimTreeToggle<CR>]]")

-- lazygit
map("n", "<leader>gg","<cmd>LazyGit<CR>")

-- custom

keymap.set("i", "jk", "<ESC>") -- emulate escape with jk
