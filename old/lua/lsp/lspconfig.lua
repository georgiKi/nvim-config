local status_ok, lspConfig = pcall(require, "lspconfig")
if not status_ok then
  return
end

--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lspConfig.tsserver.setup {}
lspConfig.html.setup {
    capabilities = capabilities
}
