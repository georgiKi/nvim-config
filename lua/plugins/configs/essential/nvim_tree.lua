local utils = require "core.utils"

return {
    name = "nvim-tree",
    repo_path = "kyazdani42/nvim-tree.lua",
    enabled = true,
    lazy = true,
    event = "VeryLazy",
    dependencies = "kyazdani42/nvim-web-devicons",
    configFunc = function()
        local circles = require('circles')
        circles.setup({ icons = { empty = '', filled = '', lsp_prefix = '' } })

        return {
            sync_root_with_cwd = true,
            respect_buf_cwd = true,
            view = {
                adaptive_size = false,
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
            },
            update_focused_file = {
                enable = true,
                update_root = false
            }
        }
    end,
    artifacts = function()
        utils.keymap("n", "<leader>e", ":NvimTreeToggle<cr>", { desc = "File Explorer" })
        utils.keymap("n", "<leader>E", ":NvimTreeFindFile<cr>", { desc = "Find File In Explorer" })
    end
}
