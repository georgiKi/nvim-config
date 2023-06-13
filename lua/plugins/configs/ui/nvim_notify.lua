local utils = require "core.utils"

return {
    name = "notify",
    repo_path = "rcarriga/nvim-notify",
    enabled = true,
    lazy = true,
    event = "VeryLazy",
    priority = 900,
    config = {
        background_colour = "#000000",
    },
    artifacts = function()
        utils.keymap("n", "<leader>n", ":Telescope notify<cr>", { desc = "Notify History" })
    end
}
