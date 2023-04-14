-- Use a protected call so we don't error out on first use
local status_ok, wilder = pcall(require, "wilder")
if not status_ok then
  return
end

wilder.setup({modes = {':', '/', '?'}})
