-- Use a protected call so we don't error out on first use
local status_ok, nvimTree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

nvimTree.setup({
  view = {
    adaptive_size = false,
    side = "left",
    width = 40,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
})

