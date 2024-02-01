local loaded_files = {}
local files = {}
local require = function(name)
    if loaded_files[name] == nil then
        loaded_files[name] = files[name]()
    end
    return loaded_files[name]
end
files['module_example'] = function(...)
    
    
    
    function func()
        gcs:send_text(6, "function called from module")
    end
    
    return func
end
local func = require('module_example')

function update()
    func()
    return update, 1000
end

return update()