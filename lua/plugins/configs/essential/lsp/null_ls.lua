local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
return {
    name = "null-ls",
    repo_path = "jose-elias-alvarez/null-ls.nvim",
    priority = 900,
    enabled = false,
    config = {
        on_attach = function(client, bufnr)
            if client.supports_method("textDocument/formatting") then
                vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
                vim.api.nvim_create_autocmd("BufWritePre", {
                    group = augroup,
                    buffer = bufnr,
                    callback = function()
                        vim.lsp.buf.formatting_seq_sync()
                    end
                })
            end
        end
    },
    artifacts = function (plugin)
        plugin.setup {
            sources = {
                plugin.builtins.formatting.prettier,
                plugin.builtins.completion.spell,
                plugin.builtins.completion.luasnip,
                plugin.builtins.completion.tags
                -- nullLs.builtins.diagnostics.eslint,
                -- nullLs.builtins.formatting.prettier_d_slim
            }
        }
    end
}
