-- Skids your welcome take some shit 

local L_3_ = loadstring(game:HttpGet("https://raw.githubusercontent.com/NougatBitz/BitzUtils/main/kiriot22Esp"))()
do
	L_3_.Players = true
	L_3_:Toggle(false)
end;
local L_4_ = function()
end;
local L_5_, L_6_ = loadstring(game.HttpGet(game, "https://raw.githubusercontent.com/NougatBitz/BitzUtils/main/EditedOrionLib.lua"))()
L_5_.Flags["NoDelay"] = {
	Value = false
}
local L_7_ = L_5_:MakeWindow({
	Name = "DarkHub";
	IntroText = "DarkHub";
	HidePremium = true;
	SaveConfig = false
})
local L_8_ = L_7_:MakeTab({
	Name = "Combat";
	Icon = L_5_.Icons.Combat
})
L_8_:AddToggle({
	Name = "Kill all";
	Flag = "KillAll";
	Callback = L_4_
})
L_8_:AddSection({
	Name = "Revolver Mods"
})
L_8_:AddToggle({
	Name = "Fast Reload";
	Flag = "FastReload";
	Callback = L_4_
})
L_8_:AddButton({
	Name = "No Shoot Delay";
	Flag = "NoDelay";
	Callback = function()
		L_5_.Flags["NoDelay"] = {
			Value = true
		}
	end
})
L_8_:AddSection({
	Name = "God Mode"
})
L_8_:AddToggle({
	Name = "God Mode";
	Flag = "Godmode";
	Callback = L_4_
})
L_8_:AddToggle({
	Name = "Delay Godmode";
	Flag = "GodmodeDelay";
	Callback = function(L_39_arg0)
		if L_39_arg0 then
			L_5_:MakeNotification({
				Name = "Delay Godmode!";
				Content = "This makes sure that your Revolver doesn't break, might make you vulnerable to others using kill all.";
				Image = "rbxassetid://4483345998";
				Time = 5
			})
		end
	end
})
L_8_:AddSection({
	Name = "Silent Aimbot"
})
L_8_:AddToggle({
	Name = "Silent Aimbot";
	Flag = "SilentAim";
	Callback = L_4_
})
L_8_:AddToggle({
	Name = "Use FOV";
	Flag = "UseFOV";
	Default = true;
	Callback = L_4_
})
L_8_:AddSlider({
	Name = "FOV";
	Min = 10;
	Max = 1000;
	Default = 200;
	Flag = "FOV";
	Callback = L_4_
})
local L_9_ = L_7_:MakeTab({
	Name = "Visuals";
	Icon = L_5_.Icons.Visuals
})
L_9_:AddToggle({
	Name = "ESP (still ty kiriot)";
	Flag = "ESP";
	Callback = function(L_40_arg0)
		L_3_:Toggle(L_40_arg0)
	end
})
local L_10_ = L_7_:MakeTab({
	Name = "Others";
	Icon = L_5_.Icons.Others
})
L_10_:AddButton({
	Name = "Lag/Crash Server";
	Flag = "Lag";
	Callback = function()
		L_6_:Fire("AddButton", "Lag", "Ok")
	end
})
local L_11_ = game;
local L_12_ = L_11_.GetService;
local L_13_ = L_11_.FindFirstChild;
local L_14_ = L_11_.FindFirstChildOfClass;
local L_15_ = L_12_(L_11_, "Players")
local L_16_ = L_12_(L_11_, "Workspace")
local L_17_ = L_12_(L_11_, "RunService")
local L_18_ = L_12_(L_11_, "UserInputService")
local L_19_ = L_12_(L_11_, "ReplicatedStorage")
local L_20_ = L_15_.GetPlayers;
local L_21_ = L_13_(L_19_, "GameContent")
local L_22_ = L_13_(L_21_, "KnifeContent")
local L_23_ = L_13_(L_19_, "GameEvents")
local L_24_ = L_13_(L_23_, "Gameplay")
local L_25_ = L_13_(L_23_, "Misk")
local L_26_ = L_16_.CurrentCamera;
local L_27_ = L_15_.LocalPlayer;
local L_28_ = L_27_:GetMouse()
local L_29_ = getrenv()._G;
local L_30_ = Drawing.new("Circle")
L_30_.Color = Color3.fromRGB(255, 255, 255)
L_30_.Radius = L_5_.Flags.FOV.Value;
L_30_.Thickness = 0.5
L_30_.NumSides = 16
L_30_.Filled = false
L_30_.Transparency = 1
local L_31_ = {
	Connections = {};
	Paused = {}
}
do
	function L_31_.Clear(L_41_arg0)
		local L_42_ = 0
		for L_43_forvar0, L_44_forvar1 in next, L_41_arg0.Connections do
			L_42_ = L_42_ + 1
			L_44_forvar1.Connection:Disconnect()
			table.remove(L_41_arg0.Connections, L_42_)
		end
	end;
	function L_31_.Add(L_45_arg0, L_46_arg1, L_47_arg2, L_48_arg3)
		local L_49_, L_50_, L_51_ = L_46_arg1, L_47_arg2, L_48_arg3;
		if type(L_47_arg2) == "string" then
			L_50_ = L_49_[L_47_arg2]
			local L_52_;
			L_52_ = L_50_.Connect(L_50_, function(...)
				if L_45_arg0.Paused[L_52_] == true then
					return
				end;
				L_51_(...)
			end)
			L_45_arg0.Connections[# L_45_arg0.Connections + 1] = {
				Object = L_46_arg1;
				Connection = L_52_
			}
			return L_52_
		else
			L_51_ = L_47_arg2;
			L_50_ = L_46_arg1;
			local L_53_;
			L_53_ = L_50_.Connect(L_50_, function(...)
				if L_45_arg0.Paused[L_53_] == true then
					return
				end;
				L_51_(...)
			end)
			L_45_arg0.Connections[# L_45_arg0.Connections + 1] = {
				Connection = L_53_
			}
			return L_53_
		end
	end;
	function L_31_.Stop(L_54_arg0, L_55_arg1)
		for L_56_forvar0, L_57_forvar1 in next, L_54_arg0.Connections do
			if L_55_arg1 and L_55_arg1(L_57_forvar1.Object) or (true) then
				L_54_arg0.Paused[L_57_forvar1.Connection] = true
			end
		end
	end;
	function L_31_.Start(L_58_arg0)
		for L_59_forvar0, L_60_forvar1 in next, L_58_arg0.Connections do
			if L_58_arg0.Paused[L_60_forvar1.Connection] then
				L_58_arg0.Paused[L_60_forvar1.Connection] = false
			end
		end
	end;
	function L_31_.Remove(L_61_arg0, L_62_arg1)
		local L_63_ = 0
		for L_64_forvar0, L_65_forvar1 in next, L_61_arg0.Connections do
			L_63_ = L_63_ + 1 + 0;
			if L_65_forvar1.Object == L_62_arg1 then
				L_65_forvar1.Connection:Disconnect()
				table.remove(L_61_arg0.Connections, L_63_)
			end
		end
	end
