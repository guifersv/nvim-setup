vim.pack.add({
	{ src = "https://codeberg.org/andyg/leap.nvim" },
	{ src = "https://github.com/chrisgrieser/nvim-spider" },
})

spider = require("spider")
vim.keymap.set({ "n", "o", "x" }, "w", function()
	spider.motion("w")
end, { noremap = true, silent = true, nowait = true })
vim.keymap.set({ "n", "o", "x" }, "e", function()
	spider.motion("e")
end, { noremap = true, silent = true, nowait = true })
vim.keymap.set({ "n", "o", "x" }, "b", function()
	spider.motion("b")
end, { noremap = true, silent = true, nowait = true })
vim.keymap.set({ "n", "o", "x" }, "ge", function()
	spider.motion("ge")
end, { noremap = true, silent = true, nowait = true })

vim.keymap.set({ "n", "x", "o" }, "s", "<Plug>(leap)")
vim.keymap.set("n", "S", "<Plug>(leap-from-window)")

vim.keymap.set({ "x", "o" }, "R", function()
	require("leap.treesitter").select({
		opts = require("leap.user").with_traversal_keys("R", "r"),
	})
end)

-- do
-- 	local function ft(key_specific_args)
-- 		require("leap").leap(vim.tbl_deep_extend("keep", key_specific_args, {
-- 			inputlen = 1,
-- 			inclusive = true,
-- 			opts = {
-- 				-- Force autojump.
-- 				labels = "",
-- 				-- Match the modes where you don't need labels (`:h mode()`).
-- 				safe_labels = vim.fn.mode(1):match("o") and "" or nil,
-- 			},
-- 		}))
-- 	end
--
-- 	-- A helper function making it easier to set "clever-f" behavior
-- 	-- (using f/F or t/T instead of ;/, - see the plugin clever-f.vim).
-- 	local clever = require("leap.user").with_traversal_keys
-- 	local clever_f, clever_t = clever("f", "F"), clever("t", "T")
--
-- 	vim.keymap.set({ "n", "x", "o" }, "f", function()
-- 		ft({ opts = clever_f, noremap = true, silent = true })
-- 	end)
-- 	vim.keymap.set({ "n", "x", "o" }, "F", function()
-- 		ft({ backward = true, opts = clever_f, noremap = true, silent = true })
-- 	end)
-- 	vim.keymap.set({ "n", "x", "o" }, "t", function()
-- 		ft({ offset = -1, opts = clever_t, noremap = true, silent = true })
-- 	end)
-- 	vim.keymap.set({ "n", "x", "o" }, "T", function()
-- 		ft({ backward = true, offset = 1, opts = clever_t, noremap = true, silent = true })
-- 	end)
-- end

vim.keymap.set({ "n", "x", "o" }, "|", function()
	local line = vim.fn.line(".")
	-- Skip 3-3 lines around the cursor.
	local top, bot = unpack({ math.max(1, line - 3), line + 3 })
	require("leap").leap({
		pattern = "\\v(%<" .. top .. "l|%>" .. bot .. "l)$",
		windows = { vim.fn.win_getid() },
		opts = { safe_labels = "" },
	})
end)
