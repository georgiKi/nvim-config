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
            section_separators = { left = '', right = '' },
            disabled_filetypes = { 'NvimTree' },
            refresh = {
                statusline = 1000,
                tabline = 1000,
                winbar = 1000,
            }
        },
        sections = {
            lualine_a = {
              { 'mode', separator = { left = '' }, right_padding = 2 },
            },
            lualine_b = { 'filename', 'branch' },
            lualine_c = {},
            lualine_x = {},
            lualine_y = { 'filetype' },
            lualine_z = {
              { 'location', separator = { right = '' }, left_padding = 2 },
            },
          },
          inactive_sections = {
            lualine_a = { 'filename' },
            lualine_b = {},
            lualine_c = {},
            lualine_x = {},
            lualine_y = {},
            lualine_z = { 'location' },
          },
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
                theme = custom_theme,
           }
       }
    end
}
