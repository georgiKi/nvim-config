local utils = require "core.utils"

return {
    name = "pretty_hover",
    repo_path = "Fildo7525/pretty_hover",
    enabled = true,
    lazy = true,
    event = "LspAttach",
    config = {
        max_width = 120
    },
    artifacts = function()
        utils.keymap("n", "<leader>p", "<cmd> lua require('pretty_hover').hover()<CR>", { desc = "LSP Hover" })
    end
}
