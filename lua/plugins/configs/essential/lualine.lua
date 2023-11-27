return {
    name = "lualine",
    repo_path = "nvim-lualine/lualine.nvim",
    enabled = true,
    lazy = true,
    event = "VeryLazy",
    config = {
        options = {
            icons_enabled = true,
            component_separators = '|',
            section_separators = { left = '', right = '' },
            disabled_filetypes = { 'NvimTree', 'Outline' },
            refresh = {
                statusline = 1000,
                tabline = 1000,
                winbar = 1000,
            }
        },
        sections = {
            lualine_a = {'mode'},
            lualine_b = {'diff', 'diagnostics'},
            lualine_c = {'filename', 'branch'},
            lualine_x = {'filetype'},
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
        }
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
