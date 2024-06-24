local utils = require "core.utils"

return {
    repo_path = "weilbith/nvim-code-action-menu",
    enabled = true,
    lazy = true,
    event = "VeryLazy",
    artifacts = function()
        vim.g.code_action_menu_window_border = "rounded";
        utils.keymap("n", "<leader>z", ":CodeActionMenu <CR>", { desc = "Code Action" })
    end
}

