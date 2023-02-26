-- Use a protected call so we don't error out on first use
local status_ok, telescopeBrowser = pcall(require, "telescope-file-browser")
if not status_ok then
  return
end

telescopeBrowser.setup {}
