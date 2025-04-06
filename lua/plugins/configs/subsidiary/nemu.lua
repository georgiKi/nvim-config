local utils = require "core.utils"

return {
    name = "namu",
    repo_path = "bassamsdata/namu.nvim",
    enabled = true,
    lazy = true,
    event = "VeryLazy",
    config = {
        keys = "etovxqpdygfblzhckisuran"
    },
    artifacts = function()
        utils.keymap("n", "<leader>q", ":Namu symbols<cr>", { desc = "Jump to LSP symbol" })
    end
}
