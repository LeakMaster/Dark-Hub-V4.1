-- Adam, not this again HAHA
-- Wait what is bolts doing here HAHA

local L_52_ = loadstring(game:HttpGet(("https://raw.githubusercontent.com/RandomAdamYT/DarkHub_V4/main/UILIB")))()
local L_53_ = L_52_:MakeWindow({
	Name = "DarkHub V4",
	HidePremium = false,
	SaveConfig = true,
	ConfigFolder = "DARKHUB_Arsenal"
})
for L_86_forvar0, L_87_forvar1 in pairs(getconnections(game:GetService("ScriptContext").Error)) do
	L_87_forvar1:Disable()
end;
local L_54_ = L_53_:Tab({
	Name = "Combat"
})
local L_55_ = L_53_:Tab({
	Name = "Gun Mods"
})
local L_56_ = L_53_:Tab({
	Name = "LocalPlayer"
})
local L_57_ = L_53_:Tab({
	Name = "Visuals"
})
local L_58_ = L_53_:Tab({
	Name = "Other"
})
L_54_:Toggle({
	Name = "Kill All",
	Default = false,
	Flag = "FF_KillAll",
	Callback = function()
	end
})
L_54_:Toggle({
	Name = "Silent Aim",
	Default = false,
	Flag = "FF_SilentAim",
	Callback = function()
	end
})
L_54_:Toggle({
	Name = "Always Backstab",
	Default = false,
	Flag = "FF_Backstab",
	Callback = function()
	end
})
L_54_:Toggle({
	Name = "Semi Wallbang",
	Warning = "Will only work on some walls",
	Default = false,
	Flag = "FF_Wallbang",
	Callback = function()
	end
})
L_54_:Toggle({
	Name = "Kill Aura",
	Default = false,
	Flag = "FF_KillAura",
	Callback = function()
	end
})
L_54_:Toggle({
	Name = "Show FOV",
	Default = false,
	Flag = "FF_ShowFOV",
	Callback = function()
	end
})
L_54_:Slider({
	Name = "FOV Value",
	Min = 10,
	Max = 750,
	Default = 100,
	Increment = 10,
	Flag = "FV_FOVVALUE",
	Callback = function()
	end
})
L_54_:Dropdown({
	Name = "Hit Part",
	Options = {
		"LowerTorso",
		"Head",
		"Random"
	},
	Default = "Random",
	Flag = "FV_HitPart",
	Callback = function()
	end
})
L_55_:Toggle({
	Name = "Fire Rate",
	Default = false,
	Flag = "FF_FireRate",
	Callback = function()
	end
})
L_55_:Toggle({
	Name = "No Recoil",
	Default = false,
	Flag = "FF_Recoil",
	Callback = function()
	end
})
L_55_:Toggle({
	Name = "No Spread",
	Default = false,
	Flag = "FF_Spread",
	Callback = function()
	end
})
L_55_:Toggle({
	Name = "Always Auto",
	Default = false,
	Flag = "FF_Auto",
	Callback = function()
	end
})
L_55_:Toggle({
	Name = "Infinite Ammo",
	Default = false,
	Flag = "FF_Ammo",
	Callback = function()
	end
})
L_55_:Toggle({
	Name = "Anti Overheat",
	Default = false,
	Flag = "FF_Overheat",
	Callback = function()
	end
})
L_56_:Button({
	Name = "Godmode + Invisible",
	Warning = "You cannot undo this action",
	Callback = function()
		pcall(function()
			game.Players.LocalPlayer.Character.LowerTorso.Root:Destroy()
		end)
	end
})
L_56_:Toggle({
	Name = "Custom WalkSpeed",
	Default = false,
	Flag = "FF_WalkSpeed",
	Callback = function()
	end
})
L_56_:Toggle({
	Name = "Custom JumpPower",
	Default = false,
	Flag = "FF_JumpPower",
	Callback = function()
	end
})
L_56_:Toggle({
	Name = "Infinite Jump",
	Default = false,
	Flag = "FF_InfJump",
	Callback = function()
	end
})
L_56_:Toggle({
	Name = "Third Person",
	Default = false,
	Flag = "FF_ThirdPerson",
	Callback = function()
	end
})
L_56_:Toggle({
	Name = "Auto Jump",
	Default = false,
	Flag = "FF_BHop",
	Callback = function()
	end
})
L_56_:Toggle({
	Name = "Instant Respawn",
	Default = false,
	Flag = "FF_InstantRespawn",
	Callback = function()
	end
})
L_56_:Toggle({
	Name = "Anti Aim",
	Default = false,
	Flag = "FF_AntiAim",
	Callback = function()
	end
})
L_56_:Slider({
	Name = "Custom WalkSpeed Value",
	Min = 5 + 5,
	Max = 5 + 345,
	Default = 16,
	Increment = 2,
	Flag = "FV_WalkSpeed",
	Callback = function()
	end
})
L_56_:Slider({
	Name = "Custom JumpPower Value",
	Min = 50,
	Max = 500,
	Default = 50,
	Increment = 25,
	Flag = "FV_JumpPower",
	Callback = function()
	end
})
L_56_:Dropdown({
	Name = "Anti Aim Method",
	Options = {
		"Torso In Legs",
		"Look Up",
		"Look Down"
	},
	Default = "Torso In Legs",
	Flag = "FV_AntiAimMethod",
	Callback = function()
	end
})
L_56_:Toggle({
	Name = "Chat Spammer",
	Default = false,
	Flag = "FF_ChatSpam",
	Callback = function()
	end
})
local L_59_ = ""
L_56_:Textbox({
	Name = "Chat Message",
	Placeholder = "Enter A Message",
	Default = "DarkHub V4 Winning",
	Disappear = false,
	Callback = function(L_101_arg0)
		L_59_ = L_101_arg0
	end
})
L_57_:Toggle({
	Name = "Box ESP",
	Default = false,
	Flag = "FF_BoxESP",
	Callback = function()
	end
})
L_57_:Toggle({
	Name = "Tracer ESP",
	Default = false,
	Flag = "FF_TracerESP",
	Callback = function()
	end
})
L_57_:Toggle({
	Name = "Names ESP",
	Default = false,
	Flag = "FF_NameESP",
	Callback = function()
	end
})
L_57_:Toggle({
	Name = "Distance ESP",
	Default = false,
	Flag = "FF_Distance",
	Callback = function()
	end
})
L_57_:Toggle({
	Name = "Skeletons ESP",
	Default = false,
	Flag = "FF_Skeleton",
	Callback = function()
	end
})
L_57_:Colorpicker({
	Name = "Enemy Color",
	Default = Color3.fromRGB(255, 0, 0),
	Flag = "CC_EnemyColor",
	Callback = function()
	end
})
L_57_:Colorpicker({
	Name = "Team Color",
	Default = Color3.fromRGB(0 + 0, 255, 0 + 0),
	Flag = "CC_TeamColor",
	Callback = function()
	end
})
L_57_:Dropdown({
	Name = "Tracers Origin",
	Options = {
		"Top",
		"Middle",
		"Bottom",
		"Mouse"
	},
	Default = "Bottom",
	Flag = "FV_TracerOrigin",
	Callback = function()
	end
})
L_57_:Toggle({
	Name = "Show Team",
	Default = false,
	Flag = "FF_TeamESP",
	Callback = function()
	end
})
L_57_:Toggle({
	Name = "Rainbow Gun",
	Default = false,
	Flag = "FF_RainbowGun",
	Callback = function()
	end
})
L_57_:Toggle({
	Name = "Rainbow Hands",
	Default = false,
	Flag = "FF_RainbowHands",
	Callback = function()
	end
})
L_58_:Toggle({
	Name = "Spoof Device",
	Default = false,
	Flag = "FF_DeviceSpoof",
	Callback = function()
	end
})
L_58_:Dropdown({
	Name = "Spoofed Device",
	Options = {
		"PC",
		"Mobile",
		"XBOX"
	},
	Default = "PC",
	Flag = "FV_DeviceSpoofed",
	Callback = function()
	end
})
local L_60_;
L_58_:Button({
	Name = "Crash Server",
	Warning = "This will close the entire server for everyone",
	Callback = function()
		if L_60_ then
			return
		end;
		L_60_ = true
		local L_110_ = {}
		for L_111_forvar0 = 1, 100000 do
			L_110_[L_111_forvar0] = {}
		end;
		task.spawn(function()
			while wait() do
				coroutine.wrap(function()
					game.ReplicatedStorage.Functions.SaveLayout:InvokeServer(L_110_)
				end)()
			end
		end)
	end
})
local L_61_ = getsenv(game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client)
local L_62_ = game:GetService("ReplicatedStorage").Modules.BitBuffer;
local L_63_ = game.ReplicatedStorage.wkspc;
local L_64_ = workspace.CurrentCamera;
local L_65_ = game:GetService("Players")
local L_66_ = L_65_.LocalPlayer;
local L_67_ = L_66_:GetMouse()
function GetDeviceHash()
	if not L_52_.Flags["FF_DeviceSpoof"].Value then
		return "MouseButton1"
	end;
	return L_52_.Flags["FV_DeviceSpoofed"].Value == "Mobile" and "Touch" or L_52_.Flags["FV_DeviceSpoofed"].Value == "XBOX" and "Gamepad1" or "MouseButton1"
