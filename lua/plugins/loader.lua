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

local plugins = {}

for key, plugin in pairs(config) do

    if plugin.set then
        table.insert(plugins, plugin.set)
    else
        table.insert(plugins, {
            plugin.repo_path,
            priority = plugin.priority,
            enabled = plugin.enabled,
            lazy = plugin.lazy,
            event = plugin.event,
            dependencies = plugin.dependencies,
            build = plugin.build,
            config = utils.setupPlugin(plugin.name, plugin.config, plugin.configFunc, plugin.artifacts)
        })
    end

end

require("lazy").setup(plugins, { ui = { border = "single" } })

