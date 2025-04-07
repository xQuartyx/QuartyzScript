if Mode == "PVP" then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xQuartyx/QuartyzScript/main/Blox%20Fruits/Combat.lua"))()
elseif Mode == "OneClick" then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xQuartyx/QuartyzScript/refs/heads/main/Blox%20Fruits/Oneclick.lua"))()
else
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xQuartyx/QuartyzScript/main/Blox%20Fruits/Default.lua"))()
end
