return {
    {
        "folke/tokyonight.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
            "nvim-lualine/lualine.nvim",
        },
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
            require("tokyonight").setup({
                -- style = "night"
            })
            require('lualine').setup {
                options = {
                    -- ... your lualine config
                    theme = 'tokyonight-night'
                    -- ... your lualine config
                }
            }
            vim.cmd.colorscheme "tokyonight-night"
        end
    }

}
