return {
    name = "neotest",
    repo_path = "nvim-neotest/neotest",
    enabled = true,
    lazy = true,
    event = "VeryLazy",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
        "antoinemadec/FixCursorHold.nvim",
        "haydenmeade/neotest-jest"
    },
    configFunc = function ()
       return {
            adapters = {
                require("neotest-jest")({
                  jestCommand = "npm test --",
                  jestConfigFile = "custom.jest.config.ts",
                  env = { CI = true },
                  cwd = function()
                    return vim.fn.getcwd()
                  end,
                }),
            }
        }
    end
}
