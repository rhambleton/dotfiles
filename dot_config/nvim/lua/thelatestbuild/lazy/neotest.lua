return {
    {
        "nvim-neotest/neotest",
        dependencies = {
            "nvim-neotest/nvim-nio",
            "fredrikaverpil/neotest-golang",
            "nvim-lua/plenary.nvim",
            "antoinemadec/FixCursorHold.nvim",
            "nvim-treesitter/nvim-treesitter"
        },
        config = function()
            require("neotest").setup({
                output = {
                    enabled = true,
                    open_on_run = true,
                },
                adapters = {
                    require("neotest-golang")({
                        go_test_args = {
                            "-v", "-count=1"
                        },
                        dap = { justMyCode = false },
                    }),
                },
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

            vim.keymap.set("n", "<leader>td", function()
                require("neotest").run.run({
                    suite = false,
                    testify = true,
                    strategy = "dap",
                })
            end, { desc = "Debug: Debug Nearest Test" })
        end
    }
}
