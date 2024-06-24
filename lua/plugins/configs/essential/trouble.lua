local utils = require "core.utils"

return {
    name = "trouble",
    repo_path = "folke/trouble.nvim",
    enabled = true,
    lazy = true,
    event = "VeryLazy",
    dependencies = "kyazdani42/nvim-web-devicons",
    config = {
        icons = true
    },
    artifacts = function()
        utils.keymap('n', '<leader>t', '<cmd>TroubleToggle<cr>', { desc = "Toggle Trouble" })
    end
}
