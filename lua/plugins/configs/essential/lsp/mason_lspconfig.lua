local utils = require "core.utils"

return {
    name = "mason-lspconfig", repo_path = "williamboman/mason-lspconfig.nvim",
    priority = 890,
    enabled = true,
    lazy = true,
    event = "VeryLazy",
    config = {
          ensure_installed = {
              "lua_ls",
              "tsserver",
              "quick_lint_js",
              "cssls",
              "cssmodules_ls",
              "angularls",
              "jsonls",
              -- "csharp_ls",
              "eslint"
          },
    },
    artifacts = function(plugin)
        local capabilities = require("cmp_nvim_lsp").default_capabilities()
        local handlers =  {
            ["textDocument/hover"] =  vim.lsp.with(vim.lsp.handlers.hover, {border = "single", silent = true}),
            ["textDocument/signatureHelp"] =  vim.lsp.with(vim.lsp.handlers.signature_help, {border = "single", silent = true}),
        }

        plugin.setup_handlers {
            -- It will be called for each installed server
            -- Can be overriden by dedicated handler
            function (server_name)
                require("lspconfig")[server_name].setup {
                    capabilities = capabilities,
                    handlers = handlers
                }
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

        utils.keymap("n", "<leader>d", "<cmd>lua vim.lsp.buf.definition()<CR>", { desc = "Go To Definition" })
        utils.keymap("n", "<leader>p", "<cmd>lua vim.lsp.buf.hover()<CR>", { desc = "Hover" })
    end
}