end;
function TeamCheck(L_112_arg0, L_113_arg1)
	local L_114_ = game.Players.GetPlayerFromCharacter(game.Players, L_113_arg1)
	if L_113_arg1.FindFirstChild(L_113_arg1, "Bot") then
		return false
	end;
	if L_63_.BF.Value == true and L_114_ ~= L_112_arg0 then
		return true
	end;
	if (not L_114_ or L_114_ ~= L_112_arg0) and not L_112_arg0.FindFirstChild(L_112_arg0, "IsJugg") and (not L_114_ or not L_114_.FindFirstChild(L_114_, "IsJugg") or L_112_arg0.FindFirstChild(L_112_arg0, "IsJugg") ~= nil) and ((L_63_.BR.Value ~= true or not L_114_ or L_114_.DesignColor.Value == L_112_arg0.DesignColor.Value) and L_112_arg0.FriendlyFire.Value ~= true and L_114_ ~= nil) and (not L_114_ or L_114_.Status.Team.Value == L_112_arg0.Status.Team.Value) then
		return true
	end;
	return false
end;
ClosestPlayer = function()
	local L_115_, L_116_ = math.huge;
	for L_117_forvar0, L_118_forvar1 in pairs(L_65_.GetPlayers(L_65_)) do
		if L_118_forvar1.Character and L_118_forvar1 ~= game.Players.LocalPlayer and not TeamCheck(game.Players.LocalPlayer, L_118_forvar1.Character) then
			local L_119_ = L_118_forvar1.Character.FindFirstChild(L_118_forvar1.Character, "Head")
			if L_119_ then
				local L_120_, L_121_ = L_64_.WorldToScreenPoint(L_64_, L_119_.Position)
				if L_121_ then
					local L_122_, L_123_ = Vector2.new(L_67_.X, L_67_.Y), Vector2.new(L_120_.X, L_120_.Y)
					local L_124_ = (L_123_ - L_122_).Magnitude;
					if L_124_ < L_115_ and L_124_ <= L_52_.Flags["FV_FOVVALUE"].Value then
						L_115_ = L_124_;
						L_116_ = L_118_forvar1
					end
				end
			end
		end
	end;
	return L_116_
