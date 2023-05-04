local utils = require "core.utils"

return {
    repo_path = "kdheepak/lazygit.nvim",
    enabled = true,
    artifacts = function()
        utils.keymap("n", "<leader>g", ":LazyGit<cr>", { desc = "Git" })
    end
}
