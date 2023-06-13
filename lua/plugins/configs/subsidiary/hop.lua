local utils = require "core.utils"

return {
    name = "hop",
    repo_path = "phaazon/hop.nvim",
    enabled = true,
    lazy = true,
    event = "VeryLazy",
    config = {
        keys = "etovxqpdygfblzhckisuran"
    },
    artifacts = function()
        utils.keymap("n", "<leader>h", ":HopWord <CR>", { desc = "Hop Over" })
    end
}
