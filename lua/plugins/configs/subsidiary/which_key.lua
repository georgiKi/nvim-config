return {
    name = "which-key",
    repo_path = "folke/which-key.nvim",
    enabled = true,
    lazy = true,
    event = "VeryLazy",
    config = {
        icons = {
            breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
            separator = "",   -- symbol used between a key and it's label
            group = "+",      -- symbol prepended to a group
            rules = false
        },
        keys = {
            scroll_down = "<c-d>", -- binding to scroll down inside the popup
            scroll_up = "<c-u>",   -- binding to scroll up inside the popup
        },
        layout = {
            spacing = 6, -- spacing between columns
        },
    }
}
