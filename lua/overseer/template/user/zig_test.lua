return {
	name = "zig test file",
	builder = function()
		local file = vim.fn.expand("%:p")
		return {
			cmd = { "zig", "test", file },
			components = {
				{ "on_output_quickfix", open = true },
				"default",
			},
		}
	end,
	condition = {
		filetype = { "zig" },
	},
}
