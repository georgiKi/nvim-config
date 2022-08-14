-- Use a protected call so we don't error out on first use
local status_ok, theme = pcall(require, "github-theme")
if not status_ok then
  return
end

-- Theme config
theme.setup({
  theme_style = "dark_default",
  transparent = true,
  function_style = "italic",
  sidebars = {"qf", "vista_kind", "terminal", "packer"},
})
