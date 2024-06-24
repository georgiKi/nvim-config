local utils = require "core.utils"

return {
    name = "toggleterm",
    repo_path = "akinsho/toggleterm.nvim",
    enabled = true,
    lazy = true,
    event = "VeryLazy",
    config = {},
    artifacts = function()
        utils.keymap("n", "<leader>m", ":ToggleTerm <CR>", { desc = "Toggle Terminal" })
    end
}
