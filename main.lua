-- init
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("FreeZX Hub", 5013109572)

-- themes
local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(255, 255, 255)
}

-- first page
local page = venyx:addPage("Scripts", 5012544693)
local s = page:addSection("Main")
local d = page:addSection("Games")
local page1 = venyx:addPage("Publication", 5012544693)
local a = page1:addSection("Publication")
-- d
d:addButton("Murder Mystory 2", function()
    if game.PlaceId == 142823291 then
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/Kote324/FreeZX-Hub/main/MM2.lua"),true))()
    end
game.CoreGui.ScreenGui:Destroy() 
end)

d:addButton("Tower of Hell", function()
    if game.PlaceId == 1962086868 then
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/Kote324/FreeZX-Hub/main/Tower%20Of%20Hell.lua"),true))()
    end
	game.CoreGui.ScreenGui:Destroy() 
end)

-- s
s:addButton("Auto Search Game", function()
-- // MM2 \\ --
    if game.PlaceId == 142823291 then
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/Kote324/FreeZX-Hub/main/MM2.lua"),true))()
    end

-- // Tower of Hell \\ --
    if game.PlaceId == 1962086868 then
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/Kote324/FreeZX-Hub/main/Tower%20Of%20Hell.lua"),true))()
    end
game.CoreGui.ScreenGui:Destroy() 
end)

s:addKeybind("Toggle Keybind", Enum.KeyCode.One, function()
print("Activated Keybind")
venyx:toggle()
end, function()
print("Changed Keybind")
end)

-- a
a:addButton("Coming Soon . . .", function()
end)

-- theme
local theme = venyx:addPage("Theme", 5012544693)
local colors = theme:addSection("Colors")

for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
colors:addColorPicker(theme, color, function(color3)
venyx:setTheme(theme, color3)
end)
end

-- load
venyx:SelectPage(venyx.pages[1], true)
