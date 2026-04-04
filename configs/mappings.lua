local set = vim.keymap.set

-- ── File & Session Management ────────────────────────────────────
set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })
set("n", "<leader>q", "<cmd>qa<cr>", { desc = "Close All" })
set("n", "<leader>Q", "<cmd>qa!<cr>", { desc = "Force Close All" })
set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- ── General Editor Behavior ──────────────────────────────────────
set("i", "jk", "<Esc>")
set("i", "<C-h>", "<Left>", { desc = "move left" })
set("i", "<C-l>", "<Right>", { desc = "move right" })
set("i", "<C-j>", "<Down>", { desc = "move down" })
set("i", "<C-k>", "<Up>", { desc = "move up" })

-- ── Window Navigation & Resizing ─────────────────────────────────
set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

set("n", "<C-Up>", "<cmd>resize +4<cr>", { desc = "Increase Window Height" })
set("n", "<C-Down>", "<cmd>resize -4<cr>", { desc = "Decrease Window Height" })
set("n", "<C-Left>", "<cmd>vertical resize -4<cr>", { desc = "Decrease Window Width" })
set("n", "<C-Right>", "<cmd>vertical resize +4<cr>", { desc = "Increase Window Width" })

-- ── Terminal Mode ────────────────────────────────────────────────
set("t", "<C-x>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
set("t", "<C-h>", [[<Cmd>wincmd h<CR>]])
set("t", "<C-j>", [[<Cmd>wincmd j<CR>]])
set("t", "<C-k>", [[<Cmd>wincmd k<CR>]])
set("t", "<C-l>", [[<Cmd>wincmd l<CR>]])

-- ── Tab Management ───────────────────────────────────────────────
set("n", "<leader><tab><tab>", "<cmd>tabnew<cr>", { desc = "New Tab" })
set("n", "<leader><tab>o", "<cmd>tabonly<cr>", { desc = "Close Other Tabs" })
set("n", "<leader><tab>c", "<cmd>tabclose<cr>", { desc = "Close Tab" })
set("n", "<leader><tab>f", "<cmd>tabfirst<cr>", { desc = "First Tab" })
set("n", "<leader><tab>t", "<cmd>tablast<cr>", { desc = "Last Tab" })
set("n", "<leader><tab>l", "<cmd>tabnext<cr>", { desc = "Next Tab" })
set("n", "<leader><tab>h", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

set("n", "<leader>?", function()
	require("which-key").show({ global = false })
end, { desc = "Buffer Local Keymaps (which-key)" })
set("n", "<leader>lf", function()
	require("conform").format({ async = true, lsp_format = "fallback" })
end, { desc = "Format buffer" })
