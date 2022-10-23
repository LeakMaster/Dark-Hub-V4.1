-- Now your members can se how shit your hub is 

local L_25_ = os.clock()
local L_26_ = loadstring(game:HttpGet(("https://raw.githubusercontent.com/RandomAdamYT/DarkHub_V4/main/UILIB")))()
local L_27_ = L_26_:MakeWindow({
	Name = "DarkHub - Firework Simulator!",
	HidePremium = false,
	SaveConfig = true,
	ConfigFolder = "DarkHub"
})
local L_28_ = L_27_:Tab({
	Name = "Auto-Farm"
})
local L_29_ = L_27_:Tab({
	Name = "Character"
})
L_28_:Toggle({
	Name = "Auto-Farm",
	Default = false,
	Save = true,
	Flag = "AutoFarm",
	Callback = function()
	end
})
L_28_:Toggle({
	Name = "Auto-Buy Next Zone",
	Default = false,
	Save = true,
	Flag = "AutoBuyZone",
	Callback = function()
	end
})
L_28_:Toggle({
	Name = "Auto-Equip Best Pet and Delete Rest",
	Default = false,
	Save = true,
	Flag = "AutoEquipPet",
	Callback = function()
	end
})
L_28_:Toggle({
	Name = "Auto-Equip Best Hat and Delete Rest",
	Default = false,
	Save = true,
	Flag = "AutoEquipHat",
	Callback = function()
	end
})
local L_30_ = {}
for L_49_forvar0, L_50_forvar1 in pairs(game:GetService("Players").LocalPlayer.Worlds:GetChildren()) do
	table.insert(L_30_, L_50_forvar1.Name)
end;
L_28_:Dropdown({
	Name = "Zone To Auto-Farm",
	Default = "Spawn",
	Options = L_30_,
	Flag = "FarmZone",
	Callback = function(L_51_arg0)
		print(L_51_arg0)
	end
})
L_29_:Slider({
	Name = "WalkSpeed",
	Min = 23.5,
	Max = 500,
	Default = 23.5,
	Color = Color3.fromRGB(255, 255, 255),
	Increment = 1,
	Callback = function(L_54_arg0)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = L_54_arg0
	end
})
L_29_:Slider({
	Name = "JumpPower",
	Min = 5 + 45,
	Max = 150,
	Default = 5 + 45,
	Color = Color3.fromRGB(255, 255, 255),
	Increment = 1,
	Callback = function(L_61_arg0)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = L_61_arg0
	end
})
spawn(function()
	while task.wait() do
		if L_26_.Flags["AutoBuyZone"].Value then
			for L_62_forvar0, L_63_forvar1 in pairs(game:GetService("Workspace").GameObjects.Dividers:GetChildren()) do
				if L_63_forvar1.ClassName == "Part" then
					if L_63_forvar1:FindFirstChild("SurfaceGui", true) and L_63_forvar1:FindFirstChild("SurfaceGui", true).Enabled then
						if L_63_forvar1:FindFirstChild("SurfaceGui", true).Bar.Percentage.Text == "100%" then
							require(game.ReplicatedStorage.Modules.Network):FireServer("WorldPrompt", L_63_forvar1.Name)
						end
					end
				end
			end
		end
	end
end)
local function L_31_func()
	require(game.ReplicatedStorage.Modules.Network):InvokeServer("EquipBestHats")
	local L_64_ = {}
	for L_65_forvar0, L_66_forvar1 in pairs(game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Menus.Hats.MainList:GetChildren()) do
		if L_66_forvar1:FindFirstChild("Equipped", true) and not L_66_forvar1:FindFirstChild("Equipped", true).Visible then
			table.insert(L_64_, L_66_forvar1.Name)
		end
	end;
	require(game.ReplicatedStorage.Modules.Network):InvokeServer("DeleteHats", L_64_)
end;
local function L_32_func()
	require(game.ReplicatedStorage.Modules.Network):InvokeServer("EquipBest")
	local L_67_ = {}
	for L_68_forvar0, L_69_forvar1 in pairs(game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Menus.Pets.MainList:GetChildren()) do
		if L_69_forvar1:FindFirstChild("Equipped", true) and not L_69_forvar1:FindFirstChild("Equipped", true).Visible then
			table.insert(L_67_, L_69_forvar1.Name)
		end
	end;
	require(game.ReplicatedStorage.Modules.Network):InvokeServer("DeletePets", L_67_)
