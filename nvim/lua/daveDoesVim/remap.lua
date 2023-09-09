vim.g.mapleader = " "

--Previous View
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--Split Screen
vim.keymap.set("n", "<leader>sv", "<C-w>v") -- Split Vertical
vim.keymap.set("n", "<leader>sh", "<C-w>s") -- Split Horizontal 
vim.keymap.set("n", "<leader>se", "<C-w>=") -- Make Equal
vim.keymap.set("n", "<leader>sx", ":close<CR>") -- Close Current

--Resize windows
vim.keymap.set("n", "=", [[<cmd>vertical resize +5<cr>]]) -- make the window biger vertically
vim.keymap.set("n", "-", [[<cmd>vertical resize -5<cr>]]) -- make the window smaller vertically
vim.keymap.set("n", "+", [[<cmd>horizontal resize +2<cr>]]) -- make the window bigger horizontally by pressing shift and =
vim.keymap.set("n", "_", [[<cmd>horizontal resize -2<cr>]]) -- make the window smaller horizontally by pressing shift and -

