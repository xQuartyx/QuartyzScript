repeat task.wait() until game:IsLoaded()

if game.GameId == 9186719164 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xQuartyx/QuartyzScript/main/OneClick/Sailor%20Piece/main.lua"))()
else
    if getgenv().QuartyzV4Config then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xQuartyx/QuartyzScript/main/OneClick/Blox%20Fruits/v4.lua"))()
    else
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xQuartyx/QuartyzScript/main/OneClick/Blox%20Fruits/main.lua"))()
    end
end
