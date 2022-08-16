-- Use a protected call so we don't error out on first use
local status_ok, nvimTree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

nvimTree.setup({
  view = {
    adaptive_size = true,
    side = "right",
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

-- Attempts to close directory tree when the last window in buffer is closed
vim.api.nvim_create_autocmd("BufEnter", {
  nested = true,
  callback = function()
    if #vim.api.nvim_list_wins() == 1 and vim.api.nvim_buf_get_name(0):match("NvimTree_") ~= nil then
      vim.cmd "quit"
    end
  end
})
