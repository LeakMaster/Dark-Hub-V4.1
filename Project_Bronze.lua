-- Who are we, The lua Killers haha  


Get = game:GetService("ReplicatedStorage").GET;
function GetMainData()
	for L_39_forvar0, L_40_forvar1 in pairs(debug.getregistry()) do
		if typeof(L_40_forvar1) == "function" then
			for L_41_forvar0, L_42_forvar1 in pairs(debug.getupvalues(L_40_forvar1)) do
				if typeof(L_42_forvar1) == "table" and rawget(L_42_forvar1, "Fishing") then
					return L_42_forvar1
				end
			end
		end
	end
end;
local L_17_ = GetMainData()
local L_18_ = debug.getupvalue(L_17_["Network"]["getAuthKey"], 1)
local L_19_ = loadstring(game:HttpGet(("https://raw.githubusercontent.com/shlexware/Orion/main/source")))()
local L_20_ = L_19_:MakeWindow({
	Name = "DarkHub | Project Bronze Forever",
	HidePremium = true,
	SaveConfig = true,
	ConfigFolder = "DHPBF"
})
local function L_21_func()
	local L_43_ = Game["ReplicatedStorage"]["GET"]
	local L_44_ = {
		[1] = L_18_,
		[2 + 0] = "PDS",
		[3] = "getPartyPokeBalls"
	}
	L_43_:InvokeServer(unpack(L_44_))
end;
local function L_22_func()
	local L_48_ = Game["ReplicatedStorage"]["POST"]
	local L_49_ = {
		[1] = L_18_,
		[2] = "PDS",
		[3] = "completedEggCycle"
	}
	L_48_:FireServer(unpack(L_49_))
end;
local L_23_ = L_20_:MakeTab({
	Name = "Healing Cheats",
	Icon = "rbxassetid://5765543334",
	PremiumOnly = false
})
L_23_:AddToggle({
	Name = "AutoHeal Pokemon",
	Default = false,
	Save = true,
	Flag = "autoHeal"
})
L_23_:AddButton({
	Name = "Heal Pokemon Manually",
	Callback = function()
		L_21_func()
	end
})
L_23_:AddLabel("^ (Must heal when not in battle)")
local L_24_ = L_20_:MakeTab({
	Name = "Hatching Cheats",
	Icon = "rbxassetid://371550236",
	PremiumOnly = false
})
L_24_:AddToggle({
	Name = "Increase Hatching Speed (AutoComplete Cycles)",
	Default = false,
	Save = true,
	Flag = "repeatEggCycles"
})
L_24_:AddButton({
	Name = "Complete 1 Egg Cycle",
	Callback = function()
		L_22_func()
	end
})
L_24_:AddLabel("^ (Move around with AutoComplete on for best results!)")
shared.amount = 10000
local L_25_ = L_20_:MakeTab({
	Name = "Inf TIX/Money",
	Icon = "rbxassetid://231846544",
	PremiumOnly = false
})
L_25_:AddLabel("As of June 17, 2022, no TIX awards in Arcade. Cheat broken")
L_25_:AddLabel("NOTE: You may need to reach Anthian City to use this!")
L_25_:AddDropdown({
	Name = "Amount of TIX to generate...",
	Default = "10000",
	Options = {
		"10000",
		"100000",
		"1000000"
	},
	Callback = function(L_52_arg0)
		shared.amount = L_52_arg0
	end
})
L_25_:AddButton({
	Name = "Generate Arcade TIX",
	Callback = function()
		local L_53_ = Game["ReplicatedStorage"]["GET"]
		local L_54_ = {
			[1] = L_18_,
			[2] = "PDS",
			[3] = "AlolanReward",
			[4] = tonumber(shared.amount / 2)
		}
		L_53_:InvokeServer(unpack(L_54_))
	end
})
L_25_:AddParagraph("How to use Infinite Arcade TIX Exploit", [[ 
To generate Arcade TIX...
  1. Select desired amount of Arcade TIX.
  2. Press Generate Arcade TIX.
  3. Spend it freely in the prize shop located inside the Golden Pokeball Arcade at Anthian City (4th Gym).
But to turn that TIX into pokedollars, follow the steps below:
  4. Buy 99 of all six Anklets. Not enough TIX for that? Generate some more!
  5. Go to the Pokeball Emporium or a Pokecenter.
  6. Sell all the Power anklets for EASY PROFIT!!!]])
local L_26_ = L_20_:MakeTab({
	Name = "SS Trolling",
	Icon = "rbxassetid://448334599",
	PremiumOnly = false
})
L_26_:AddLabel("Since other players can see these mods, there is a ban risk!")
L_26_:AddLabel("Submarine/UMV Morph (SERVERSIDED!)")
L_26_:AddToggle({
	Name = "Enable Submarine/UMV Morph",
	Default = false,
	Save = true,
	Flag = "subMorph",
	Callback = function(L_56_arg0)
		local L_57_ = Game["ReplicatedStorage"]["GET"]
		local L_58_ = {
			[1] = L_18_,
			[2] = "ToggleSubmarine",
			[3] = L_56_arg0
		}
		L_57_:InvokeServer(unpack(L_58_))
	end
})
local L_27_ = "Battling"
local L_28_ = Color3.fromRGB(255, 255, 255)
L_26_:AddLabel("Custom Player Title (SERVERSIDED!)")
L_26_:AddDropdown({
	Name = "Choose Text of Player Title...",
	Default = "Battling",
	Options = {
		"Battling",
		"Trading"
	},
	Callback = function(L_61_arg0)
		L_27_ = L_61_arg0
	end
})
L_26_:AddColorpicker({
	Name = "Choose Color of Player Title...",
	Default = Color3.fromRGB(255, 255, 255),
	Save = true,
	Flag = "titleColor",
	Callback = function(L_63_arg0)
		L_28_ = L_63_arg0
	end
})
L_26_:AddButton({
	Name = "Create/Update Custom Player Title",
	Callback = function()
		local L_64_ = Game["ReplicatedStorage"]["POST"]
		local L_65_ = {
			[1] = L_18_,
			[2] = "UpdateTitle",
			[3 + 0] = L_27_,
			[4] = L_28_
		}
		L_64_:FireServer(unpack(L_65_))
	end
})
L_26_:AddButton({
	Name = "Delete Custom Player Title",
	Callback = function()
		local L_71_ = Game["ReplicatedStorage"]["POST"]
		local L_72_ = {
			[1 + 0] = L_18_,
			[2 + 0] = "UpdateTitle",
			[3] = true
		}
		L_71_:FireServer(unpack(L_72_))
	end
})
local L_29_ = L_20_:MakeTab({
	Name = "Info/Options",
	Icon = "rbxassetid://448334599",
	PremiumOnly = false
})
L_29_:AddParagraph("About GUI:", " 
Version: v1.0
Last Updated: June 17th, 2022
" .. [[]])
L_29_:AddParagraph("Credits:", " 
UI Library: Orion
Scripts: oof4dayz Software (Third-party developer for Dark Hub)
" .. [[]])
L_19_:Init()
while true do
	if L_19_.Flags["autoHeal"].Value == true then
		L_21_func()
	end;
	if L_19_.Flags["repeatEggCycles"].Value == true then
		L_22_func()
	end;
	wait(0.5)
end
