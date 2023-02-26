local status_ok, nullLs = pcall(require, "null-ls")
if not status_ok then
  return
end

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

nullLs.setup({
    sources = {
        -- nullLs.builtins.formatting.prettier,
        nullLs.builtins.completion.spell,
        nullLs.builtins.completion.luasnip,
        nullLs.builtins.completion.tags
        -- nullLs.builtins.diagnostics.eslint,
        -- nullLs.builtins.formatting.prettier_d_slim
    },
    -- Format on save
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
})
