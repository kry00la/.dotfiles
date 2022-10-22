local autosave = require("autosave")
local contains = require("functions").contains
autosave.hook_before_saving = function()
	if not contains({ "scala", "sbt" }, vim.bo.filetype) then
		vim.g.auto_save_abort = true -- abort saving non scala filles
	end
end

autosave.setup({
	enabled = true,
	execution_message = "AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"),
	events = { "InsertLeave", "TextChanged" },
	conditions = {
		exists = true,
		filename_is_not = {},
		filetype_is_not = {},
		modifiable = true,
	},
	write_all_buffers = false,
	on_off_commands = true,
	clean_command_line_interval = 0,
	debounce_delay = 135,
})