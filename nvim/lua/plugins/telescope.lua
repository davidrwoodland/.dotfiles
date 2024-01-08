local vimgrep_arguments = { "-L" }

local config = function()
	local telescope = require("telescope")
	telescope.setup({
		defaults = {
            vimgrep_arguments = vimgrep_arguments,
			mappings = {
				i = {
					["<C-j>"] = "move_selection_next",
					["<C-k>"] = "move_selection_previous",
				},
			},
		},
		pickers = {
			find_files = {
                find_command = { "rg", "--files", "--hidden", "--follow", "-L" },
				theme = "dropdown",
				previewer = true,
				hidden = true,
			},
			live_grep = {
				theme = "dropdown",
				previewer = true,
			},
			buffers = {
				theme = "dropdown",
				previewer = true,
			},
		},
	})
end

return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    lazy = false,
    config = config,
    keys = {
        vim.api.nvim_set_keymap('n', '<leader>ff', [[<Cmd>lua require('telescope.builtin').find_files({ follow = true })<CR>]], { noremap = true, silent = true }),
        vim.api.nvim_set_keymap('n', '<leader>fg', [[<Cmd>lua require('telescope.builtin').git_files()<CR>]], { noremap = true, silent = true }),
        vim.api.nvim_set_keymap('n', '<leader>ps', [[<Cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep > ") })<CR>]], { noremap = true, silent = true }),
        vim.api.nvim_set_keymap('n', '<leader>fh', [[<Cmd>lua require('telescope.builtin').help_tags()<CR>]], { noremap = true, silent = true }),
        vim.api.nvim_set_keymap('n', '<leader>fb', [[<Cmd>lua require('telescope.builtin').buffers()<CR>]], { noremap = true, silent = true }),
    },
}

