
return {
    name = "easyread",
    repo_path = "JellyApple102/easyread.nvim",
    priority = 950,
    enabled = true,
    lazy = true,
    event = "VeryLazy",
    config = {},
    artifacts = function()
        vim.cmd([[
          augroup Easyreadcmd
            autocmd!
            autocmd FileType * EasyreadToggle
          augroup END
        ]])
    end
}

