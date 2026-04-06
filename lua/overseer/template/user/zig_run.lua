return {
	name = "zig run file",
	builder = function()
		local file = vim.fn.expand("%:p")
		return {
			cmd = { "zig", "run", file },
		}
	end,
	condition = {
		filetype = { "zig" },
	},
}
