--example for lua for orionlib



local player = game.Players.Localplayer

--ui
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Title of the library", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})




_G.Key = "exampe"
_G.KeyImput = "string"


--made notifications
OrionLib:MakeNotification({
	Name = "Login Notification",
	Content = "Login as: "..player.Name,
	Image = "rbxassetid://4483345998",
	Time = 5
})

OrionLib:MakeNotification({
	Name = "thanks For using yourname"..player.Name,
	Content = "1.0",
	Image = "rbxassetid://4483345998",
	Time = 5
})


--tabs
local keyTab = Window:MakeTab({
	Name = "Key",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--sections
local keySection = Tab:AddSection({
	Name = "key"
})

--others
keySection:AddButton({
	Name = "Check Key",
	Callback = function()
if _G.KeyImput == _G.Key then
        YourScripthub()
        else
        print("wrong key bro :(")
    end    
})
  
  keySection:AddTextbox({
	Name = "key imput",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		_G.KeyImput = Value
	end	  
})
  
  function YourScripthub()
    --tabs
    local yourtab = Window:MakeTab({
	Name = "player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
    --others
   yourTab:AddToggle({
	Name = "kick all players tab",
	Default = false,
	Callback = function(Value)
		player:kick("haha kicked by: "..player.Name)
	end    
})
    end
  
0rionLib:Init()
