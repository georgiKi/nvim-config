local theme = require "configs.theme" 

---------------------------------------------------------
-- Plugins Config Map
----------------------------------------------------------

-- Config Object
-- `name` : Name of the plugin 
-- `repo_path` : Plugin repo path
-- `lazy_loaded`: Plugin to be lazy loaded
-- `dependancies`: Plugin dependancies
-- `config` : Plugin config overrides

local M  = {}


M.theme = theme


return M

