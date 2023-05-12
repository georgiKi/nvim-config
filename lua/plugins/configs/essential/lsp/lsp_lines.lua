return {
    name = "lsp_lines",
    repo_path = "Maan2003/lsp_lines.nvim",
    enabled = true,
    config = {},
    artifacts = function()
        vim.diagnostic.config({
          virtual_text = false,
          virtual_lines = true
        })
    end
}

