local scriptUrl = "https://raw.githubusercontent.com/LyraHubxxx/ui/refs/heads/main/main_blade.lua"

local success, scriptContent = pcall(function()
    return game:HttpGet(scriptUrl)
end)

if not success then
    warn("[-] Failed to fetch script: " .. tostring(scriptContent))
    return
end

local func, compileErr = loadstring(scriptContent)

if not func then
    warn("[-] Syntax Error: " .. tostring(compileErr))
else
  
    setfenv(func, getgenv())
    
    local runSuccess, runtimeErr = pcall(func)
    if not runSuccess then
        warn("[-] Runtime Error: " .. tostring(runtimeErr))
    end
end
