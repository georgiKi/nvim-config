local theme = require "plugins.configs.main.theme" 
local nvim_tree = require "plugins.configs.main.nvim_tree"
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


M.theme = theme
M.nvim_tree = nvim_tree


return M

