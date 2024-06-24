local utils = require "core.utils"

return {
    name = "blame",
    repo_path = "FabijanZulj/blame.nvim",
    enabled = true,
    lazy = true,
    event = "VeryLazy",
    config = {},
    artifacts = function ()
        utils.keymap("n", "<leader>Gb", ":BlameToggle window<CR>", { desc = "Toggle Git Blame" })
    end
}