end;
GetAimPart = function()
	if L_52_.Flags["FV_HitPart"].Value == "Head" then
		return "Head"
	end;
	if L_52_.Flags["FV_HitPart"].Value == "LowerTorso" then
		return "LowerTorso"
	end;
	if L_52_.Flags["FV_HitPart"].Value == "Random" then
		if math.random(1, 4 + 0) == 1 then
			return "Head"
		else
			return "LowerTorso"
		end
	end
end;
local L_68_ = {}
for L_136_forvar0, L_137_forvar1 in pairs(game:GetService("ReplicatedStorage").Weapons:GetChildren()) do
	if L_137_forvar1.ClassName == "Folder" then
		local L_138_ = table.insert(L_68_, L_137_forvar1.Name)
		L_68_[L_137_forvar1.Name] = L_137_forvar1.FireRate.Value
	end
end;
local L_69_;
L_69_ = hookmetamethod(game, "__namecall", function(L_139_arg0, ...)
	Args = {
		...
	}
	if getnamecallmethod() == "FindPartOnRayWithIgnoreList" and L_52_.Flags["FF_Wallbang"].Value then
		table.insert(Args[2], workspace.Map)
	end;
	if getnamecallmethod() == "FindPartOnRayWithIgnoreList" and L_52_.Flags["FF_SilentAim"].Value then
		CP = ClosestPlayer()
		if CP and CP.Character and CP.Character.FindFirstChild(CP.Character, GetAimPart()) then
			Args[1] = Ray.new(L_64_.CFrame.Position, (CP.Character[GetAimPart()].Position - L_64_.CFrame.Position).Unit * 1000)
			return L_69_(L_139_arg0, unpack(Args))
		end
	end;
	if getnamecallmethod() == "FireServer" and tostring(L_139_arg0) == "ControlTurn" then
		if L_52_.Flags["FF_AntiAim"].Value then
			if L_52_.Flags["FV_AntiAimMethod"].Value == "Look Up" then
				Args[1 + 0] = 1.3962564026167
			end;
			if L_52_.Flags["FV_AntiAimMethod"].Value == "Look Down" then
				Args[1] = - 1.5962564026167
			end;
			if L_52_.Flags["FV_AntiAimMethod"].Value == "Torso In Legs" then
				Args[1] = - 6.1
			end;
			return L_69_(L_139_arg0, unpack(Args))
		end
	end;
	return L_69_(L_139_arg0, ...)
end)
local L_70_ = require(game:GetService("ReplicatedStorage").Modules.BitBuffer)
local L_71_ = {
	[true] = 1,
	[false] = 0
}
local L_72_ = {}
local L_73_ = {}
local L_74_ = function(L_146_arg0)
	return debug.getinfo(L_146_arg0 + 1).func