end;
function StabPlayer(L_66_arg0, L_67_arg1)
	local L_68_ = L_66_arg0 and L_13_(L_66_arg0, "ClientEvent")
	if L_68_ then
		local L_69_ = L_67_arg1 and L_13_(L_67_arg1, "Torso")
		if (not L_69_) then
			return
		end;
		local L_70_ = L_29_.attackIDCounter + 1
		L_29_.attackIDCounter = L_70_;
		L_68_:FireServer("StartCharge", {})
		L_68_:FireServer("ChargeRelease", {
			0.1,
			true,
			nil,
			nil,
			nil,
			L_70_
		})
		L_24_.DamageRequest:FireServer({
			["AttackType"] = "Slash";
			["PowerName"] = "DefaultKnifePower";
			["DamageType"] = "Knife";
			["WeaponSkin"] = "StockKnife";
			["hitPart"] = "Torso";
			["attackID"] = L_70_;
			["HitVelocity"] = Vector3.zero;
			["HitPoint"] = L_69_.CFrame;
			["TargetCharacter"] = L_67_arg1;
			["Damage"] = 100
		})
	end
end;
function LagServer()
	for L_71_forvar0 = 1, 700 do
		L_25_.InventoryChange:FireServer("Unequip", "6", "1")
	end
end;
function GetTarget()
	local L_72_, L_73_ = nil, L_5_.Flags.UseFOV.Value and L_5_.Flags.FOV.Value or math.huge;
	for L_74_forvar0, L_75_forvar1 in pairs(L_20_(L_15_)) do
		if (L_75_forvar1 == L_27_) then
			continue
		end;
		if (not L_75_forvar1.Character) then
			continue
		end;
		local L_76_ = L_13_(L_75_forvar1.Character, "HumanoidRootPart")
		if (not L_76_) then
			continue
		end;
		local L_77_, L_78_ = L_26_.WorldToScreenPoint(L_26_, L_76_.Position)
		if L_78_ then
			local L_79_ = (Vector2.new(L_77_.X, L_77_.Y) - Vector2.new(L_28_.X, L_28_.Y)).Magnitude;
			if L_79_ < L_73_ then
				L_72_ = L_75_forvar1;
				L_73_ = L_79_
			end
		end
	end;
	return L_72_
