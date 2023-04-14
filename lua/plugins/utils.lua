---------------------------------------------------------------------------
-- Plugin Utils
---------------------------------------------------------------------------

local M = {}

M.setupPlugin = function(packageName, config, artifactsFunc)
    return function()
        require(packageName).setup(config)

        if artifactsFunc then 
            artifactsFunc()
        end
    end
end

return M
