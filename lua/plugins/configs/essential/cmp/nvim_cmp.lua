local kind_icons = {
    Text = "",
    Method = "m",
    Function = "󰊕",
    Constructor = "",
    Field = "",
    Variable = "",
    Class = "",
    Interface = "",
    Module = "",
    Property = "",
    Unit = "",
    Value = "",
    Enum = "",
    Keyword = "",
    Snippet = "",
    Color = "",
    File = "",
    Reference = "",
    Folder = "",
    EnumMember = "",
    Constant = "",
    Struct = "",
    Event = "",
    Operator = "",
    TypeParameter = "",
    Copilot = "󰚩"
}

return {
    name = "cmp",
    repo_path = "hrsh7th/nvim-cmp",
    priority = 950,
    enabled = true,
    lazy = true,
    event = "VeryLazy",
    configFunc = function(cmp)
        require("luasnip/loaders/from_vscode").lazy_load()

        local luasnip = require 'luasnip'
        luasnip.config.setup {}

        return {
            formatting = {
                fields = { "kind", "abbr", "menu" },
                format = function(entry, vim_item)
                    vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
                    vim_item.menu = ({
                        copilot = "[Copilot]",
                        nvim_lsp = "[Lsp]",
                        luasnip = "[Snip]",
                        buffer = "[Buf]",
                        path = "[Path]",
                        })[entry.source.name]
                    return vim_item
                end,
            },
            window = {
                documentation = {
                    border = "rounded",
                },
                completion = {
                    border = "rounded",
                    winhighlight = 'Normal:CmpPmenu,FloatBorder:CmpPmenuBorder,CursorLine:PmenuSel,Search:None',
                }
            },
            sources = {
                { name = "copilot" },
                { name = "nvim_lsp" },
                { name = "buffer" },
                { name = "luasnip"},
                { name = "path"}
            },
            snippet = {
                    expand = function(args)
                        luasnip.lsp_expand(args.body)
                    end,
            },
            mapping = cmp.mapping.preset.insert({
                ['<Tab>'] = cmp.mapping.select_next_item(),
                ['<S-Tab>'] = cmp.mapping.select_prev_item(),
                ['<Down>'] = cmp.mapping.scroll_docs(1),
                ['<Up>'] = cmp.mapping.scroll_docs(-1),
                ['<C-d>'] = cmp.mapping.scroll_docs(4),
                ['<C-u>'] = cmp.mapping.scroll_docs(-4),
                ['<CR>'] = cmp.mapping.confirm {
                    behavior = cmp.ConfirmBehavior.Replace,
                    select = true,
                },
            }),
            confirm_opts = {
                behavior = cmp.ConfirmBehavior.Replace,
                select = false,
            },
        }
    end
}
