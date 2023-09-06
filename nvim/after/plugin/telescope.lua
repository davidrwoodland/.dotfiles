-- Define vimgrep_arguments as a Lua table
local vimgrep_arguments = { "-L" }

-- Load Telescope
local telescope = require('telescope.builtin')

-- Set up key mappings
vim.api.nvim_set_keymap('n', '<leader>ff', [[<Cmd>lua require('telescope.builtin').find_files({ follow = true })<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fg', [[<Cmd>lua require('telescope.builtin').git_files()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ps', [[<Cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep > ") })<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fh', [[<Cmd>lua require('telescope.builtin').help_tags()<CR>]], { noremap = true, silent = true })

-- Configure Telescope
require('telescope').setup({
  defaults = {
    vimgrep_arguments = vimgrep_arguments,
    -- Your other Telescope defaults here
  },
  pickers = {
    find_files = {
        find_command = { "rg", "--files", "--hidden", "--follow", "-L" },
      -- Your other find_files picker settings here
    },
    -- Your other picker configurations here
  },
})

