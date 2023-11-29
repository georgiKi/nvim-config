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
            ["textDocument/hover"] =  vim.lsp.with(vim.lsp.handlers.hover, {border = "rounded", silent = true}),
            ["textDocument/signatureHelp"] =  vim.lsp.with(vim.lsp.handlers.signature_help, {border = "rounded", silent = true}),
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
            --     local htmlCapabilities = vim.lsp.protocol.make_client_capabilities()
            --     htmlCapabilities.textDocument.completion.completionItem.snippetSupport = true
            --
            --     require("html").setup {
            --         capabilities = htmlCapabilities
            --     }
            -- end
        }

        utils.keymap("n", "<leader>db", "<c-o>", { desc = "Back To Previous File" })
        utils.keymap("n", "<leader>p", "<cmd>lua vim.lsp.buf.hover()<CR>", { desc = "Hover" })
    end
}
