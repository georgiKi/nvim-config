local M = {}

--- Use a protected call so we don't error out on first use
M.enabledPlugin = function(packageName)
    local status_ok, pack = pcall(require, packageName)
    
    if not status_ok then
      return false
    end

    return true
end

--- Setup Plugin with provided configuration
M.setupPlugin = function(packageName, config)
    return require(packageName).setup(config)
end

return M
