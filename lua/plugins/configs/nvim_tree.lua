local utils = require "lua.core.utils"

return {
    name = "nvim-tree",
    repo_path = "kyazdani42/nvim-tree.lua",
    enabled = true,
    dependancies = {"kyazdani42/nvim-web-devicons"},
    config = {
        view = {
            adaptive_size = false,
            side = "left",
            width = 40,
            mappings = {
                list = {
                    { key = "u", action = "dir_up" },
                },
            },
        },
        renderer = {
            group_empty = true,
        },
        hijack_directories = {
            auto_open = false
        } 
    },
    artifacts = 
        function() 
            utils.keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
        end
}
