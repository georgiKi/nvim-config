local utils = require "core.utils"

return {
    repo_path = "aznhe21/actions-preview.nvim",
    enabled = true,
    lazy = true,
    event = "VeryLazy",
    artifacts = function()
        utils.keymap(
            "n",
            "<leader>z",
            "<cmd>lua require('actions-preview').code_actions()<cr>",
            { desc = "Code Actions" }
        )
    end
}
