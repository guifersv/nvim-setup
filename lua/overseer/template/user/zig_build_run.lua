return {
	name = "zig build run",
	builder = function()
		return {
			cmd = { "zig", "build", "run" },
			cwd = vim.fn.expand("%:p:h"),
		}
	end,
	condition = {
		filetype = { "zig" },
	},
}
