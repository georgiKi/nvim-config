local kind_icons = {
  Text = "",
  Method = "m",
  Function = "",
  Constructor = "",
  Field = "",
  Variable = "",
  Class = "",
  Interface = "",
  Module = "",
  Property = "",
  Unit = "",
  Value = "",
  Enum = "",
  Keyword = "",
  Snippet = "",
  Color = "",
  File = "",
  Reference = "",
  Folder = "",
  EnumMember = "",
  Constant = "",
  Struct = "",
  Event = "",
  Operator = "",
  TypeParameter = "",
}


return {
    name = "nvim-cmp",
    repo_path = "hrsh7th/nvim-cmp",
    priority = 950,
    enabled = true,
    multi = true,
    config = {
        formatting = {
            fields = { "kind", "abbr", "menu" },
            format = function(entry, vim_item)
                -- Kind icons
                vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
                -- vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind) -- This concatonates the icons with the name of the item kind
                vim_item.menu = ({
                    nvim_lsp = "[LSP]",
                    luasnip = "[Snip]",
                    buffer = "[Buffer]",
                    path = "[Path]",
                    })[entry.source.name]
                    return vim_item
            end,
        },
        window = {
            documentation = {
                border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" }
            },
            completion = {
                border = {'┌', '─', '┐', '│', '┘', '─', '└', '│'},
                winhighlight = 'Normal:CmpPmenu,FloatBorder:CmpPmenuBorder,CursorLine:PmenuSel,Search:None',
            }
        }
    },
    artifacts = function(cmp)
        cmp.setup {
            confirm_opts = {
                behavior = cmp.ConfirmBehavior.Replace,
                select = false,
            },
        }
    end
}
