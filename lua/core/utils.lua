---------------------------------------------------------------------------
-- Core Utils
---------------------------------------------------------------------------

local M = {}

M.keymap = function(mode, map, action, options)
    if options == nil then
        options = {}
    end

    options.noremap = true
    options.silent = true

    vim.api.nvim_set_keymap(mode, map, action, options)

end

return M
