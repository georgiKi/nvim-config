
return {
    repo_path = "HampusHauffman/bionic.nvim",
    priority = 950,
    enabled = true,
    lazy = true,
    event = "VeryLazy",
    artifacts = function()
        vim.cmd([[
          augroup BionicAutocmd
            autocmd!
            autocmd FileType * Bionic
          augroup END
        ]])
    end
}

