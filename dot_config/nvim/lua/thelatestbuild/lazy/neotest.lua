return {
    {
        "nvim-neotest/neotest",
        dependencies = {
            "nvim-neotest/nvim-nio",
            "nvim-neotest/neotest-go",
            "nvim-lua/plenary.nvim",
            "antoinemadec/FixCursorHold.nvim",
            "nvim-treesitter/nvim-treesitter"
        },
        config = function()
            require("neotest").setup({
                adapters = {
                    require("neotest-go")({
                        experimental = {
                            test_table = true,
                        },
                        args = { "-count=1", "-timeout=60s" }
                    })
                }
            })
            vim.keymap.set("n", "<leader>tt", function()
                require("neotest").run.run()
            end, { desc = "Run Nearest Test" })

            vim.keymap.set("n", "<leader>to", function()
                require("neotest").output.open()
            end, { desc = "Debug: Open test output" })

            vim.keymap.set("n", "<leader>ts", function()
                require("neotest").summary.toggle()
            end, { desc = "Debug: Summary Toggle" })
        end
    }
}
