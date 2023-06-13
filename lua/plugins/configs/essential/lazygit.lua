local utils = require "core.utils"

return {
    repo_path = "kdheepak/lazygit.nvim",
    enabled = true,
    lazy = true,
    event = "VeryLazy",
    artifacts = function()
        utils.keymap("n", "<leader>g", ":LazyGit<cr>", { desc = "Git" })
    end
}
