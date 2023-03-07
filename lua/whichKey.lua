-- Use a protected call so we don't error out on first use
local status_ok, whichKey = pcall(require, "which-key")
if not status_ok then
  return
end

whichKey.setup {}

