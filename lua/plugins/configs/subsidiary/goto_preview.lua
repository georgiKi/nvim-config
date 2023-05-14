local utils = require "core.utils"

return {
    name = "goto-preview",
    repo_path = "rmagatti/goto-preview",
    enabled = true,
    config = {},
    artifacts = function ()
        utils.keymap("n", "<leader>D", "<cmd>lua require('goto-preview').goto_preview_definition() <CR>", { desc = "Preview Definition" })
        utils.keymap("n", "<leader>I", "<cmd>lua require('goto-preview').goto_preview_implementation() <CR>", { desc = "Preview Implementation" })
        utils.keymap("n", "<leader>r", "<cmd>lua require('goto-preview').goto_preview_references() <CR>", { desc = "Preview References" })
    end
}

