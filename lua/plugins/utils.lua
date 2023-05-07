---------------------------------------------------------------------------
-- Plugin Utils
---------------------------------------------------------------------------

local M = {}

M.setupPlugin = function(name, config, artifactsFunc)
    return function()
        if name then
            local status_ok, plugin = pcall(require, name)

            if not status_ok then
                print("Plugin was not loaded correctly", name)
                return
            end

            if config then
                plugin.setup(config)
            end

            if artifactsFunc then
                artifactsFunc(plugin)
            end

            return
        end

        if artifactsFunc then
            artifactsFunc()
        end
    end
end

return M
