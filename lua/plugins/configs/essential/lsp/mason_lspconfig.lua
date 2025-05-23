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
    artifacts = function(plugin)
        local capabilities = require("blink.cmp").get_lsp_capabilities(vim.lsp.protocol.make_client_capabilities())
        local handlers = {
            ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded", silent = true }),
            ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help,
                { border = "rounded", silent = true }),
        }

        plugin.setup_handlers {
            -- It will be called for each installed server
            -- Can be overriden by dedicated handler
            function(server_name)
                require("lspconfig")[server_name].setup {
                    capabilities = capabilities,
                    handlers = handlers
                }
            end,

            -- A dedicated handler for specific server.
            -- ["html"] = function ()
            --     --Enable (broadcasting) snippet capability for completion
            --     local htmlCapabilities = vim.lsp.protocol.make_client_capabilities()
            --     htmlCapabilities.textDocument.completion.completionItem.snippetSupport = true
            --
            --     require("html").setup {
            --         capabilities = htmlCapabilities
            --     }
            -- end
        }

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
