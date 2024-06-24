local utils = require "core.utils"

return {
    name = "outline",
    repo_path = "hedyhli/outline.nvim",
    enabled = true,
    lazy = true,
    event = "VeryLazy",
    config = {
        width = 15,
        show_symbol_details = false
    },
    artifacts = function()
        utils.keymap("n", "<leader>o", ":Outline<cr>", { desc = "Outline Tree" })
    end
}
