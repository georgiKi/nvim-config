return {
    name = "kanawaga",
    repo_path = "rebelot/kanagawa.nvim",
    lazy_loaded = false,
    dependancies = {},
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
    }
}
