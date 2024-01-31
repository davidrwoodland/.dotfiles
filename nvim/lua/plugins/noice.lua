return {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
        routes = {
            {
                filter = { event = "notify", find = "No information available" },
                opts = { skip = true },
            },
        },
        presets = {
            lsp_doc_border = true,
        },
        mini = {
            win_options = {
                winblend = 0,
            }
        }
    },
    dependencies = {
        -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
        "MunifTanjim/nui.nvim",
        -- OPTIONAL:
        --   `nvim-notify` is only needed, if you want to use the notification view.
        --   If not available, we use `mini` as the fallback
        "rcarriga/nvim-notify",
    },
    vim.keymap.set("n", "<leader>nd", "<cmd>Noice Dismiss<cr>", { desc = "Dismiss Noice Message" }),
    vim.keymap.set("n", "<leader>nh", "<cmd>Noice History<cr>", { desc = "Telescope Noice History" }),
}
