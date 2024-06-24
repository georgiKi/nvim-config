local utils = require "core.utils"

vim.o.sessionoptions="buffers"

return {
    name = "auto-session",
    repo_path = "rmagatti/auto-session",
    enabled = true,
    lazy = true,
    event = "VeryLazy",
    config = {
        log_level = "error",
    },
    artifacts = function ()
        utils.keymap("n", "<leader>s", "<cmd>:SessionRestore<cr>", { desc = "Restore Previous Session" })
    end
}
