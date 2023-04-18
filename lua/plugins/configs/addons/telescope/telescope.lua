local utils = require "core.utils"

return {
    name = "telescope",
    repo_path = "nvim-telescope/telescope.nvim",
    enabled = true,
    dependencies = "nvim-lua/plenary.nvim",
    config = {},
    artifacts = function ()
        utils.keymap(
            "n", 
            "<leader>f",
            "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>",
            { desc = "Find File" }
        )
        utils.keymap("n", "<leader>i", ":Telescope live_grep<CR>", { desc = "Live Grep" })
        utils.keymap("n", "<leader>b", ":Telescope buffers<CR>", { desc = "Buffers" })
    end
}
