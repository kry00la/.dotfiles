local startup = require("startup")

startup.create_mappings({
	["<leader>ff"] = "<cmd>Telescope find_files<CR>",
	["<leader>lg"] = "<cmd>Telescope live_grep<CR>",
})

startup.setup()
