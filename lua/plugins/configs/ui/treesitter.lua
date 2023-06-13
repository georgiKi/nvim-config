return {
    name = "nvim-treesitter.configs",
    repo_path = "nvim-treesitter/nvim-treesitter",
    priority = 950,
    enabled = true,
    lazy = true,
    event = "VeryLazy",
    config = {
        -- A list of parser names, or "all"
        ensure_installed = { "c", "c_sharp", "lua", "vim", "regex", "javascript", "typescript", "tsx", "css", "scss", "html", "json" },

        -- Install parsers synchronously (only applied to `ensure_installed`)
        sync_install = false,

        -- Automatically install missing parsers when entering buffer
        auto_install = true,

        -- List of parsers to ignore installing (for "all")
        ignore_install = {},

        highlight = {
            enable = true,

            -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
            -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
            -- the name of the parser)
            -- list of language that will be disabled
            disable = { "c", "rust" },
                -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
                -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
                -- Using this option may slow down your editor, and you may see some duplicate highlights.
                -- Instead of true it can also be a list of languages
            additional_vim_regex_highlighting = { "html" },
        }
    },
    artifacts =  nil
}
