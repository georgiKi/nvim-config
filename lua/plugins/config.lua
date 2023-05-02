local theme = require "plugins.configs.main.theme" 
local nvim_tree = require "plugins.configs.main.nvim_tree"
local nvim_notify = require "plugins.configs.main.nvim_notify"
local symbols_outline = require "plugins.configs.main.symbols_outline"
local lualine = require "plugins.configs.main.lualine"
local comment = require "plugins.configs.main.comment"
local hlslens = require "plugins.configs.main.hlslens"
local trouble = require "plugins.configs.main.trouble"
local indent_blankline = require "plugins.configs.main.indent_blankline"
local treesitter = require "plugins.configs.main.treesitter"

local which_key = require "plugins.configs.addons.which_key"
local wilder = require "plugins.configs.addons.wilder"
local telescope = require "plugins.configs.addons.telescope.telescope"
local hop = require "plugins.configs.addons.hop"
local noice = require "plugins.configs.addons.noice"
local neoscroll = require "plugins.configs.addons.neoscroll"

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

-- Main
M.theme = theme
M.nvim_tree = nvim_tree
M.nvim_notify = nvim_notify
M.symbols_outline = symbols_outline
M.lualine = lualine
M.comment = comment
M.hlslens = hlslens
M.trouble = trouble
M.indent_blankline = indent_blankline
M.treesitter = treesitter

-- Addons
M.which_key = which_key
M.wilder = wilder
M.telescope = telescope
M.hop = hop
M.noice = noice
M.neoscroll = neoscroll

return M

