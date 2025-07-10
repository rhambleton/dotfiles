return {
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            vim.cmd("colorscheme rose-pine")

            local groups = {
                "Normal", "NormalNC", "NormalFloat",
                "FloatBorder", "WinSeparator", "VertSplit",
                "StatusLine", "StatusLineNC", "EndOfBuffer",
                "LineNr", "SignColumn", "CursorLineNr"
            }

            for _, group in ipairs(groups) do
                vim.api.nvim_set_hl(0, group, { bg = "none", ctermbg = "none" })
            end
        end
        -- "folke/tokyonight.nvim",
        -- dependencies = {
        --     "nvim-tree/nvim-web-devicons",
        --     "nvim-lualine/lualine.nvim",
        -- },
        -- lazy = false,
        -- priority = 1000,
        -- opts = {},
        -- config = function()
        --     require('lualine').setup {
        --         options = {
        --             -- ... your lualine config
        --             theme = 'tokyonight-night'
        --             -- ... your lualine config
        --         }
        --     }
        --     vim.cmd.colorscheme "tokyonight-night"
        -- end
    }

}
