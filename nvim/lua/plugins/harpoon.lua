return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = false,
    config = function()
        local harpoon = require("harpoon")
        ---@diagnostic disable-next-line: missing-parameter
        harpoon:setup()
        local function map(lhs, rhs, opts)
            vim.keymap.set("n", lhs, rhs, opts or {})
        end
        map("<leader>a", function() harpoon:list():append() end, { desc = "Append to Harpoon" })
        map("<leader>h", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Toggle Harpoon Menu" })
        map("<c-h><c-h>", function() harpoon:list():select(1) end)
        map("<c-h><c-j>", function() harpoon:list():select(2) end)
        map("<c-h><c-k>", function() harpoon:list():select(3) end)
        map("<c-h><c-l>", function() harpoon:list():select(4) end)
    end
}
