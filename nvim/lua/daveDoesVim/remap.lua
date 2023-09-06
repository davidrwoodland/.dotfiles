vim.g.mapleader = " "

--Previous View
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--Split Screen
vim.keymap.set("n", "<leader>sv", "<C-w>v") -- Split Vertical
vim.keymap.set("n", "<leader>sh", "<C-w>s") -- Split Horizontal 
vim.keymap.set("n", "<leader>se", "<C-w>=") -- Make Equal
vim.keymap.set("n", "<leader>sx", ":close<CR>") -- Close Current
