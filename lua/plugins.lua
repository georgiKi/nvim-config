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
    use 'simrat39/symbols-outline.nvim' -- Outline Tree
    use "nvim-telescope/telescope.nvim" -- Search modal
    use "nvim-telescope/telescope-file-browser.nvim" -- Telescope Browser
    use "folke/which-key.nvim" -- Shortcuts helper
    use "karb94/neoscroll.nvim" -- Smooth scroll
    use "windwp/nvim-autopairs" -- Autopairs
    use "gpanders/editorconfig.nvim" -- Editorconfig support
	use "L3MON4D3/LuaSnip" --snippet engine
	use "rafamadriz/friendly-snippets" -- snippets
    use "folke/trouble.nvim" -- beautified warnings and errors
    use "neovim/nvim-lspconfig" -- Configurations for Nvim LSP
    use "jose-elias-alvarez/null-ls.nvim" -- NeoVim as LSP
    use "kevinhwang91/nvim-hlslens" -- Improved Search
    use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
    } -- Comment Out
    -- TODO Make Comment out syntax automatic based on the file extension 
    use {
       'phaazon/hop.nvim',
        branch = 'v2', 
    } -- Page Jumper
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
    use({
      "folke/noice.nvim",
      config = function()
        require("noice").setup({
            lsp = {
            -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
                override = {
                  ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                  ["vim.lsp.util.stylize_markdown"] = true,
                  ["cmp.entry.get_documentation"] = true,
                },
          },
          -- you can enable a preset for easier configuration
          presets = {
            bottom_search = true, -- use a classic bottom cmdline for search
            command_palette = true, -- position the cmdline and popupmenu together
            long_message_to_split = true, -- long messages will be sent to a split
            inc_rename = false, -- enables an input dialog for inc-rename.nvim
            lsp_doc_border = true, -- add a border to hover docs and signature help
          },
        })
      end,
      requires = {
        -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
        "MunifTanjim/nui.nvim",
        -- OPTIONAL:
        --   `nvim-notify` is only needed, if you want to use the notification view.
        --   If not available, we use `mini` as the fallback
        "rcarriga/nvim-notify",
        }
    })  
        
    -- Automatically set up configuration after cloning packer.nvim
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
