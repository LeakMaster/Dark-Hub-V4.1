-- Really dark hub, we fixed all your bugs, Enjoy!

local L_3_ = loadstring(game:HttpGet(("https://raw.githubusercontent.com/RandomAdamYT/DarkHub_V4/main/UILIB")))()
local L_4_ = L_3_:MakeWindow({
	Name = "DARKHUB V4",
	HidePremium = false,
	SaveConfig = true,
	ConfigFolder = "DARKHUB"
})
local L_5_ = false
local L_6_ = 0;
local L_7_ = 0
local L_8_ = false
local L_9_ = 100
local L_10_ = 100;
local L_11_ = 100
local L_12_ = 5;
local L_13_ = 100
local L_14_ = 100
local L_15_ = 10;
local L_16_ = 10000
local L_17_ = L_4_:Tab({
	Name = "DataStore Editor"
})
local L_18_ = L_4_:Tab({
	Name = "Extra"
})
L_18_:Toggle({
	Name = "Spoof Data (Visually Change age or cash to all clients)",
	Default = false,
	Flag = "Spoof"
})
L_18_:Textbox({
	Name = "Spoofed Age",
	TextDisappear = true,
	Callback = function(L_20_arg0)
		L_15_ = tonumber(L_20_arg0)
	end
})
L_18_:Textbox({
	Name = "Spoofed Cash",
	TextDisappear = true,
	Callback = function(L_21_arg0)
		L_16_ = tonumber(L_21_arg0)
	end
})
local L_19_;
L_19_ = hookmetamethod(game, "__namecall", function(L_22_arg0, ...)
	local L_23_ = {
		...
	}
	local L_24_ = getnamecallmethod()
	if tostring(L_22_arg0) == "UpdateHaha" and getnamecallmethod() == "FireServer" and L_3_.Flags["Spoof"].Value then
		L_23_[1] = L_16_;
		L_23_[2] = L_15_;
		return L_22_arg0.FireServer(L_22_arg0, unpack(L_23_))
	end;
	return L_19_(L_22_arg0, ...)
end)
L_17_:Textbox({
	Name = "Rent",
	TextDisappear = true,
	Callback = function(L_25_arg0)
		L_6_ = tonumber(L_25_arg0)
	end
})
L_17_:Textbox({
	Name = "Age",
	TextDisappear = true,
	Callback = function(L_26_arg0)
		L_7_ = tonumber(L_26_arg0)
	end
})
L_17_:Textbox({
	Name = "Happiness",
	TextDisappear = true,
	Callback = function(L_27_arg0)
		L_9_ = tonumber(L_27_arg0)
	end
})
L_17_:Textbox({
	Name = "Hunger",
	TextDisappear = true,
	Callback = function(L_28_arg0)
		L_10_ = tonumber(L_28_arg0)
	end
})
L_17_:Textbox({
	Name = "Cleanliness",
	TextDisappear = true,
	Callback = function(L_29_arg0)
		L_11_ = tonumber(L_29_arg0)
	end
})
L_17_:Textbox({
	Name = "CashAdder",
	TextDisappear = true,
	Callback = function(L_30_arg0)
		L_12_ = tonumber(L_30_arg0)
	end
})
L_17_:Textbox({
	Name = "Energy",
	TextDisappear = true,
	Callback = function(L_31_arg0)
		L_13_ = tonumber(L_31_arg0)
	end
})
L_17_:Textbox({
	Name = "Player Cash",
	TextDisappear = true,
	Callback = function(L_32_arg0)
		L_14_ = tonumber(L_32_arg0)
	end
})
L_17_:Toggle({
	Name = "Complete Tutorial",
	Default = true,
	Flag = "Tutorial"
})
L_17_:Toggle({
	Name = "Unlock All Products",
	Default = true,
	Flag = "AProducts"
})
L_17_:Button({
	Name = "Set New DataSave",
	Callback = function()
		for L_33_forvar0 = 1, 10 do
			if L_3_.Flags["Tutorial"].Value and L_3_.Flags["AProducts"].Value then
				game:GetService("ReplicatedStorage").Save:FireServer({
					["BadGraphics"] = false,
					["Products"] = {
						["El Gatooo"] = 1,
						["Ralph\\'s Fertilizer"] = 1,
						["Laser Pointer"] = 1,
						["Trollars"] = 1,
						["Pet Fishing Rod"] = 1,
						["Andrew Tate"] = 1,
						["Spanish Dictionary"] = 1,
						["Golden Toilet"] = 1,
						["Meme School"] = 1,
						["Her Majesty's Revenue & Customs"] = 1,
						["Clown"] = 1,
						["Her Majesty's Bank"] = 1,
						["Her Majesty\\'s Loyal Sprinklers"] = 1,
						["Social Media Account"] = 1,
						["Troll Button"] = 1,
						["Lazy Roomie"] = 1,
						["Romanian Dictionary"] = 1,
						["Megumin"] = 1,
						["Bonking Bat"] = 1,
						["amogus"] = 1,
						["Blasting Core"] = 1,
						["Pet Maid"] = 1,
						["Superpowers"] = 1
					},
					["Rent"] = L_6_,
					["Age"] = L_7_,
					["TutorialsViewed"] = {
						[1] = "Join",
						[2] = "Upgrades",
						[3] = "Food",
						[4] = "Bath",
						[5] = "Sad",
						[6] = "EndingTutorial",
						[7] = "Farm",
						[8] = "Ending"
					},
					["Happiness"] = L_9_,
					["customBloppaID"] = game.Players.LocalPlayer.UserId,
					["Hunger"] = L_10_,
					["Cleanliness"] = Cleanliness,
					["CashAdder"] = L_12_,
					["PlayedAnimation"] = false,
					["Energy"] = L_13_,
					["Cash"] = L_14_
				}, true)
			elseif L_3_.Flags["Tutorial"].Value and not L_3_.Flags["AProducts"].Value then
				game:GetService("ReplicatedStorage").Save:FireServer({
					["BadGraphics"] = false,
					["Products"] = {},
					["Rent"] = L_6_,
					["Age"] = L_7_,
					["TutorialsViewed"] = {
						[1] = "Join",
						[2] = "Upgrades",
						[3] = "Food",
						[4] = "Bath",
						[5] = "Sad",
						[6] = "EndingTutorial",
						[7] = "Farm",
						[8] = "Ending"
					},
					["Happiness"] = L_9_,
					["customBloppaID"] = game.Players.LocalPlayer.UserId,
					["Hunger"] = L_10_,
					["Cleanliness"] = Cleanliness,
					["CashAdder"] = L_12_,
					["PlayedAnimation"] = false,
					["Energy"] = L_13_,
					["Cash"] = L_14_
				}, true)
			elseif not L_3_.Flags["Tutorial"].Value and L_3_.Flags["AProducts"].Value then
				game:GetService("ReplicatedStorage").Save:FireServer({
					["BadGraphics"] = false,
					["Products"] = {
						["El Gatooo"] = 1,
						["Ralph\\\'s Fertilizer"] = 1,
						["Laser Pointer"] = 1,
						["Trollars"] = 1,
						["Pet Fishing Rod"] = 1,
						["Andrew Tate"] = 1,
						["Spanish Dictionary"] = 1,
						["Golden Toilet"] = 1,
						["Meme School"] = 1,
						["Her Majesty's Revenue & Customs"] = 1,
						["Clown"] = 1,
						["Her Majesty's Bank"] = 1,
						["Her Majesty\\\'s Loyal Sprinklers"] = 1,
						["Social Media Account"] = 1,
						["Troll Button"] = 1,
						["Lazy Roomie"] = 1,
						["Romanian Dictionary"] = 1,
						["Megumin"] = 1,
						["Bonking Bat"] = 1,
						["Pet Maid"] = 1,
						["Superpowers"] = 1
					},
					["Rent"] = L_6_,
					["Age"] = L_7_,
					["TutorialsViewed"] = {},
					["Happiness"] = L_9_,
					["customBloppaID"] = game.Players.LocalPlayer.UserId,
					["Hunger"] = L_10_,
					["Cleanliness"] = Cleanliness,
					["CashAdder"] = L_12_,
					["PlayedAnimation"] = false,
					["Energy"] = L_13_,
					["Cash"] = L_14_
				}, true)
			end
		end;
		game:GetService("TeleportService"):Teleport(game.PlaceId)
	end
})
