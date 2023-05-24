local utils = require "core.utils"

return {
    name = "toggleterm",
    repo_path = "akinsho/toggleterm.nvim",
    enabled = true,
    config = {},
    artifacts = function()
        utils.keymap("n", "<leader>h", ":HopWord <CR>", { desc = "Hop Over" })
    end
}
