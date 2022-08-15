-- Use a protected call so we don't error out on first use
local status_ok,  autosave = pcall(require, "auto-save")
if not status_ok then
  return
end

autosave.setup {}