end;
function EquipTool(L_80_arg0)
	pcall(function()
		L_27_.Character.Humanoid:UnequipTools()
	end)
	if not L_80_arg0 then
		return
	end;
	local L_81_ = L_13_(L_27_.Backpack, L_80_arg0) or L_13_(L_27_.Character, L_80_arg0)
	if L_81_ then
		L_81_.Parent = L_27_.Character
	end
end;
function GodMode(L_82_arg0)
	if L_5_.Flags.Godmode.Value then
		repeat
			task.wait()
		until L_82_arg0:FindFirstChild("WeaponsGiven") and (L_14_(L_82_arg0, "ForceField") == nil) or L_5_.Flags.Godmode.Value == false
		if L_5_.Flags.GodmodeDelay.Value then
			EquipTool("Knife")
			task.wait()
			EquipTool("Revolver")
			task.wait()
			EquipTool()
		end;
		local L_83_ = L_82_arg0.HumanoidRootPart;
		local L_84_ = L_83_:Clone()
		L_84_.Parent = L_82_arg0;
		L_83_:Destroy()
	end
end;
function Direction(L_85_arg0, L_86_arg1)
	return (L_86_arg1 - L_85_arg0).Unit * 1000
end;
L_6_:Connect(function(L_87_arg0, L_88_arg1, L_89_arg2)
	if L_88_arg1 == "Godmode" then
		if L_89_arg2 then
			GodMode(L_27_.Character)
		else
			L_27_.Character:BreakJoints()
		end
	elseif L_88_arg1 == "Lag" then
		LagServer()
	end
end)
L_31_:Add(L_27_, "CharacterAdded", function(L_90_arg0)
	if L_5_.Flags.Godmode.Value then
		GodMode(L_90_arg0)
	end
end)
local L_32_ = {
	KillAll = tick()
}
L_31_:Add(L_17_, "Heartbeat", function()
	local L_91_ = tick()
	L_30_.Position = L_18_:GetMouseLocation()
	L_30_.Visible = L_5_.Flags.UseFOV.Value;
	L_30_.Radius = L_5_.Flags.FOV.Value;
	if L_5_.Flags.KillAll.Value then
		local L_92_ = L_13_(L_27_.Backpack, "Knife") or L_13_(L_27_.Character, "Knife")
		if L_92_ then
			L_92_.Parent = L_27_.Character
		end;
		if (L_91_ - L_32_.KillAll) >= 0.2 then
			for L_93_forvar0, L_94_forvar1 in next, L_20_(L_15_) do
				if L_94_forvar1 ~= L_27_ then
					local L_95_ = L_94_forvar1.Character;
					if L_13_(L_95_, "HasSpawned") and L_13_(L_95_, "WeaponsGiven") and (not L_14_(L_95_, "ForceField")) then
						StabPlayer(L_92_, L_95_)
						break
					end
				end
			end;
			L_32_.KillAll = tick()
		end
	end
end)
local L_33_ = {
	["RevolverClient"] = true;
	["KnifeClient"] = true
}
local L_34_;
L_34_ = hookmetamethod(L_11_, "__namecall", function(L_96_arg0, ...)
	if checkcaller() then
		return L_34_(L_96_arg0, ...)
	end;
	local L_97_ = {
		...
	}
	local L_98_ = getnamecallmethod()
	local L_99_ = getcallingscript()
	if L_98_ == "FindPartOnRayWithIgnoreList" and L_33_[tostring(L_99_)] then
		if L_5_.Flags.SilentAim.Value then
			local L_100_ = GetTarget()
			if L_100_ then
				local L_101_ = tostring(L_99_) == "KnifeClient"
				local L_102_ = L_97_[1]
				local L_103_ = (L_101_ and L_100_.Character.Torso.Position) or L_102_.Origin;
				L_97_[1] = Ray.new(L_103_, Direction(L_102_.Origin, L_100_.Character.Torso.Position))
				return L_96_arg0[L_98_](L_96_arg0, unpack(L_97_))
			end
		end
	end;
	return L_34_(L_96_arg0, ...)
end)
local L_35_, L_36_, L_37_ = 0, 0, 0
local L_38_;
L_38_ = hookfunction(getrenv().print, function(...)
	if checkcaller() then
		return L_38_(...)
	end;
	local L_104_ = {
		...
	}
	local L_105_ = tostring(L_104_[1])
	if L_105_ == "0.5" then
		for L_106_forvar0 = 1, 10 do
			local L_107_, L_108_ = pcall(getupvalues, L_106_forvar0)
			if L_107_ then
				for L_109_forvar0, L_110_forvar1 in next, L_108_ do
					if type(L_110_forvar1) == "table" then
						if rawget(L_110_forvar1, "LastFireTrigger") then
							if L_5_.Flags.NoDelay.Value then
								if L_27_.Character and L_13_(L_27_.Character, "Revolver") then
									L_27_.Character.Revolver.ClientEvent:FireServer("ReloadUpdate", {
										[1] = "AmmoAdded"
									})
								end;
								rawset(L_110_forvar1, "LastFireTrigger", tick() - 5)
							end
						elseif rawget(L_110_forvar1, "FireDelay") then
							if not L_35_ then
								L_35_ = rawget(L_110_forvar1, "FireDelay")
							end;
							if not L_36_ then
								L_36_ = rawget(L_110_forvar1, "ReloadAmmoThreshold")
							end;
							if L_5_.Flags.NoDelay.Value then
								rawset(L_110_forvar1, "FireDelay", 0.05)
							end;
							if L_5_.Flags.FastReload.Value then
								rawset(L_110_forvar1, "ReloadTime", 0.5)
								rawset(L_110_forvar1, "ReloadAmmoThreshold", 0.25)
								rawset(L_110_forvar1, "ReloadAnimationSpeed", 0.5)
							else
								rawset(L_110_forvar1, "ReloadTime", 2)
								rawset(L_110_forvar1, "ReloadAmmoThreshold", L_36_)
								rawset(L_110_forvar1, "ReloadAnimationSpeed", 1)
							end
						end
					end
				end
			end
		end
	end;
	return L_38_(...)
end)
