local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Plugins
return packer.startup(function(use)
    use "wbthomason/packer.nvim" -- Have packer manage itself
    use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
    use "nvim-lua/plenary.nvim" -- Useful lua functions used in lots of plugins
    use "kdheepak/lazygit.nvim" -- LazyGit git UI
    use "rebelot/kanagawa.nvim" -- Theme
    use "nvim-lualine/lualine.nvim" -- Custom bottom line
    use "nvim-treesitter/nvim-treesitter" -- Better code hightlight
    use "gelguy/wilder.nvim" -- Wild menu autocomplete
    use "nvim-telescope/telescope.nvim" -- Search modal
    use "folke/which-key.nvim" -- Shortcuts helper
    use "karb94/neoscroll.nvim" -- Smooth scroll
    use "windwp/nvim-autopairs" -- Autopairs
    use "glepnir/dashboard-nvim" -- Dashboard initial view
    use "gpanders/editorconfig.nvim" -- Editorconfig support
	use "L3MON4D3/LuaSnip" --snippet engine
	use "rafamadriz/friendly-snippets" -- a of snippets to use
    use "neovim/nvim-lspconfig" -- Configurations for Nvim LSP
    use "jose-elias-alvarez/null-ls.nvim" -- NeoVim as LSP
    use "justinmk/vim-sneak" -- Page Jumper
    use {
       'kyazdani42/nvim-tree.lua',
        requires = {'kyazdani42/nvim-web-devicons'}
    } -- Directory tree
    use {
        'romgrk/barbar.nvim',
        requires = {'kyazdani42/nvim-web-devicons'}
    } -- Bar
	use { 
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "saadparwaiz1/cmp_luasnip",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-nvim-lua"
    } -- Cmp plugins
        
    -- Automatically set up configuration after cloning packer.nvim
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
