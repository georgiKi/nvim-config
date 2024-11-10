local utils = require "core.utils"

return {
    name = "triptych",
    repo_path = "simonmclean/triptych.nvim",
    dependencies = { 'nvim-lua/plenary.nvim' },
    enabled = true,
    lazy = true,
    event = "VeryLazy",
    config = {
        options = {
            backdrop = 100,
            show_hidden = true
        }
    },
    artifacts = function()
        utils.keymap("n", "<leader>e", ":Triptych<CR>", { desc = "Toggle File System" })
    end
}
