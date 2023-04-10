-- Use a protected call so we don't error out on first use
local status_ok, outlineTree = pcall(require, "symbols-outline")
if not status_ok then
  return
end

local options = {
    width = 15,
    show_symbol_details = false
}


outlineTree.setup(options)
