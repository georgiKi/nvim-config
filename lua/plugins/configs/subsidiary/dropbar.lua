local utils = require "core.utils"

return {
    name = "dropbar",
    repo_path = "Bekaboo/dropbar.nvim",
    dependencies = {
        'nvim-telescope/telescope-fzf-native.nvim'
    },
    enabled = true,
    lazy = true,
    event = "VeryLazy",
    config = {
        general = {
            attach_events = {
                'OptionSet',
                'WinEnter',
                'BufAdd',
                'BufNew',
                'BufWinEnter',
                'BufWritePost',
            },
        },
        menu = {
            win_configs = {
                border = 'rounded'
            }
        }
    },
    artifacts = function()
        utils.keymap("n", "<leader>H", "<cmd>lua require('dropbar.api').pick()<CR>", { desc = "Pick from Dropbar" })
    end
}
