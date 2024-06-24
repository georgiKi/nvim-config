local utils = require "core.utils"

return {
    name = "hover",
    repo_path = "lewis6991/hover.nvim",
    enabled = true,
    lazy = true,
    event = "UIEnter",
    configFunc = function ()
       return {
           init = function()
                require("hover.providers.lsp")
            end,
            title = false,
            preview_opts = {
                border = 'rounded'
            },
       }
    end,
    artifacts = function ()
        utils.keymap("n", "<leader>p", "<cmd>lua require('hover').hover()<CR>", { desc = "Hover" })
    end
}