end;
local L_75_ = 0
L_73_.__index = function(L_148_arg0, L_149_arg1)
	if game.ReplicatedStorage.Weapons:FindFirstChild(game.Players.LocalPlayer.NRPBS.EquippedTool.Value) and game.ReplicatedStorage.Weapons:FindFirstChild(game.Players.LocalPlayer.NRPBS.EquippedTool.Value).Name == "Knife" and L_52_.Flags["FF_Backstab"].Value then
		if debug.getinfo(3).currentline == 1743 then
			if L_71_[L_149_arg1] == 0 and L_75_ == 0 + 0 then
				L_75_ = 1
				return L_71_[L_149_arg1]
			else
				L_75_ = 0
			end;
			return 1
		end;
		return L_71_[L_149_arg1]
	else
		return L_71_[L_149_arg1]
	end
end;
setmetatable(L_72_, L_73_)
setupvalue(L_70_, 6, L_72_)
local L_76_ = getsenv(game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.StepModulesNoDeath.BruhHumanoid).speedupdate;
getsenv(game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.StepModulesNoDeath.BruhHumanoid).speedupdate = function(...)
	if L_52_.Flags["FF_WalkSpeed"].Value then
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = L_52_.Flags["FV_WalkSpeed"].Value
	end;
	if L_52_.Flags["FF_JumpPower"].Value then
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = L_52_.Flags["FV_JumpPower"].Value
	end;
	if L_52_.Flags["FF_WalkSpeed"].Value or L_52_.Flags["FF_JumpPower"].Value then
		return nil
	end;
	return L_76_(...)
end;
game:GetService("UserInputService").JumpRequest:connect(function()
	if L_52_.Flags["FF_InfJump"].Value then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)
function KillPlayer(L_155_arg0)
	if not L_155_arg0.Character or not L_155_arg0.Character:FindFirstChild("HumanoidRootPart") then
		return
	end;
	local L_156_ = require(game:GetService("ReplicatedStorage").Modules.BitBuffer)()
	L_156_.writeString(game:GetService("Players").LocalPlayer.NRPBS.EquippedTool.Value)
	L_156_.writeUnsigned(2, 1)
	L_156_.writeUnsigned(2, 0)
	L_156_.writeInt8(1 + 0)
	L_156_.writeFloat16(50)
	L_156_.writeInt8(1)
	L_156_.writeUnsigned(1 + 0, 0)
	L_156_.writeUnsigned(1, 0)
	L_156_.writeVector3(L_155_arg0.Character.HumanoidRootPart.Position)
	L_156_.writeVector3(L_155_arg0.Character.HumanoidRootPart.Position)
	return game.ReplicatedStorage.Events["" .. "\226\128\139HitPart"]:FireServer(L_155_arg0.Character.HumanoidRootPart, L_156_.dumpString(), "swaggg")
