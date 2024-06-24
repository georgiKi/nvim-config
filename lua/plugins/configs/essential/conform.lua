return {
    name = "conform",
    repo_path = "stevearc/conform.nvim",
    enabled = true,
    lazy = true,
    event = "VeryLazy",
    config = {
        formatters_by_ft = {
            javascript = { { "prettierd", "prettier" }, "eslint_d" },
        },
        format_on_save = {
            timeout_ms = 500,
            lsp_fallback = true,
        },
    }
}
