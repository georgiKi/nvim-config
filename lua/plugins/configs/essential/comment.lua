local utils = require "core.utils"

return {
    name = "Comment",
    repo_path = "numToStr/Comment.nvim",
    enabled = true,
    config = {},
    artifacts = function() 
        utils.keymap("n", "<leader>c", "<cmd>lua require('Comment.api').toggle.linewise.current()<cr>", { desc = "Toggle Comment" })
        utils.keymap("v", "<leader>c", "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>", { desc = "Toggle Comment" })
    end
}
