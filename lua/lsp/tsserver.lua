local status_ok, lspConfig = pcall(require, "lspconfig")
if not status_ok then
  return
end

lspConfig.tsserver.setup {}
