return {
    name = "blink.cmp",
    repo_path = "saghen/blink.cmp",
    dependencies = {
        'rafamadriz/friendly-snippets',
        "fang2hou/blink-copilot"
    },
    priority = 950,
    enabled = true,
    lazy = true,
    event = "VeryLazy",
    config = {
        keymap = {
            preset = 'enter',
            ['<Tab>'] = { 'select_next', 'fallback' },
            ['<S-Tab>'] = { 'select_prev', 'fallback' }
        },
        cmdline = { enabled = false },
        appearance = {
            use_nvim_cmp_as_default = true,
            nerd_font_variant = 'mono'
        },
        completion = {
            menu = {
                border = "rounded",
                draw = { gap = 2 },
                winhighlight = 'Normal:CmpPmenu,FloatBorder:CmpPmenuBorder,CursorLine:PmenuSel,Search:None',
            },
            documentation = {
                auto_show = true,
                window = {
                    scrollbar = false,
                    border = 'rounded',
                    winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:BlinkCmpDocCursorLine,Search:None",
                }
            }
        },
        sources = {
            default = { 'copilot', 'lsp', 'path', 'buffer', 'snippets' },
            providers = {
                copilot = {
                    score_offset = 100,
                    module = "blink-copilot",
                },
                lsp = {
                    score_offset = 90
                },
                buffer = {
                    score_offset = 50
                },
                snippets = {
                    min_keyword_length = 3,
                    score_offset = 1
                },

            },
        },
        fuzzy = { implementation = "lua" },
        signature = {
            enabled = false,
            window = {
                border = 'rounded',
                winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:BlinkCmpDocCursorLine,Search:None",
            }
        }
    }
}
