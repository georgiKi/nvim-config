local telescope = require "plugins.configs.essential.telescope.telescope"
local comment = require "plugins.configs.essential.comment"
local hlslens = require "plugins.configs.essential.hlslens"
local indent_blankline = require "plugins.configs.essential.indent_blankline"
local lualine = require "plugins.configs.essential.lualine"
local nvim_tree = require "plugins.configs.essential.nvim_tree"
local symbols_outline = require "plugins.configs.essential.symbols_outline"
local trouble = require "plugins.configs.essential.trouble"

local hop = require "plugins.configs.subsidiary.hop"
local which_key = require "plugins.configs.subsidiary.which_key"
local wilder = require "plugins.configs.subsidiary.wilder"

local theme = require "plugins.configs.ui.theme" 
local nvim_notify = require "plugins.configs.ui.nvim_notify"
local treesitter = require "plugins.configs.ui.treesitter"
local noice = require "plugins.configs.ui.noice"
local neoscroll = require "plugins.configs.ui.neoscroll"


---------------------------------------------------------
-- Plugins Config Map
----------------------------------------------------------

-- Config Object
-- `name` : Name of the plugin 
-- `repo_path` : Plugin repo path
-- `lazy_loaded` : Plugin to be lazy loaded
-- `enabled` : Plugin enabled
-- `dependancies` : Plugin dependancies
-- `config` : Plugin config overrides
-- `artifacts` : Plugin scripts to be invoked after plugin is loaded 

local M  = {}

-- Essential
M.telescope = telescope
M.comment = comment
M.hlslens = hlslens
M.indent_blankline = indent_blankline
M.lualine = lualine
M.nvim_tree = nvim_tree
M.symbols_outline = symbols_outline
M.trouble = trouble

-- Subsidiary
M.hop = hop
M.which_key = which_key
M.wilder = wilder

-- UI
M.theme = theme
M.nvim_notify = nvim_notify
M.treesitter = treesitter
M.noice = noice
M.neoscroll = neoscroll

return M

