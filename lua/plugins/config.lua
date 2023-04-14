local theme = require "plugins.configs.main.theme" 
local nvim_tree = require "plugins.configs.main.nvim_tree"

local which_key = require "plugins.configs.addons.which_key"

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
-- `artifacts?` : After loaded plugin scripts function 

local M  = {}

-- Main
M.theme = theme
M.nvim_tree = nvim_tree

-- Addons
M.which_key = which_key


return M