end;
spawn(function()
	while wait() do
		if (L_52_.Flags["FF_KillAll"].Value or L_52_.Flags["FF_KillAura"].Value) and game:GetService("Players").LocalPlayer.PlayerGui.GUI.Timer.Sub.Visible == false then
			pcall(function()
				for L_165_forvar0, L_166_forvar1 in pairs(game.Players:GetPlayers()) do
					if L_166_forvar1 and L_166_forvar1 ~= game.Players.LocalPlayer and L_166_forvar1.Character and L_166_forvar1.Character:FindFirstChild("Head") then
						local L_167_ = (game.Players.LocalPlayer.Character.PrimaryPart.Position - L_166_forvar1.Character.PrimaryPart.Position).magnitude;
						local L_168_ = game.ReplicatedStorage.Weapons:FindFirstChild(game.Players.LocalPlayer.NRPBS.EquippedTool.Value)
						if L_168_:FindFirstChild("Projectile") and workspace:FindFirstChild("Map") then
							game:GetService("ReplicatedStorage").Events.CreateProjectile:FireServer("Rocket", 5 + 6295, Vector3.new(), CFrame.new(), 50, 50, 1, 35, L_168_.Name, Vector3.new(), false, nil, {
								[1] = game:GetService("Workspace").Map.Clips,
								[2] = game:GetService("Workspace").Debris,
								[3] = game:GetService("Players").LocalPlayer.Character,
								[4 + 0] = game:GetService("Workspace")["Ray_Ignore"],
								[5] = game:GetService("Workspace").Map.Spawns
							}, nil, {
								[1 + 0] = L_166_forvar1.Character
							}, L_166_forvar1.Character.Head, L_166_forvar1.Character.Head.Position)
							game:GetService("ReplicatedStorage").Events.ReplicateProjectile:FireServer({
								[1] = "Baseball",
								[2] = 5 + 275,
								[3] = L_166_forvar1.Character.Head.Position,
								[4] = L_166_forvar1.Character.Head.CFrame,
								[5] = 45,
								[6] = 0,
								[7] = 0,
								[8] = 0 + 0,
								[5 + 4] = "Snowball",
								[10] = Vector3.new(- 20.611129760742, 20.049995422363, 18.381494522095),
								[11] = false,
								[5 + 8] = {
									[1] = game:GetService("Workspace").Map.Clips,
									[2] = game:GetService("Workspace").Debris,
									[3] = game:GetService("Players").LocalPlayer.Character,
									[4] = game:GetService("Workspace")["Ray_Ignore"],
									[5] = game:GetService("Workspace").Map.Spawns,
									[6] = game:GetService("Workspace").Map.Ignore
								},
								[14] = 1 + 0
							})
						elseif not L_168_:FindFirstChild("Projectile") then
							if L_167_ <= 12 then
								KillPlayer(L_166_forvar1)
							end
						end
					end
				end
			end)
		end
	end
end)
spawn(function()
	while true do
		wait(.1)
		if L_52_.Flags["FF_KillAll"].Value then
			for L_205_forvar0, L_206_forvar1 in pairs(game.Players:GetPlayers()) do
				if L_206_forvar1 and L_206_forvar1 ~= game.Players.LocalPlayer and L_206_forvar1.Character and L_206_forvar1.Character:FindFirstChild("Head") and L_206_forvar1.Character:FindFirstChild("Spawned") and not TeamCheck(game.Players.LocalPlayer, L_206_forvar1.Character) then
					pcall(function()
						repeat
							wait(.3)
							local L_207_ = game.ReplicatedStorage.Weapons:FindFirstChild(game.Players.LocalPlayer.NRPBS.EquippedTool.Value)
							if not L_207_:FindFirstChild("Projectile") then
								game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(L_206_forvar1.Character.HumanoidRootPart.CFrame)
							else
								game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(L_206_forvar1.Character.HumanoidRootPart.CFrame + Vector3.new(0, 5 + 0, 0))
							end
						until not L_206_forvar1.Character:FindFirstChild("Spawned") or L_206_forvar1.Character.Humanoid:FindFirstChild("creator") or not L_206_forvar1 or not L_206_forvar1.Character or not L_206_forvar1.Character:FindFirstChild("HumanoidRootPart") or Client.Toggles.KillAll == false or not TeamCheck(game.Players.LocalPlayer, L_206_forvar1.Character)
					end)
				end
			end
		end
	end
end)
FOVCircle = Drawing.new("Circle")
FOVCircle.Thickness = 2
FOVCircle.NumSides = 460
FOVCircle.Filled = false
FOVCircle.Transparency = 0.6
FOVCircle.Radius = L_52_.Flags["FV_FOVVALUE"].Value;
FOVCircle.Color = Color3.new(0, 255, 0)
game:GetService("RunService").Stepped:Connect(function()
	FOVCircle.Position = game:GetService("UserInputService"):GetMouseLocation()
	FOVCircle.Radius = L_52_.Flags["FV_FOVVALUE"].Value;
	FOVCircle.Visible = L_52_.Flags["FF_ShowFOV"].Value;
	pcall(function()
		if L_52_.Flags["FF_RainbowGun"].Value then
			for L_224_forvar0, L_225_forvar1 in pairs(game.Workspace.Camera.Arms:GetChildren()) do
				if L_225_forvar1:IsA("BasePart") then
					L_225_forvar1.Color = Color3.fromHSV(tick() % 5 / 5, 1 + 0, 1)
					L_225_forvar1.Transparency = 0.5
					L_225_forvar1.Material = "ForceField"
				end
			end
		end;
		if L_52_.Flags["FF_RainbowHands"].Value then
			for L_229_forvar0, L_230_forvar1 in pairs(game.Workspace.Camera.Arms:GetChildren()) do
				if L_230_forvar1:IsA("Part") then
					L_230_forvar1.Color = Color3.fromHSV(tick() % 5 + 0 / 5, 1, 1 + 0)
					L_230_forvar1.Transparency = 0.5
					L_230_forvar1.Material = "ForceField"
				end
			end
		end
	end)
end)
spawn(function()
	while wait() do
		if L_52_.Flags["FF_BHop"].Value then
			game.Players.LocalPlayer.Character.Humanoid.Jump = true
		end;
		if L_52_.Flags["FF_ThirdPerson"].Value then
			game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.thirdperson.Value = true
		else
			game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.thirdperson.Value = false
		end;
		if L_52_.Flags["FF_Overheat"].Value then
			getsenv(game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).overheat = {
				["Value"] = 0
			}
		end;
		if L_52_.Flags["FF_JumpPower"].Value then
			game.Players.LocalPlayer.Character.Humanoid.JumpPower = L_52_.Flags["FV_JumpPower"].Value
		end;
		if L_52_.Flags["FF_InstantRespawn"].Value then
			L_61_.reviveme = true
		end;
		if L_52_.Flags["FF_ChatSpam"].Value then
			Game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer("Hah!", L_59_, false, nil, true, true)
		end;
		if L_52_.Flags["FF_FireRate"].Value then
			for L_246_forvar0, L_247_forvar1 in pairs(game:GetService("ReplicatedStorage").Weapons:GetChildren()) do
				if L_247_forvar1:FindFirstChild("FireRate") then
					L_247_forvar1:FindFirstChild("FireRate").Value = 0.01001
				end
			end
		else
			for L_263_forvar0, L_264_forvar1 in pairs(game:GetService("ReplicatedStorage").Weapons:GetChildren()) do
				if L_264_forvar1:FindFirstChild("FireRate") then
					L_264_forvar1:FindFirstChild("FireRate").Value = L_68_[L_264_forvar1.Name]
				end
			end
		end;
		if L_52_.Flags["FF_Recoil"].Value then
			getsenv(game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).recoil = 0
		end;
		if L_52_.Flags["FF_Spread"].Value then
			getsenv(game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).currentspread = {
				["Value"] = 0
			}
		end;
		if L_52_.Flags["FF_Auto"].Value then
			getsenv(game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).mode = "automatic"
		end;
		if L_52_.Flags["FF_Ammo"].Value then
			if require(game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).getprimaryammo() then
				if require(game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).getprimaryammo() == 0 then
					getsenv(game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).ammocount.Value = 6
				else
					getsenv(game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).ammocount.Value = require(game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).getprimaryammo()
				end
			end
		end;
		game:GetService("ReplicatedStorage").Events.CoolNewRemote:FireServer(GetDeviceHash(), "bro")
	end
end)
function IsAlive(L_283_arg0)
	if L_283_arg0 and L_283_arg0.Character and L_283_arg0.Character:FindFirstChild("Head") and workspace:FindFirstChild(L_283_arg0.Character.Name) then
		return true
	end
