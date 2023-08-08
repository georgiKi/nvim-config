local utils = require "core.utils"

return {
    name = "telescope",
    repo_path = "nvim-telescope/telescope.nvim",
    enabled = true,
    lazy = true,
    event = "VeryLazy",
    priority = 950,
    dependencies = "nvim-lua/plenary.nvim",
    config = {},
    artifacts = function ()
        utils.keymap(
            "n",
            "<leader>f",
            "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>",
            { desc = "Find File" }
        )
        utils.keymap("n", "<leader>i", ":Telescope lsp_dynamic_workspace_symbols<CR>", { desc = "Search Symbols" })
    end
}
