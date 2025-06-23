return {
    name = "mason-lspconfig",
    repo_path = "williamboman/mason-lspconfig.nvim",
    priority = 890,
    enabled = true,
    lazy = true,
    event = "VeryLazy",
    config = {
        ensure_installed = {
            "lua_ls",
            -- "tsserver",
            "quick_lint_js",
            "cssls",
            "cssmodules_ls",
            -- "angularls",
            "jsonls",
            -- "csharp_ls",
            "eslint"
        },
    },
    artifacts = function()
        -- Force Disable Virtual Text
        vim.api.nvim_create_autocmd("LspAttach", {
            callback = function(_)
                vim.diagnostic.config({
                    virtual_text = false,
                })
            end,
        })
    end
}
