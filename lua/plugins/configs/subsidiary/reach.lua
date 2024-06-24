local utils = require "core.utils"

return {
    name = "reach",
    repo_path = "toppair/reach.nvim",
    enabled = true,
    lazy = true,
    event = "VeryLazy",
    config = {
        keys = "etovxqpdygfblzhckisuran"
    },
    artifacts = function()
        utils.keymap("n", "<leader>b", "<cmd> lua require('reach').buffers(buffer_options) <CR>", { desc = "Buffers" })
    end
}
