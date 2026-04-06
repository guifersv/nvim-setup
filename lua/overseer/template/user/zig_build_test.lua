return {
	name = "zig build test",
	builder = function()
		return {
			cmd = { "zig", "build", "test" },
			cwd = vim.fn.expand("%:p:h"),
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