end;
spawn(function()
	while task.wait(1) do
		if L_26_.Flags["AutoEquipHat"].Value then
			L_31_func()
		end;
		if L_26_.Flags["AutoEquipPet"].Value then
			L_32_func()
		end
	end
end)
spawn(function()
	while task.wait(L_26_.Flags["EggDelay"].Value) do
		if L_26_.Flags["OpenEgg"].Value then
			require(game.ReplicatedStorage.Modules.Network):InvokeServer("OpenEgg", EggFarm, EggValue, {})
		end
	end
end)
local L_33_;
L_33_ = hookmetamethod(game, "__namecall", function(L_71_arg0, ...)
	local L_72_ = {
		...
	}
	local L_73_ = getnamecallmethod()
	if tostring(L_71_arg0) == "UDPSocket" and getnamecallmethod() == "FireServer" then
		return wait(387420489)
	end;
	if tostring(L_71_arg0) == "GameAnalyticsError" and getnamecallmethod() == "FireServer" then
		return wait(5 + 4)
	end;
	if getnamecallmethod() == "Kick" or getnamecallmethod() == "kick" then
		return wait(9)
	end;
	return L_33_(L_71_arg0, ...)
end)
local L_34_;
L_34_ = hookmetamethod(game, "__index", function(L_78_arg0, L_79_arg1)
	if tostring(L_78_arg0) == "Humanoid" and L_79_arg1 == "WalkSpeed" then
		return wait(5 + 4)
	end;
	return L_34_(L_78_arg0, L_79_arg1)
end)
local function L_35_func()
	local L_83_ = {}
	for L_85_forvar0, L_86_forvar1 in pairs(game:GetService("Players").LocalPlayer.Worlds:GetChildren()) do
		table.insert(L_83_, L_86_forvar1.Name)
	end;
	local L_84_ = "Spawn"
	if table.find(L_83_, "Heaven") then
		L_84_ = "Heaven"
	elseif table.find(L_83_, "Great Glacier") then
		L_84_ = "Great Glacier"
	elseif table.find(L_83_, "Great Glacier") then
		L_84_ = "Great Glacier"
	elseif table.find(L_83_, "Sakura") then
		L_84_ = "Sakura"
	elseif table.find(L_83_, "Royal Kingdom") then
		L_84_ = "Royal Kingdom"
	elseif table.find(L_83_, "Friendly Farm") then
		L_84_ = "Friendly Farm"
	elseif table.find(L_83_, "Candy Cavern") then
		L_84_ = "Candy Cavern"
	elseif table.find(L_83_, "Frosty Forest") then
		L_84_ = "Frosty Forest"
	elseif table.find(L_83_, "Dusty Desert") then
		L_84_ = "Dusty Desert"
	elseif table.find(L_83_, "Atlantis") then
		L_84_ = "Atlantis"
	elseif table.find(L_83_, "The Beach") then
		L_84_ = "The Beach"
	elseif table.find(L_83_, "Spawn") then
		L_84_ = "Spawn"
	end;
	if L_26_.Flags["FarmZone"].Value == "" then
		return L_84_
	else
		return L_26_.Flags["FarmZone"].Value
	end
end;
print("start!")
local function L_36_func()
	local L_222_ = math.huge;
	local L_223_;
	for L_224_forvar0, L_225_forvar1 in ipairs(game:GetService("Workspace").GameObjects.Areas[L_35_func()].Items:GetChildren()) do
		if L_225_forvar1:FindFirstChild("Hitbox") then
			local L_226_ = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - L_225_forvar1:FindFirstChildOfClass("Part").Position).Magnitude;
			if L_226_ < L_222_ then
				L_222_ = L_226_;
				L_223_ = L_225_forvar1
			end
		end
	end;
	return L_223_
end;
local function L_37_func()
	local L_227_ = math.huge;
	local L_228_;
	for L_229_forvar0, L_230_forvar1 in ipairs(game:GetService("Workspace").Orbs:GetChildren()) do
		if L_230_forvar1.ClassName == "Part" then
			local L_231_ = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - L_230_forvar1.Position).Magnitude;
			if L_231_ < L_227_ then
				L_227_ = L_231_;
				L_228_ = L_230_forvar1
			end
		end
	end;
	return L_228_
end;
local L_38_ = require(game.ReplicatedStorage.Modules.Signal)
CanAttack = true
spawn(function()
	while task.wait() do
		if L_26_.Flags["AutoFarm"].Value then
			pcall(function()
				if #game:GetService("Workspace").Orbs:GetChildren() >= 5 + 95 then
					CanAttack = false
					repeat
						L_38_.Fire("NewTele", L_37_func().Position)
						L_38_.Fire("Teleport")
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(L_37_func().Position)
						wait()
					until #game:GetService("Workspace").Orbs:GetChildren() <= 1
					CanAttack = true
				else
					if CanAttack then
						L_38_.Fire("NewTele", L_36_func():FindFirstChild("Hitbox", true).Position + Vector3.new(0, 3, 0 + 0))
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(L_36_func():FindFirstChild("Hitbox", true).Position + Vector3.new(0 + 0, 3 + 0, 0))
						require(game:GetService("ReplicatedStorage").Modules.Network):FireServer("Hit", L_36_func())
					end
				end
			end)
		end
	end
end)
for L_291_forvar0 = 1, 5 do
	wait(.2)
	require(game.ReplicatedStorage.Modules.Signal).Fire("Notification", "Thanks for using DarkHub", Color3.fromRGB(math.random(1, 5 + 220), math.random(1, 225), math.random(1, 5 + 220)), "Notify")
end;
print("DarkHub took " .. math.round(os.clock() - L_25_) .. "s to load!")
L_26_:Init()
