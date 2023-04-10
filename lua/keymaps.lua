local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<§>", "<Nop>", opts)
vim.g.mapleader = "§"
vim.g.maplocalleader = "§"

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
keymap("n", "<leader>g", ":LazyGit<cr>", opts)
keymap("n", "<leader>o", ":SymbolsOutline<cr>", opts)

-- Resize with arrows
keymap("n", "<Up>", ":resize +2<CR>", opts)
keymap("n", "<Down>", ":resize -2<CR>", opts)
keymap("n", "<Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<S-j>", ":m .+1<CR>==", opts)
keymap("v", "<S-k>", ":m .-2<CR>==", opts)

-- Persist copied value in clipboard
keymap("v", "p", '"_dP', opts)

-- Move to previous/next
keymap("n", "<C-,>", ":BufferPrevious<cr>", opts)
keymap("n", "<C-.>", ":BufferNext<cr>", opts)
keymap("n", "<C-/>", ":BufferClose<cr>", opts)

-- Telescope
keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<leader>i", ":Telescope live_grep<CR>", opts)

-- Hop
keymap("n", "<leader>h", ":HopWord <CR>", opts)

-- Trouble
keymap("n", "<leader>t", ":Trouble <CR>", opts)
keymap("n", "<leader>tr", ":TroubleClose <CR>", opts)

-- Goto definition
keymap('n', '<leader>I', "vim.lsp.buf.implementation <CR>", opts)

-- LSP
keymap("n", "<leader>d", "<cmd>lua vim.lsp.buf.definition()<cr>", opts)
keymap("n", "<leader>r", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
keymap("n", "<leader>p", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
