local theme = require "plugins.configs.main.theme" 
local nvim_tree = require "plugins.configs.main.nvim_tree"
local symbols_outline = require "plugins.configs.main.symbols_outline"
local lualine = require "plugins.configs.main.lualine"
local comment = require "plugins.configs.main.comment"
local hlslens = require "plugins.configs.main.hlslens"
local trouble = require "plugins.configs.main.trouble"

local which_key = require "plugins.configs.addons.which_key"
local wilder = require "plugins.configs.addons.wilder"
local telescope = require "plugins.configs.addons.telescope.telescope"
local hop = require "plugins.configs.addons.hop"
local noice = require "plugins.configs.addons.noice"

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
M.symbols_outline = symbols_outline
M.lualine = lualine
M.comment = comment
M.hlslens = hlslens
M.trouble = trouble

-- Addons
M.which_key = which_key
M.wilder = wilder
M.telescope = telescope
M.hop = hop
M.noice = noice

return M

