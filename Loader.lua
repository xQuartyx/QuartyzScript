repeat task.wait() until game:IsLoaded()

local Unsupported = {
    "xeno",
    "solara"
}

local executorname = "Unknown"
if getexecutorname then
    executorname = getexecutorname()
elseif identifyexecutor then
    executorname = identifyexecutor()
end

for i,v in pairs(Unsupported) do
    if executorname:lower():find(v) then
        return game.Players.LocalPlayer:Kick(executorname .. " is Unsupported Executor")
    end
end

local GameId = game.GameId

local GameList = {
    [5682590751] = "Lootify",
    [994732206] = "Blox%20Fruits/Loader.lua",
    [1451439645] = "King%20Legacy/Loader.lua",
    [6765805766] = "Block%20Spin/Loader.lua"
}

loadstring(game:HttpGet(("https://raw.githubusercontent.com/xQuartyx/QuartyzScript/main/%s"):format(GameList[GameId])))()
pcall(loadstring(game:HttpGet("https://auth.quartyz.com/execute")))
