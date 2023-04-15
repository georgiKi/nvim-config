local utils = require "core.utils"

return {
    name = "symbols-outline",
    repo_path = "simrat39/symbols-outline.nvim",
    enabled = true,
    config = {
        width = 15,
        show_symbol_details = false
    },
    artifacts = function() 
        utils.keymap("n", "<leader>o", ":SymbolsOutline<cr>", { desc = "Outline Tree" })
    end
}
