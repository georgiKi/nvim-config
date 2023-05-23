local utils = require "core.utils"

return {
    name = "close_buffers",
    repo_path = "kazhala/close-buffers.nvim",
    enabled = true,
    config = {},
    artifacts = function ()
        utils.keymap("n", "<leader>Bo", "<cmd>lua require('close_buffers').wipe({ type = 'other' }) <CR>", { desc = "Wipe all buffers except the current" })
        utils.keymap("n", "<leader>Ba", "<cmd>lua require('close_buffers').wipe({ type = 'all', force = true }) <CR>", { desc = "Wipe all buffers" })
    end
}
