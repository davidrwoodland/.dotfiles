return {
  {
    "stevearc/oil.nvim",
    config = function ()
      require("oil").setup({
        default_file_explorer = true,
        win_options = {
          number = false,
        },
        view_options = {
            show_hidden = true,
                },

        delete_to_trash = true,
        skip_confirm_for_simple_edits = true,
        trash_command = "trash",
      })
    end
  },
  { -- we need gx cos oil.nvim disables netrw which provided gx
    "chrishrb/gx.nvim",
    event = { "BufEnter" },
    dependencies = { "nvim-lua/plenary.nvim" },
    config = true, -- default settings
  },
}

