local func = require('module_example')

function update()
    func()
    return update, 1000
end

return update()