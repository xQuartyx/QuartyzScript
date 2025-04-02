repeat task.wait() until game:IsLoaded()

local GameId = game.GameId

local GameList = {
    [5682590751] = "Lootify",
    [994732206] = "/Blox%20Fruits/Loader.lua"
}

loadstring(game:HttpGet(("https://raw.githubusercontent.com/xQuartyx/QuartyzScript/main/%s"):format(GameList[GameId])))()
