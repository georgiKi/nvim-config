return {
    name = "indent_blankline",
    repo_path = "lukas-reineke/indent-blankline.nvim",
    enabled = false,
    lazy = true,
    event = "VeryLazy",
    config = {
        char = "",
        context_char = "┆",
        space_char_blankline = " ",
        show_current_context = true,
        show_current_context_start = false,
        max_indent_increase = 1,
        show_trailing_blankline_indent = false
    }
}
