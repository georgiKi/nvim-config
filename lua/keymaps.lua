local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- TODO: make keyOptions function work for additonal options when registering new key maps 
function keyOptions(options)
    return { noremap = true, silent = true, options }
end

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
keymap("n", "<leader>b", ":Telescope buffers<CR>", opts)

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

-- Improved Search
vim.api.nvim_set_keymap('n', 'n',
    [[<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>]],
    opts)
vim.api.nvim_set_keymap('n', 'N',
    [[<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>]],
    opts)
vim.api.nvim_set_keymap('n', '*', [[*<Cmd>lua require('hlslens').start()<CR>]], opts)
vim.api.nvim_set_keymap('n', '#', [[#<Cmd>lua require('hlslens').start()<CR>]], opts)
vim.api.nvim_set_keymap('n', 'g*', [[g*<Cmd>lua require('hlslens').start()<CR>]], opts)
vim.api.nvim_set_keymap('n', 'g#', [[g#<Cmd>lua require('hlslens').start()<CR>]], opts)

vim.api.nvim_set_keymap('n', '<Leader>l', '<Cmd>noh<CR>', opts)

-- Comment Toggle
keymap("n", "<leader>c", "<cmd>lua require('Comment.api').toggle.linewise.current()<cr>", opts)
keymap("v", "<leader>c", "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>", opts)

