---------------------------------------------------------------------------
-- Vim Configuration
---------------------------------------------------------------------------
-- shiftwidth = 2,            -- the number of spaces inserted for each indentation
-- tabstop = 2,               -- insert 2 spaces for a tab
-- numberwidth = 2,           -- set number column width to 2 {default 4}

local config = {
  backup = false,
  clipboard = "unnamedplus",   -- allows neovim to access the system clipboard
  completeopt = { "menu", "menuone", "noselect" },
  conceallevel = 0,            -- so that `` is visible in markdown files
  fileencoding = "utf-8",
  hlsearch = true,             -- highlight all matches on previous search pattern
  ignorecase = true,           -- ignore case in search patterns
  mouse = "a",                 -- allow the mouse to be used in neovim
  pumheight = 10,              -- pop up menu height
  showmode = false,            -- we don't need to see things like -- INSERT -- anymore
  showtabline = 0,             -- always show tabs
  smartcase = true,            -- smart case
  smartindent = true,          -- make indenting smarter again
  splitbelow = true,           -- force all horizontal splits to go below current window
  splitright = true,           -- force all vertical splits to go to the right of current window
  swapfile = false,            -- creates a swapfile
  timeoutlen = 100,            -- time to wait for a mapped sequence to complete (in milliseconds)
  undofile = true,             -- enable persistent undo
  updatetime = 200,            -- faster completion (4000ms default)
  writebackup = false,         -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  expandtab = true,            -- convert tabs to spaces
  shiftwidth = 4,              -- the number of spaces inserted for each indentation
  tabstop = 4,                 -- insert 2 spaces for a tab
  cursorline = false,          -- highlight the current line
  number = true,               -- set numbered lines
  relativenumber = false,      -- set relative numbered lines
  numberwidth = 4,             -- set number column width to 2 {default 4}
  signcolumn = "yes",          -- always show the sign column, otherwise it would shift the text each time
  wrap = false,                -- display lines as one long line
  scrolloff = 8,
  sidescrolloff = 8,
  shadafile = "NONE"
}

vim.opt.shortmess:append "c"

for key, value in pairs(config) do
  vim.opt[key] = value
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]

vim.diagnostic.config({
  virtual_lines = true,
  virtual_text = false,
  underline = true,
  float = {
    border = "rounded",
    width = 80
  }
})

-- Cache lua files
vim.loader.enable()

-- Highlight word occurences under cursor
vim.cmd [[autocmd CursorHold * lua vim.lsp.buf.document_highlight()]]
vim.cmd [[autocmd CursorHoldI * lua vim.lsp.buf.document_highlight()]]
vim.cmd [[autocmd CursorMoved * lua vim.lsp.buf.clear_references()]]

-- Fold settings
vim.wo.foldmethod = "expr"
vim.wo.foldexpr = "nvim_treesitter#foldexpr()"
vim.wo.foldtext =
[[substitute(getline(v:foldstart),'\\t',repeat('\ ',&tabstop),'g').'...'.trim(getline(v:foldend)) ]]
vim.wo.fillchars = "fold: "
vim.wo.foldnestmax = 3
vim.wo.foldminlines = 1
vim.wo.foldlevel = 99
