local utils = require "core.utils"

return {
    name = "bookmarks",
    repo_path = "LintaoAmons/bookmarks.nvim",
    dependencies = {
        "kkharji/sqlite.lua",
        "nvim-telescope/telescope.nvim",
        "stevearc/dressing.nvim"
    },
    enabled = true,
    lazy = true,
    event = "VeryLazy",
    config = {
        signs = {
            mark = {
                icon = "󰃁",
                color = "#93AEC5",
                line_bg = "#293D4D",
            },
        },
        treeview = {
            window_split_dimension = 40
        }
    },
    artifacts = function()
        utils.keymap("n", "<leader>ba", "<cmd>BookmarksMark<CR>",
            { desc = "Bookmarks Add" })
        utils.keymap("n", "<leader>be", "<cmd>BookmarksTree<CR>",
            { desc = "Bookmarks Tree" })
        utils.keymap("n", "<leader>bg", "<cmd>BookmarksGoto<CR>",
            { desc = "Bookmarks Go to" })
        utils.keymap("n", "<leader>bn", "<cmd>BookmarksGotoNext<CR>",
            { desc = "Bookmarks Go To Next" })
        utils.keymap("n", "<leader>bp", "<cmd>BookmarksGotoPrev<CR>",
            { desc = "Bookmarks Go To Prev" })
    end
}
