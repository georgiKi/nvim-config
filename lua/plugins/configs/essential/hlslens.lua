local utils = require "core.utils"

return {
    name = "hlslens",
    repo_path = "kevinhwang91/nvim-hlslens",
    enabled = true,
    lazy = true,
    event = "VeryLazy",
    config = {},
    artifacts = function()
        utils.keymap('n', 'n', [[<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>]])
        utils.keymap('n', 'N', [[<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>]])
        utils.keymap('n', '<leader>l', '<Cmd>noh<CR>', { desc = "Exit In File Search" })
    end
}
