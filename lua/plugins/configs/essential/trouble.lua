local utils = require "core.utils"

return {
    name = "trouble",
    repo_path = "folke/trouble.nvim",
    enabled = true,
    lazy = true,
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = {},
    artifacts = function()
        utils.keymap('n', '<leader>t', '<cmd>Trouble diagnostics toggle<cr>', { desc = "Trouble Diagnostics" })
    end
}
