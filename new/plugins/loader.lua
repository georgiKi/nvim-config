local utils = require "../core/utils"
local config = require "config"

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
--   augroup plugins_user_config
--     autocmd!
--     autocmd BufWritePost plugins_loader.lua source <afile> | PackerSync
--   augroup end
-- ]]

---------------------------------------------------------------------------
-- Plugins Setup
---------------------------------------------------------------------------

local plugins = {
    { 
        config.theme.repo_path, 
        enabled = utils.enabledPlugin(config.theme.name)
        lazy = config.theme.lazy_loaded,
        config = utils.setupPlugin(config.theme.name, config.theme.config)
    }, 
}

require("lazy").setup(plugins)

---------------------------------------------------------------------------
-- Post Plugins Artifacts
---------------------------------------------------------------------------

if utils.enabledPlugin(config.theme.name) then
    vim.cmd("colorscheme kanagawa")
    vim.opt.fillchars:append { eob = " " }
end

