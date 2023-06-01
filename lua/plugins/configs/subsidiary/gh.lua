return {
    repo_path = "ldelossa/gh.nvim",
    enabled = true,
    dependencies = { "ldelossa/litee.nvim" },
    artifacts = function ()
       require('litee.lib').setup()
       require('litee.gh').setup({ icon_set = "nerd" })
    end
}
