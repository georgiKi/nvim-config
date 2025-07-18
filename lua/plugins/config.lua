local essential = "plugins.configs.essential."
local subsidiary = "plugins.configs.subsidiary."
local ui = "plugins.configs.ui."

---------------------------------------------------------
-- Plugins Config
----------------------------------------------------------

do
    return {
        -- Essential
        require(essential .. "ai.avente"),
        require(essential .. "ai.windsurf"),
        require(essential .. "lsp.hover"),
        require(essential .. "lsp.mason"),
        require(essential .. "lsp.mason_lspconfig"),
        require(essential .. "lsp.nvim_lspconfig"),
        require(essential .. "lsp.typescript_tools"),
        require(essential .. "telescope.telescope"),
        require(essential .. "auto_session"),
        require(essential .. "blink_cmp"),
        require(essential .. "comment"),
        require(essential .. "conform"),
        require(essential .. "gitsigns"),
        require(essential .. "grug_far"),
        require(essential .. "hlslens"),
        require(essential .. "indent_blankline"),
        require(essential .. "lazygit"),
        require(essential .. "lualine"),
        require(essential .. "mini"),
        require(essential .. "nvim_tree"),
        require(essential .. "outline"),
        require(essential .. "trouble"),

        -- Subsidiary
        require(subsidiary .. "actions_preview"),
        require(subsidiary .. "autopairs"),
        require(subsidiary .. "blame"),
        require(subsidiary .. "bookmarks"),
        require(subsidiary .. "close_buffers"),
        require(subsidiary .. "detour"),
        require(subsidiary .. "diffview"),
        require(subsidiary .. "garbage-day"),
        require(subsidiary .. "gh"),
        require(subsidiary .. "goto_preview"),
        require(subsidiary .. "hop"),
        require(subsidiary .. "nemu"),
        require(subsidiary .. "neotest"),
        require(subsidiary .. "nvim-colorizer"),
        require(subsidiary .. "nvim_treesitter_context"),
        require(subsidiary .. "paren_hint"),
        require(subsidiary .. "toggleterm"),
        require(subsidiary .. "triptych"),
        require(subsidiary .. "reach"),
        require(subsidiary .. "which_key"),
        require(subsidiary .. "wilder"),
        require(subsidiary .. "winshift"),

        -- Ui
        require(ui .. "circles"),
        require(ui .. "easyread"),
        require(ui .. "eyeliner"),
        require(ui .. "theme"),
        require(ui .. "nvim_notify"),
        require(ui .. "todo_comments"),
        require(ui .. "treesitter"),
        require(ui .. "noice"),
        require(ui .. "neoscroll")
    }
end
