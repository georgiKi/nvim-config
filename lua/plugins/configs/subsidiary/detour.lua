local utils = require "core.utils"

return {
    repo_path = "carbon-steel/detour.nvim",
    enabled = true,
    lazy = true,
    event = "VeryLazy",
    artifacts = function ()
        utils.keymap("n", "<leader>dd", "<cmd>lua require('detour').Detour() vim.lsp.buf.definition()<CR>", { desc = "Go To Definition" })
        utils.keymap("n", "<leader>db", "<cmd>:close<CR>", { desc = "Back To Previous File" })
    end
}
