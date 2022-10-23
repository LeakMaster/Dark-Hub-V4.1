-- Oh no one cares about you Felix, Wake up to reality, And open your eyes 

local L_3_ = {
	Settings = {
		SilentAim = false;
		HideKillCam = false;
		NoRecoil = false;
		NoSpread = false;
		Radius = 300;
		ShowFov = true;
		VisibleCheck = true;
		HitPart = "Head";
		AllParts = {
			"Torso",
			"Head",
			"Random"
		}
	}
}
local L_4_, L_5_, L_6_, L_7_ = game.GetService, game.FindFirstChild, game.Loaded.Connect, game.GetChildren;
local L_8_ = L_4_(game, "Players")
local L_9_ = L_4_(game, "Workspace")
local L_10_ = L_4_(game, "ReplicatedStorage")
local L_11_ = L_4_(game, "RunService")
local L_12_ = L_4_(game, "UserInputService")
local L_13_ = L_10_.Game.GameMode;
local L_14_ = L_10_.ClientModules;
local L_15_ = require(L_14_.CameraAccelerator)
local L_16_ = L_9_.CurrentCamera;
local L_17_ = L_8_.LocalPlayer;
local L_18_ = L_17_.GetMouse(L_17_)
local L_19_ = CFrame.new(0 / 0, 0 + 0 / 0 + 0, 0 / 0)
local L_20_ = Drawing.new("Circle")
do
	L_20_.Thickness = 1
	L_20_.Filled = false
	L_20_.Transparency = 1
	L_20_.Color = Color3.new(207, 95, 64)
	L_20_.Visible = L_3_.Settings.ShowFov;
	L_20_.Radius = L_3_.Settings.Radius
end;
function CreateVector2(L_28_arg0)
	return Vector2.new(L_28_arg0.X, L_28_arg0.Y)
end;
function GetDirection(L_29_arg0, L_30_arg1)
	return (L_30_arg1 - L_29_arg0).Unit * 1000
end;
function GetHitPart(L_31_arg0)
	if L_31_arg0 then
		local L_32_ = (L_3_.Settings.HitPart == "Random" and L_3_.Settings.AllParts[math.random(1, 2)]) or (L_3_.Settings.HitPart)
		local L_33_ = L_5_(L_31_arg0, L_32_)
		if L_33_ then
			return L_33_
		end
	end
end;
function GetFramework()
	for L_34_forvar0, L_35_forvar1 in pairs(L_7_(L_17_.PlayerScripts)) do
		local L_36_, L_37_ = pcall(function()
			return getsenv(L_35_forvar1)
		end)
		if L_36_ and L_37_.InspectWeapon then
			return L_37_
		end
	end;
	return nil
end;
function IsPartVisible(L_38_arg0, L_39_arg1)
	L_39_arg1 = L_39_arg1 or {}
	local L_40_ = L_16_.GetPartsObscuringTarget(L_16_, {
		L_38_arg0.Position
	}, {
		L_16_,
		L_17_.Character,
		unpack(L_39_arg1)
	})
	return # L_40_ <= 10
end;
function GetClosestPlayer(L_41_arg0, L_42_arg1)
	L_41_arg0 = L_41_arg0 or math.huge;
	local L_43_, L_44_;
	for L_45_forvar0, L_46_forvar1 in next, L_8_.GetPlayers(L_8_) do
		if L_46_forvar1 == L_17_ then
			continue
		end;
		if L_13_.Value == "Team Deathmatch" and L_46_forvar1.Team == L_17_.Team then
			warn("TEAM IS THE SAME YEA DONT CHOOSE THAT NIGGA")
			continue
		end;
		if not L_46_forvar1.Character then
			continue
		end;
		local L_47_ = L_5_(L_46_forvar1.Character, "HumanoidRootPart")
		if not L_47_ then
			continue
		end;
		local L_48_, L_49_ = L_16_.WorldToScreenPoint(L_16_, L_47_.Position)
		if L_49_ then
			if (L_3_.Settings.VisibleCheck) and (not IsPartVisible(L_47_, L_42_arg1)) then
				continue
			end;
			local L_50_ = (CreateVector2(L_18_) - CreateVector2(L_48_)).Magnitude;
			if L_50_ <= L_41_arg0 then
				L_41_arg0 = L_50_;
				L_43_ = L_46_forvar1;
				L_44_ = L_46_forvar1.Character
			end
		end
	end;
	return L_43_, L_44_
