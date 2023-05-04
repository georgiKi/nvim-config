return {
    name = "mason-lspconfig",
    repo_path = "williamboman/mason-lspconfig.nvim",
    priority = 890,
    enabled = true,
    lazy_loaded = true,
    config = {
          ensure_installed = {
              "lua_ls",
              "tsserver",
              "quick_lint_js",
              "cssls",
              "cssmodules_ls",
              "csharp_ls",
              "angularls",
              "jsonls",
              "eslint"
          },
    },
    artifacts = function(plugin)
        plugin.setup_handlers {
            -- Default handler
            -- will be called for each installed server that doesn't have
            -- a dedicated handler.
            function (server_name) -- default handler (optional)
                require("lspconfig")[server_name].setup {}
            end,

            -- A dedicated handler for specific server.
            -- ["html"] = function ()
            --     --Enable (broadcasting) snippet capability for completion
            --     local capabilities = vim.lsp.protocol.make_client_capabilities()
            --     capabilities.textDocument.completion.completionItem.snippetSupport = true
            --
            --     require("html").setup {
            --         capabilities = capabilities
            --     }
            -- end
        }
    end
}
