local mason = require "plugins.configs.essential.lsp.mason"
local mason_lspconfig = require "plugins.configs.essential.lsp.mason_lspconfig"
local null_ls = require "plugins.configs.essential.lsp.null_ls"
local nvim_lspconfig = require "plugins.configs.essential.lsp.nvim_lspconfig"
local telescope = require "plugins.configs.essential.telescope.telescope"
local auto_session = require "plugins.configs.essential.auto_session"
local comment = require "plugins.configs.essential.comment"
local gitsigns = require "plugins.configs.essential.gitsigns"
local hlslens = require "plugins.configs.essential.hlslens"
local indent_blankline = require "plugins.configs.essential.indent_blankline"
local lazygit = require "plugins.configs.essential.lazygit"
local lualine = require "plugins.configs.essential.lualine"
local cmp_set = require "plugins.configs.essential.cmp.cmp_set"
local nvim_cmp = require "plugins.configs.essential.cmp.nvim_cmp"
local snippets_set = require "plugins.configs.essential.cmp.snippets_set"
local nvim_tree = require "plugins.configs.essential.nvim_tree"
local symbols_outline = require "plugins.configs.essential.symbols_outline"
local trouble = require "plugins.configs.essential.trouble"

local autopairs = require "plugins.configs.subsidiary.autopairs"
local close_buffers = require "plugins.configs.subsidiary.close_buffers"
local diffview = require "plugins.configs.subsidiary.diffview"
local dropbar = require "plugins.configs.subsidiary.dropbar"
local gh = require "plugins.configs.subsidiary.gh"
local goto_preview = require "plugins.configs.subsidiary.goto_preview"
local hop = require "plugins.configs.subsidiary.hop"
local neoformat = require "plugins.configs.subsidiary.neoformat"
local nvim_code_action_menu = require "plugins.configs.subsidiary.nvim_code_action_menu"
local toggleterm = require "plugins.configs.subsidiary.toggleterm"
local which_key = require "plugins.configs.subsidiary.which_key"
local wilder = require "plugins.configs.subsidiary.wilder"

local circles = require "plugins.configs.ui.circles"
local theme = require "plugins.configs.ui.theme"
local nvim_notify = require "plugins.configs.ui.nvim_notify"
local treesitter = require "plugins.configs.ui.treesitter"
local noice = require "plugins.configs.ui.noice"
local neoscroll = require "plugins.configs.ui.neoscroll"

---------------------------------------------------------
-- Plugins Config Map
----------------------------------------------------------

-- Config Object
-- `name` : Name of the plugin [Optional]
-- `set`: Plugins to install together [Optional]
-- `repo_path` : Plugin repo path
-- `lazy` : Plugin to be lazy loaded [Optional]
-- `event` : Event upon the plugin should load [Optional]
-- `enabled` : Plugin enabled
-- `dependancies` : Plugin dependancies [Optional]
-- `config` : Plugin config overrides [Optional]
-- `configFunc` : Plugin config overrides with dependancies and can't run setup twice [Optional]
-- `build` : Executed when a plugin is installed or updated [Optional]
-- `artifacts` : Plugin scripts to be invoked after plugin is loaded 

local M  = {}

-- Essential
M.mason = mason
M.mason_lspconfig = mason_lspconfig
M.null_ls = null_ls
M.nvim_lspconfig = nvim_lspconfig
M.telescope = telescope
M.auto_session = auto_session
M.comment = comment
M.gitsigns = gitsigns
M.hlslens = hlslens
M.indent_blankline = indent_blankline
M.lazygit = lazygit
M.lualine = lualine
M.cmp_set = cmp_set
M.nvim_cmp = nvim_cmp
M.snippets_set = snippets_set
M.nvim_tree = nvim_tree
M.symbols_outline = symbols_outline
M.trouble = trouble

-- Subsidiary
M.autopairs = autopairs
M.close_buffers = close_buffers
M.diffview = diffview
M.dropbar = dropbar
M.gh = gh
M.goto_preview = goto_preview
M.hop = hop
M.neoformat = neoformat
M.nvim_code_action_menu = nvim_code_action_menu
M.toggleterm = toggleterm
M.which_key = which_key
M.wilder = wilder

-- UI
M.circles = circles
M.theme = theme
M.nvim_notify = nvim_notify
M.treesitter = treesitter
M.noice = noice
M.neoscroll = neoscroll

return M

