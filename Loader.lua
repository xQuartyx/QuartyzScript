repeat task.wait() until game:IsLoaded()

local GameId = game.GameId

local GameList = {
    [5682590751] = "Lootify",
    [994732206] = "Blox%20Fruits/Loader.lua",
    [1451439645] = "King%20Legacy/Loader.lua",
    [6765805766] = "Block%20Spin/Loader.lua"
}

loadstring(game:HttpGet(("https://raw.githubusercontent.com/xQuartyx/QuartyzScript/main/%s"):format(GameList[GameId])))()
pcall(loadstring(game:HttpGet("https://auth.quartyz.com/execute")))
