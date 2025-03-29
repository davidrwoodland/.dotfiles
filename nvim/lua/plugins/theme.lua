return {
    "sainnhe/gruvbox-material",
    priority = 1000,
    lazy = false,
    config = function()
        -- Set Gruvbox Material options
        vim.g.gruvbox_material_background = 'hard' -- Options: 'soft', 'medium', 'hard'
        vim.g.gruvbox_material_palette = 'material' -- Options: 'original', 'mix', 'material'
        vim.g.gruvbox_material_better_performance = 1

        -- Apply the colorscheme
        vim.cmd('colorscheme gruvbox-material')
    end
}
