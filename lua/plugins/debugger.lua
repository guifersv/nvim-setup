vim.pack.add({
	"https://github.com/mfussenegger/nvim-dap",
	"https://github.com/rcarriga/nvim-dap-ui",
	"https://github.com/nvim-neotest/nvim-nio",
	"https://github.com/leoluz/nvim-dap-go",
})

local set = vim.keymap.set

dap = require("dap")

set("n", "<leader>db", dap.toggle_breakpoint, { desc = "Breakpoint" })
set("n", "<leader>dc", dap.continue, { desc = "Continue" })
set("n", "<leader>di", dap.step_into, { desc = "Step Into" })
set("n", "<leader>do", dap.step_over, { desc = "Step Over" })
set("n", "<leader>dO", dap.step_out, { desc = "Step Out" })

require("dapui").setup()

dapui = require("dapui")

set("n", "<leader>dd", dapui.toggle, { desc = "UI Toggle" })

dap.listeners.before.attach.dapui_config = function()
	dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
	dapui.open()
end
