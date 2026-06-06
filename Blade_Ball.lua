-- [Bulletproof Obfuscator Loader]
-- We use getgenv() to force the script to use the real Roblox executor commands,
-- bypassing the obfuscator's fake environment entirely.

local G = getgenv()
local targetUrl = "https://raw.githubusercontent.com/LyraHubxxx/ui/refs/heads/main/main_blade.lua"

-- Fetch and load explicitly from the global environment
local scriptCode = G.game:HttpGet(targetUrl)
local executable = G.loadstring(scriptCode)

-- Run it
executable()
