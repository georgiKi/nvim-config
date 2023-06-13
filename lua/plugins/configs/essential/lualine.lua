return {
    name = "lualine",
    repo_path = "nvim-lualine/lualine.nvim",
    enabled = true,
    lazy = true,
    event = "VeryLazy",
    config = {
        options = {
            icons_enabled = true,
            disabled_filetypes = {
                statusline = {},
                winbar = {},
            },
            ignore_focus = {},
            always_divide_middle = true,
            globalstatus = false,
            refresh = {
                statusline = 1000,
                tabline = 1000,
                winbar = 1000,
            }
        },
        sections = {
            lualine_a = {'mode'},
            lualine_b = {'diff', 'diagnostics'},
            lualine_c = {'filename'},
            lualine_x = {'branch', 'filetype'},
            lualine_y = {},
            lualine_z = {'location'}
        },
        inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = {'filename'},
            lualine_x = {'location'},
            lualine_y = {},
            lualine_z = {}
        },
        tabline = {},
        winbar = {},
        inactive_winbar = {},
        extensions = {}
    },
    artifacts = function(lualine)
        local custom_theme = require'lualine.themes.everforest'

        custom_theme.inactive.c.bg = 'nil'
        custom_theme.visual.c.bg = 'nil'
        custom_theme.replace.c.bg = 'nil'
        custom_theme.insert.c.bg = 'nil'
        custom_theme.command.c.bg = 'nil'
        custom_theme.normal.c.bg = 'nil'

        lualine.setup {
           options = {
                theme = custom_theme
           }
        }
    end
}
