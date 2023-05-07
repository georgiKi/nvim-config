local utils = require "core.utils"

return {
    name = "nvim-tree",
    repo_path = "kyazdani42/nvim-tree.lua",
    enabled = true,
    dependencies = "kyazdani42/nvim-web-devicons",
    config = {
        view = {
           adaptive_size = false,
           side = "left",
           width = 40,
       },
       renderer = {
           group_empty = true,
       },
       hijack_directories = {
           auto_open = false
       }
    },
    artifacts = function()
        utils.keymap("n", "<leader>e", ":NvimTreeToggle<cr>", { desc = "File Explorer" })
        utils.keymap("n", "<leader>E", ":NvimTreeFindFile<cr>", { desc = "Find File In Explorer" })
    end
}
