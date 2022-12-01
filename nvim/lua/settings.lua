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
vim.g.mapleader = ' '
