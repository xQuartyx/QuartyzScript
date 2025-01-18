repeat task.wait() until game:IsLoaded()

local GameId = game.GameId

local List = {
    [5682590751] = "Lootify.lua"
}

loadstring(game:HttpGet(("https://raw.githubusercontent.com/xQuartyx/QuartyzScript/main/%s"):format(GameList[GameId])))()
