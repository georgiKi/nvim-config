local utils = require "core.utils"

return {
    name = "mason-lspconfig", repo_path = "williamboman/mason-lspconfig.nvim",
    priority = 890,
    enabled = true,
    config = {
          ensure_installed = {
              "lua_ls",
              "tsserver",
              "quick_lint_js",
              "cssls",
              "cssmodules_ls",
              "angularls",
              "jsonls",
              "eslint"
          },
    },
    artifacts = function(plugin)
        plugin.setup_handlers {
            -- It will be called for each installed server
            -- Can be overriden by dedicated handler
            function (server_name)
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

        utils.keymap("n", "<leader>d", "<cmd>lua vim.lsp.buf.definition()<CR>", { desc = "Go To Definition" })
        utils.keymap("n", "<leader>r", "<cmd>lua vim.lsp.buf.references()<CR>", { desc = "Go To Reference" })
        utils.keymap("n", "<leader>p", "<cmd>lua vim.lsp.buf.hover()<CR>", { desc = "Hover" })
        utils.keymap("n", "<leader>I", "<cmd>lua vim.lsp.buf.implementation()<CR>", { desc = "Go To Implementation" })
    end
}
