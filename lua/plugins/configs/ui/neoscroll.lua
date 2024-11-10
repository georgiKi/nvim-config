local utils = require "core.utils"

return {
    name = "neoscroll",
    repo_path = "karb94/neoscroll.nvim",
    enabled = true,
    lazy = true,
    event = "VeryLazy",
    config = {},
    artifacts = function()
        utils.keymap("n", "<C-y>", "<cmd> lua require('neoscroll').ctrl_u({ duration = 250 })<CR>",
            { desc = "Scroll Up" })
        utils.keymap("n", "<C-n>", "<cmd> lua require('neoscroll').ctrl_d({ duration = 250 })<CR>",
            { desc = "Scroll Down" })
    end
}