end;
local L_21_ = GetFramework().CheckIsToolValid;
local L_22_ = {
	["Raycast"] = function(L_51_arg0, ...)
		local L_52_ = {
			...
		}
		if L_3_.Settings.SilentAim and L_51_arg0 == workspace then
			local L_53_ = debug.traceback()
			if string.find(L_53_, "FireWeapon") then
				local L_54_ = L_52_[3].FilterDescendantsInstances;
				local L_55_, L_56_ = GetClosestPlayer(L_3_.Settings.Radius, L_54_)
				if L_55_ and L_56_ then
					local L_57_ = GetHitPart(L_56_)
					if L_57_ then
						L_52_[2] = GetDirection(L_52_[1], L_57_.Position)
						return L_51_arg0.Raycast(L_51_arg0, unpack(L_52_))
					end
				end
			end
		end;
		return L_51_arg0.Raycast(L_51_arg0, ...)
	end;
	["FireServer"] = {
		["CharacterReplicator"] = {
			checkcaller = false;
			callback = function(L_58_arg0, ...)
				if L_3_.Settings.HideKillCam then
					local L_59_ = {
						...
					}
					L_59_[2] = L_19_;
					L_59_[3] = L_19_;
					L_59_[4] = L_19_;
					L_59_[5] = L_19_;
					return L_58_arg0.FireServer(L_58_arg0, unpack(L_59_))
				end;
				return L_58_arg0.FireServer(L_58_arg0, ...)
			end
		}
	}
}
local L_23_;
L_23_ = hookmetamethod(game, "__namecall", function(L_60_arg0, ...)
	local L_61_ = getnamecallmethod()
	local L_62_ = checkcaller()
	local L_63_ = L_22_[L_61_]
	local L_64_;
	if L_63_ then
		if typeof(L_63_) == "function" then
			L_64_ = {
				checkcaller = false;
				callback = L_63_
			}
		else
			L_64_ = L_63_[L_60_arg0.Name]
		end
	end;
	if (L_64_ and L_64_.checkcaller == L_62_) then
		local L_65_, L_66_ = pcall(L_64_.callback, L_60_arg0, ...)
		if not L_65_ then
			warn("ERROR!", L_66_)
		end;
		return L_66_
	end;
	return L_23_(L_60_arg0, ...)
end)
local L_24_;
L_24_ = hookfunction(L_15_.accelerate, function(...)
	if L_3_.Settings.NoRecoil then
		return nil
	end;
	return L_24_(...)
end)
L_6_(L_11_.RenderStepped, function()
	if L_3_.Settings.NoSpread then
		for L_67_forvar0, L_68_forvar1 in next, getupvalues(L_21_, 1)[1] do
			if type(L_68_forvar1) == "table" and rawget(L_68_forvar1, "CurrentAccuracy") then
				rawset(L_68_forvar1, "CurrentAccuracy", 0)
			end
		end
	end;
	L_20_.Radius = L_3_.Settings.Radius;
	L_20_.Visible = L_3_.Settings.ShowFov;
	L_20_.Position = L_12_.GetMouseLocation(L_12_)
end)
local L_25_ = loadstring(game:HttpGet(("https://raw.githubusercontent.com/shlexware/Orion/main/source")))()
local L_26_ = L_25_:MakeWindow({
	Name = "DarkHub",
	HidePremium = true,
	ConfigFolder = "DarkHub"
})
local L_27_ = L_26_:MakeTab({
	Name = "Combat Cheats";
	Icon = "rbxassetid://4483345998"
})
do
	L_27_:AddToggle({
		Name = "Hide Killcam";
		Default = false;
		Callback = function(L_71_arg0)
			L_3_.Settings.HideKillCam = L_71_arg0
		end
	})
	local L_69_ = L_27_:AddSection({
		Name = "Silent Aimbot"
	})
	do
		L_69_:AddToggle({
			Name = "Silent Aim";
			Default = false;
			Callback = function(L_72_arg0)
				L_3_.Settings.SilentAim = L_72_arg0
			end
		})
		L_69_:AddToggle({
			Name = "Visible Check";
			Default = false;
			Callback = function(L_73_arg0)
				L_3_.Settings.VisibleCheck = L_73_arg0
			end
		})
		L_69_:AddToggle({
			Name = "Draw FOV";
			Default = false;
			Callback = function(L_74_arg0)
				L_3_.Settings.ShowFov = L_74_arg0
			end
		})
		L_69_:AddSlider({
			Name = "Fov Radius",
			Min = 10,
			Max = 1000,
			Default = 200,
			Color = Color3.fromRGB(255, 255, 255),
			Increment = 1,
			Callback = function(L_75_arg0)
				L_3_.Settings.Radius = L_75_arg0
			end
		})
		L_69_:AddDropdown({
			Name = "HitPart",
			Default = "Head",
			Options = L_3_.Settings.AllParts,
			Callback = function(L_76_arg0)
				L_3_.Settings.HitPart = L_76_arg0
			end
		})
	end;
	local L_70_ = L_27_:AddSection({
		Name = "Weapon Mods"
	})
	do
		L_70_:AddToggle({
			Name = "No Recoil";
			Default = false;
			Callback = function(L_77_arg0)
				L_3_.Settings.NoRecoil = L_77_arg0
			end
		})
		L_70_:AddToggle({
			Name = "No Spread";
			Default = false;
			Callback = function(L_78_arg0)
				L_3_.Settings.NoSpread = L_78_arg0
			end
		})
	end
end
