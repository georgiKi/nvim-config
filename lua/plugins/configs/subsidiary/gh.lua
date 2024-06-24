local utils = require "core.utils"

return {
    repo_path = "ldelossa/gh.nvim",
    enabled = false,
    lazy = true,
    event = "UIEnter",
    dependencies = { "ldelossa/litee.nvim" },
    artifacts = function ()
       require('litee.lib').setup()
       require('litee.gh').setup({ icon_set = "nerd" })

       utils.keymap("n", "<leader>Go", ":GHOpenPR <CR>", { desc = "Open PR" })
       utils.keymap("n", "<leader>Gx", ":GHClosePR <CR>", { desc = "Close PR" })
       utils.keymap("n", "<leader>Gr", ":GHRefreshPR <CR>", { desc = "Refresh PR" })
       utils.keymap("n", "<leader>Gt", ":GHCreateThread <CR>", { desc = "Create Thread" })
       utils.keymap("n", "<leader>Gw", ":GHStartReview <CR>", { desc = "Start Review" })
       utils.keymap("n", "<leader>Gs", ":GHSubmitReview <CR>", { desc = "Submit Review" })
    end
}
