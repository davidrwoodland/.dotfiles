local config = function()
    require('lualine').setup({
        options = {
            theme = 'auto',
            globalstart = true,
        },
    })
end

return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    lazy = false,
    config = config,
}
