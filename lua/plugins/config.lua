local essential = "plugins.configs.essential."
local subsidiary = "plugins.configs.subsidiary."
local ui = "plugins.configs.ui."

---------------------------------------------------------
-- Plugins Config
----------------------------------------------------------

do return {

    -- Essential
    require (essential .. "lsp.mason"),
    require (essential .. "lsp.mason_lspconfig"),
    require (essential .. "lsp.null_ls"),
    require (essential .. "lsp.nvim_lspconfig"),
    require (essential .. "telescope.telescope"),
    require (essential .. "auto_session"),
    require (essential .. "comment"),
    require (essential .. "gitsigns"),
    require (essential .. "hlslens"),
    require (essential .. "indent_blankline"),
    require (essential .. "lazygit"),
    require (essential .. "lualine"),
    require (essential .. "cmp.cmp_set"),
    require (essential .. "cmp.nvim_cmp"),
    require (essential .. "cmp.snippets_set"),
    require (essential .. "nvim_tree"),
    require (essential .. "spectre"),
    require (essential .. "symbols_outline"),
    require (essential .. "trouble"),

    -- Subsidiary
    require (subsidiary .. "autopairs"),
    require (subsidiary .. "close_buffers"),
    require (subsidiary .. "dashboard"),
    require (subsidiary .. "diffview"),
    require (subsidiary .. "dropbar"),
    require (subsidiary .. "gh"),
    require (subsidiary .. "goto_preview"),
    require (subsidiary .. "hop"),
    require (subsidiary .. "neoformat"),
    require (subsidiary .. "neotest"),
    require (subsidiary .. "nvim-colorizer"),
    require (subsidiary .. "nvim_code_action_menu"),
    require (subsidiary .. "nvim_treesitter_context"),
    require (subsidiary .. "toggleterm"),
    require (subsidiary .. "reach"),
    require (subsidiary .. "which_key"),
    require (subsidiary .. "wilder"),
    require (subsidiary .. "winshift"),

    -- Ui
    require (ui .. "circles"),
    require (ui .. "easyread"),
    require (ui .. "neodim"),
    require (ui .. "theme"),
    require (ui .. "nvim_notify"),
    require (ui .. "treesitter"),
    require (ui .. "noice"),
    require (ui .. "neoscroll")
} end