end;
function Round(L_284_arg0)
	return math.floor(tonumber(L_284_arg0) + 0.5)
end;
function DrawSquare()
	local L_285_ = Drawing.new("Square")
	L_285_.Color = Color3.fromRGB(5 + 185, 190, 0)
	L_285_.Thickness = 0.5
	L_285_.Filled = false
	L_285_.Transparency = 1 + 0;
	return L_285_
end;
function DrawLine()
	local L_292_ = Drawing.new("Line")
	L_292_.Color = Color3.new(190, 5 + 185, 0 + 0)
	L_292_.Thickness = 0.5
	return L_292_
end;
function DrawText()
	local L_300_ = Drawing.new("Text")
	L_300_.Color = Color3.fromRGB(190, 190, 0)
	L_300_.Size = 20
	L_300_.Outline = true
	L_300_.Center = true
	return L_300_
end;
function AddEsp(L_301_arg0)
	local L_302_ = DrawSquare()
	local L_303_ = DrawLine()
	local L_304_ = DrawText()
	local L_305_ = DrawText()
	local L_306_ = DrawLine()
	local L_307_ = DrawLine()
	local L_308_ = DrawLine()
	local L_309_ = DrawLine()
	local L_310_ = DrawLine()
	local L_311_ = DrawLine()
	local L_312_ = DrawLine()
	local L_313_ = DrawLine()
	local L_314_ = DrawLine()
	local L_315_ = DrawLine()
	game:GetService("RunService").Stepped:Connect(function()
		if IsAlive(L_301_arg0) and L_301_arg0.Character:FindFirstChild("HumanoidRootPart") then
			local L_316_, L_317_ = game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.HumanoidRootPart.Position)
			local L_318_ = game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.Head.Position + Vector3.new(0, 0.5, 0))
			local L_319_ = game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.HumanoidRootPart.Position - Vector3.new(0 + 0, 4, 0))
			if L_317_ then
				if not L_52_.Flags["FF_TeamESP"].Value then
					if TeamCheck(game.Players.LocalPlayer, L_301_arg0.Character) then
						L_317_ = false
					end
				end
			end;
			if L_52_.Flags["FF_BoxESP"].Value then
				L_302_.Visible = L_317_;
				L_302_.Size = Vector2.new((2350 / L_316_.Z) + 2.5, L_318_.Y - L_319_.Y)
				L_302_.Position = Vector2.new((L_316_.X - L_302_.Size.X / 2) - 1 + 0, L_316_.Y - L_302_.Size.Y / 2)
			else
				L_302_.Visible = false
			end;
			if L_52_.Flags["FF_TracerESP"].Value then
				L_303_.Visible = L_317_;
				if L_52_.Flags["FV_TracerOrigin"].Value == "Top" then
					L_303_.To = Vector2.new(game.Workspace.CurrentCamera.ViewportSize.X / 2, 0 + 0)
					L_303_.From = Vector2.new(game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.HumanoidRootPart.Position).X - 1, L_316_.Y + (L_318_.Y - L_319_.Y) / 2)
				elseif L_52_.Flags["FV_TracerOrigin"].Value == "Middle" then
					L_303_.To = Vector2.new(game.Workspace.CurrentCamera.ViewportSize.X / 2, game.Workspace.CurrentCamera.ViewportSize.Y / 2 + 0)
					L_303_.From = Vector2.new(game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.HumanoidRootPart.Position).X - 1, (L_316_.Y + (L_318_.Y - L_319_.Y) / 2) - ((L_318_.Y - L_319_.Y) / 2 + 0))
				elseif L_52_.Flags["FV_TracerOrigin"].Value == "Bottom" then
					L_303_.To = Vector2.new(game.Workspace.CurrentCamera.ViewportSize.X / 2, 1000)
					L_303_.From = Vector2.new(game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.HumanoidRootPart.Position).X - 1 + 0, L_316_.Y - (L_318_.Y - L_319_.Y) / 2)
				elseif L_52_.Flags["FV_TracerOrigin"].Value == "Mouse" then
					L_303_.To = game:GetService("UserInputService"):GetMouseLocation()
					L_303_.From = Vector2.new(game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.HumanoidRootPart.Position).X - 1 + 0 + 0, (L_316_.Y + (L_318_.Y - L_319_.Y) / 2) - ((L_318_.Y - L_319_.Y) / 2 + 0))
				end
			else
				L_303_.Visible = false
			end;
			if L_52_.Flags["FF_NameESP"].Value then
				L_304_.Visible = L_317_;
				L_304_.Position = Vector2.new(game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.Head.Position).X, game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.Head.Position).Y - 40)
				L_304_.Text = "[ " .. L_301_arg0.Name .. " ]"
			else
				L_304_.Visible = false
			end;
			if L_52_.Flags["FF_Distance"].Value and L_301_arg0.Character:FindFirstChild("Head") then
				L_305_.Visible = L_317_;
				L_305_.Position = Vector2.new(game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.Head.Position).X, game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.Head.Position).Y - 25)
				L_305_.Text = "[ " .. Round((game:GetService("Players").LocalPlayer.Character.Head.Position - L_301_arg0.Character.Head.Position).Magnitude) .. " Studs ]"
			else
				L_305_.Visible = false
			end;
			if L_52_.Flags["FF_Skeleton"].Value then
				L_307_.Visible = L_317_;
				L_307_.From = Vector2.new(game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.Head.Position).X, game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.Head.Position).Y)
				L_307_.To = Vector2.new(game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.LowerTorso.Position).X, game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.LowerTorso.Position).Y)
				L_308_.Visible = L_317_;
				L_308_.From = Vector2.new(game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.Head.Position).X, game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.Head.Position).Y + ((game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.UpperTorso.Position).Y - game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.Head.Position).Y) / 3))
				L_308_.To = Vector2.new(game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.LeftUpperArm.Position).X, game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.LeftUpperArm.Position).Y)
				L_309_.Visible = L_317_;
				L_309_.From = Vector2.new(game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.LeftLowerArm.Position).X, game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.LeftLowerArm.Position).Y)
				L_309_.To = Vector2.new(game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.LeftUpperArm.Position).X, game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.LeftUpperArm.Position).Y)
				L_310_.Visible = L_317_;
				L_310_.From = Vector2.new(game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.Head.Position).X, game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.Head.Position).Y + ((game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.UpperTorso.Position).Y - game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.Head.Position).Y) / 3))
				L_310_.To = Vector2.new(game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.RightUpperArm.Position).X, game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.RightUpperArm.Position).Y)
				L_311_.Visible = L_317_;
				L_311_.From = Vector2.new(game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.RightLowerArm.Position).X, game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.RightLowerArm.Position).Y)
				L_311_.To = Vector2.new(game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.RightUpperArm.Position).X, game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.RightUpperArm.Position).Y)
				L_312_.Visible = L_317_;
				L_312_.From = Vector2.new(game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.LowerTorso.Position).X, game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.LowerTorso.Position).Y)
				L_312_.To = Vector2.new(game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.LeftUpperLeg.Position).X, game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.LeftUpperLeg.Position).Y)
				L_313_.Visible = L_317_;
				L_313_.From = Vector2.new(game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.LeftLowerLeg.Position).X, game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.LeftLowerLeg.Position).Y)
				L_313_.To = Vector2.new(game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.LeftUpperLeg.Position).X, game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.LeftUpperLeg.Position).Y)
				L_314_.Visible = L_317_;
				L_314_.From = Vector2.new(game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.RightLowerLeg.Position).X, game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.RightLowerLeg.Position).Y)
				L_314_.To = Vector2.new(game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.RightUpperLeg.Position).X, game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.RightUpperLeg.Position).Y)
				L_315_.Visible = L_317_;
				L_315_.From = Vector2.new(game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.LowerTorso.Position).X, game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.LowerTorso.Position).Y)
				L_315_.To = Vector2.new(game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.RightUpperLeg.Position).X, game.Workspace.CurrentCamera:WorldToViewportPoint(L_301_arg0.Character.RightUpperLeg.Position).Y)
			else
				L_307_.Visible = false
				L_308_.Visible = false
				L_309_.Visible = false
				L_310_.Visible = false
				L_311_.Visible = false
				L_312_.Visible = false
				L_313_.Visible = false
				L_314_.Visible = false
				L_315_.Visible = false
			end;
			if game.Players.LocalPlayer.TeamColor ~= L_301_arg0.TeamColor then
				L_302_.Color = L_52_.Flags["CC_EnemyColor"].Value;
				L_303_.Color = L_52_.Flags["CC_EnemyColor"].Value;
				L_304_.Color = L_52_.Flags["CC_EnemyColor"].Value;
				L_305_.Color = L_52_.Flags["CC_EnemyColor"].Value;
				L_307_.Color = L_52_.Flags["CC_EnemyColor"].Value;
				L_308_.Color = L_52_.Flags["CC_EnemyColor"].Value;
				L_309_.Color = L_52_.Flags["CC_EnemyColor"].Value;
				L_310_.Color = L_52_.Flags["CC_EnemyColor"].Value;
				L_311_.Color = L_52_.Flags["CC_EnemyColor"].Value;
				L_312_.Color = L_52_.Flags["CC_EnemyColor"].Value;
				L_313_.Color = L_52_.Flags["CC_EnemyColor"].Value;
				L_314_.Color = L_52_.Flags["CC_EnemyColor"].Value;
				L_315_.Color = L_52_.Flags["CC_EnemyColor"].Value
			else
				L_302_.Color = L_52_.Flags["CC_TeamColor"].Value;
				L_303_.Color = L_52_.Flags["CC_TeamColor"].Value;
				L_304_.Color = L_52_.Flags["CC_TeamColor"].Value;
				L_305_.Color = L_52_.Flags["CC_TeamColor"].Value;
				L_307_.Color = L_52_.Flags["CC_TeamColor"].Value;
				L_308_.Color = L_52_.Flags["CC_TeamColor"].Value;
				L_309_.Color = L_52_.Flags["CC_TeamColor"].Value;
				L_310_.Color = L_52_.Flags["CC_TeamColor"].Value;
				L_311_.Color = L_52_.Flags["CC_TeamColor"].Value;
				L_312_.Color = L_52_.Flags["CC_TeamColor"].Value;
				L_313_.Color = L_52_.Flags["CC_TeamColor"].Value;
				L_314_.Color = L_52_.Flags["CC_TeamColor"].Value;
				L_315_.Color = L_52_.Flags["CC_TeamColor"].Value
			end
		else
			L_302_.Visible = false
			L_303_.Visible = false
			L_304_.Visible = false
			L_305_.Visible = false
			L_307_.Visible = false
			L_308_.Visible = false
			L_309_.Visible = false
			L_310_.Visible = false
			L_311_.Visible = false
			L_312_.Visible = false
			L_313_.Visible = false
			L_314_.Visible = false
			L_315_.Visible = false
		end
	end)
end;
for L_540_forvar0, L_541_forvar1 in pairs(game:GetService("Players"):GetPlayers()) do
	if L_541_forvar1 ~= game.Players.LocalPlayer then
		AddEsp(L_541_forvar1)
	end
end;
game:GetService("Players").PlayerAdded:Connect(function(L_542_arg0)
	if v ~= game.Players.LocalPlayer then
		AddEsp(L_542_arg0)
	end
end)
local L_77_ = Instance.new("RemoteEvent").FireServer;
local L_78_ = isexecutorclosure or is_synapse_function;
task.spawn(function()
	while task.wait() do
		if L_78_(L_77_) then
			while true do
			end
		end
	end
end)
L_52_:Init()
