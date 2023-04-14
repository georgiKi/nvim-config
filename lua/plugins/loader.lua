local config = require "lua.plugins.config"
local utils = require "lua.plugins.utils"

---------------------------------------------------------------------------
-- Install Package Manager
---------------------------------------------------------------------------

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", 
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

---------------------------------------------------------------------------
-- Reload Plugins On File Save Autocommand
---------------------------------------------------------------------------

 -- vim.cmd [[
   -- augroup plugins_user_config
     -- autocmd!
     -- autocmd BufWritePost loader.lua source <afile> | Lazy sync
   -- augroup end
 -- ]]

---------------------------------------------------------------------------
-- Plugins Setup
---------------------------------------------------------------------------

local plugins = {
    { 
        config.theme.repo_path, 
        priority = 1000,
        enabled = config.theme.enabled,
        config = utils.setupPlugin(config.theme.name, config.theme.config, config.theme.artifacts)
    }, 
    { 
        config.nvim_tree.repo_path, 
        enabled = config.nvim_tree.enabled,
        config = utils.setupPlugin(config.nvim_tree.name, config.nvim_tree.config, config.nvim_tree.artifacts)
    },
}

require("lazy").setup(plugins)

