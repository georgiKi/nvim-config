local utils = require "core.utils"

return {
    repo_path = "weilbith/nvim-code-action-menu",
    enabled = true,
    artifacts = function()
        utils.keymap("n", "<leader>z", ":CodeActionMenu <CR>", { desc = "Code Action" })
    end
}

