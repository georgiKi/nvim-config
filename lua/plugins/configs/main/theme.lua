vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

return {
    name = "kanagawa",
    repo_path = "rebelot/kanagawa.nvim",
    enabled = true,
    config = {
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
        colors = {
            theme = {
                 all = {
                    ui = {
                        bg_gutter  = "NONE", 
                        bg_m3      = "NONE", 
                        bg_m2      = "NONE", 
                        bg_m1      = "NONE", 
                        bg         = "NONE", 
                        bg_search  = "NONE",
                        bg_visual  = "GRAY",
                        bg_p1      = "NONE",
                        bg_p2      = "NONE",
                        fg_reverse = "NONE",
                        float = {
                            bg     = "NONE",
                        },
                    }
                }
            }
        },
        overrides = function ()
            return {
                 WinSeparator = { fg = "#1F1F28" }
            }
        end
    },
    artifacts = function() 
        vim.cmd("colorscheme kanagawa") 
        vim.opt.fillchars:append { eob = " " }
    end
}
