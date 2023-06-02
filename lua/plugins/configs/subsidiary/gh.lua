local utils = require "core.utils"

return {
    repo_path = "ldelossa/gh.nvim",
    enabled = true,
    dependencies = { "ldelossa/litee.nvim" },
    artifacts = function ()
       require('litee.lib').setup()
       require('litee.gh').setup({ icon_set = "nerd" })

       utils.keymap("n", "<leader>Go", ":GHOpenPR <CR>", { desc = "Open PR" })
       utils.keymap("n", "<leader>Gc", ":GHCreateThread <CR>", { desc = "Create PR Thread" })
       utils.keymap("n", "<leader>Gx", ":GHClosePR <CR>", { desc = "Close PR" })
    end
}
