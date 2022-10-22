local M = {}

--[[
* mode (as in Vim modes like Normal/Insert mode)
* lhs (the custom keybinds you need)
* rhs (the commands or existing keybinds to customise)
* opts (additional options like <silent>/<noremap>, see :h map-arguments for more info on it)
 --]]
function M.map(mode, lhs, rhs, opts)
	local options = { noremap = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

--[[
* retuns true if one of the values contains the same as x
]]
--
function M.contains(list, x)
	for _, v in pairs(list) do
		if v == x then
			return true
		end
	end
	return false
end

return M
