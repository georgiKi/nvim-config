local utils = require "core.utils"

return {
    name = "nvim-tree",
    repo_path = "kyazdani42/nvim-tree.lua",
    enabled = true,
    dependencies = "kyazdani42/nvim-web-devicons",
    configFunc = function()
        local circles = require('circles')
        circles.setup({ icons = { empty = '', filled = '', lsp_prefix = ''}})

        return {
            view = {
                adaptive_size = true,
                side = "left",
                width = 40,
            },
            renderer = {
                group_empty = true,
                 icons = {
                    glyphs = circles.get_nvimtree_glyphs(),
                },
            },
            hijack_directories = {
                auto_open = false
            }
        }
    end,
    artifacts = function()
        utils.keymap("n", "<leader>e", ":NvimTreeToggle<cr>", { desc = "File Explorer" })
        utils.keymap("n", "<leader>E", ":NvimTreeFindFile<cr>", { desc = "Find File In Explorer" })
    end
}
