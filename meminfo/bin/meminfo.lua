local function readable_fs(size)
    local units = {"B", "kB", "MB", "GB", "TB", "PB", "EB"} 

    size = size * 1024

    local i = 0
    while size > 1024 do
        size = size / 1024
        i = i + 1
    end

    return string.format("%.02f %s", size, units[i])      
end

local computer = require("computer")

print("Total memory: " .. readable_fs(computer.totalMemory()))
print("Free memory: " .. readable_fs(computer.freeMemory()))
print("Used memory: " .. readable_fs(computer.totalMemory() - computer.freeMemory()))