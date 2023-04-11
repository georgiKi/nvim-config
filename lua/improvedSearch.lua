-- Use a protected call so we don't error out on first use
local status_ok, search = pcall(require, "hlslens")
if not status_ok then
  return
end

search.setup()

