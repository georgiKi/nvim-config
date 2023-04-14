-- Use a protected call so we don't error out on first use
local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

telescope.setup{
   defaults = {
        prompt_prefix = " ",
        selection_caret = " ",
        path_display = { "smart" },   
        file_ignore_patterns = { "node_modules" }
   },
   extensions = {
    file_browser = {
      theme = "ivy",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        ["i"] = {
          -- your custom insert mode mappings
        },
        ["n"] = {
          -- your custom normal mode mappings
        },
      },
    },
  }
}

telescope.load_extension "file_browser"
