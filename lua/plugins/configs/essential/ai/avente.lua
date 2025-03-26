local function setup_avante_highlights()
    local set_hl = vim.api.nvim_set_hl

    set_hl(0, "AvanteSidebarWinSeparator", {
        bg = 'NONE',
        fg = '#24242e',
    })

    set_hl(0, "AvanteTitle", {
        bg = 'NONE',
        fg = 'NONE',
    })
end

return {
    name = "avante",
    repo_path = "yetone/avante.nvim",
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "stevearc/dressing.nvim",
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        --- The below dependencies are optional,
        "echasnovski/mini.pick",     -- for file_selector provider mini.pick
        "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
        "hrsh7th/nvim-cmp",          -- autocompletion for avante commands and mentions
        "ibhagwan/fzf-lua",          -- for file_selector provider fzf
        "nvim-tree/nvim-web-devicons",
    },
    enabled = true,
    lazy = true,
    priority = 900,
    event = "UIEnter",
    build = "make",
    config = {
        claude = {
            endpoint = "https://api.anthropic.com",
            model = "claude-3-haiku-20240307",
            temperature = 0,
            max_tokens = 4096,
        },
        windows = {
            position = "right",
            wrap = true,
            width = 40,
            sidebar_header = {
                enabled = true,
                align = "center",
                rounded = false,
            },
            input = {
                prefix = "> ",
                height = 8,
            },
            edit = {
                border = "single",
                start_insert = true,
            },
            ask = {
                floating = false,
                start_insert = true,
                border = "single",
                focus_on_apply = "ours",
            },
        },
    },
    artifacts = function()
        setup_avante_highlights()
    end,
}
