local config = require "plugins.config"
local utils = require "plugins.utils"

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
        dependencies = config.nvim_tree.dependencies,
        config = utils.setupPlugin(config.nvim_tree.name, config.nvim_tree.config, config.nvim_tree.artifacts)
    },
    { 
        config.which_key.repo_path, 
        enabled = config.which_key.enabled,
        config = utils.setupPlugin(config.which_key.name, config.which_key.config)
    },
    { 
        config.wilder.repo_path, 
        enabled = config.wilder.enabled,
        config = utils.setupPlugin(config.wilder.name, config.wilder.config)
    },
}

require("lazy").setup(plugins, { ui = { border = "single" } })

