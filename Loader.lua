repeat task.wait() until game:IsLoaded()

local executorname = "Unknown"
if getexecutorname then
    executorname = getexecutorname()
elseif identifyexecutor then
    executorname = identifyexecutor()
end

local FAKE_EXECUTOR = { "xeno", "jjsploit" }

for i,v in pairs(FAKE_EXECUTOR) do
    if executorname:lower():find(v) then
        game.Players.LocalPlayer:Kick("\n\n" .. executorname .. " is not supported")
        return
    end
end

local GameId = game.GameId

local GameList = {
    [5682590751] = "Lootify",
    [994732206] = "Blox%20Fruits/Loader.lua",
    [1451439645] = "King%20Legacy/Loader.lua",
    [6765805766] = "Block%20Spin/Loader.lua",
    [7095682825] = "Beaks/Default.lua"
}

-- local canRequire, err = pcall(require, Instance.new("ModuleScript"))
-- if not canRequire and err == "Cannot require a non-RobloxScript module from a RobloxScript" then
--     local old; old = hookfunction(require, newcclosure(function(...)
--         if checkcaller() then
--             setthreadidentity(2)
--             local result = old(...)
--             setthreadidentity(8)
--             return result
--         end
--         return old(...)
--     end))

--     print("Repair require function")
-- end

loadstring(game:HttpGet(("https://raw.githubusercontent.com/xQuartyx/QuartyzScript/main/%s"):format(GameList[GameId])))()
request({ ["Url"] = "https://auth.quartyz.com/execute?game=" .. GameId .. (getgenv().Mode and " " .. getgenv().Mode or "") .. "&executor=" .. executorname })
