--- Use a protected call so we don't error out on first use
local status_ok, theme = pcall(require, "kanagawa")
if not status_ok then
  return
end

-- local default_colors = require("kanagawa.colors").setup()
local custom_colors = {
    palette = { 
        bg = "NONE",
        bg_status = "NONE"
    }
}
local overrides = {}

theme.setup {
    undercurl = true,           -- enable undercurls
    commentStyle = { italic = true },
    functionStyle = {},
    keywordStyle = {},
    statementStyle = { bold = true },
    typeStyle = { italic = true },
    variablebuiltinStyle = { italic = true},
    specialReturn = true,       -- special highlight for the return keyword
    specialException = true,    -- special highlight for exception handling keywords
    transparent = true,        -- do not set background color
    dimInactive = false,        -- dim inactive window `:h hl-NormalNC`
    globalStatus = true,       -- adjust window separators highlight for laststatus=3
    terminalColors = true,      -- define vim.g.terminal_color_{0,17}
    theme = "default",          -- Load "default" theme or the experimental "light" theme
    colors = custom_colors
}

vim.cmd("colorscheme kanagawa")
vim.opt.fillchars:append { eob = " " }
