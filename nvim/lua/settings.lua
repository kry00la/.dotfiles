vim.o.cursorline = true
vim.o.wildignore = "*/node_modules/*,*/.git/*,DS_Store,*/venv/*,*/__pycache__/*,*.pyc,*/target"
vim.o.relativenumber = true
vim.o.number = true
-- -- Autocmds
-- -- highlight yank for a brief second for visual feedback
vim.api.nvim_create_autocmd("TextYankPost", {
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({ on_visual = false })
	end,
})

vim.opt.clipboard = "unnamedplus"
vim.g.mapleader = " "

vim.opt.tabstop = 4
vim.opt.softtabstop = 4

vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
