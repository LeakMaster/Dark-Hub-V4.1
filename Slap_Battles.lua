-- weial while your saying uwu, i will say fuck you and your uwu 

local L_3_, L_4_;
local L_5_ = function()
end;
local L_6_, L_7_ = loadstring(game.HttpGet(game, "https://raw.githubusercontent.com/NougatBitz/BitzUtils/main/EditedOrionLib.lua"))()
local L_8_ = L_6_:MakeWindow({
	Name = "DarkHub";
	IntroText = "DarkHub";
	HidePremium = true;
	SaveConfig = false;
	IntroEnabled = false
})
local L_9_ = L_8_:MakeTab({
	Name = "Combat";
	Icon = L_6_.Icons.Combat
})
L_9_:AddToggle({
	Name = "Kill all";
	Flag = "KillAll";
	Callback = L_5_
})
L_9_:AddToggle({
	Name = "Kill aura";
	Flag = "KillAura";
	Callback = L_5_
})
L_9_:AddToggle({
	Name = "God Mode";
	Flag = "Godmode";
	Callback = L_5_
})
local L_10_ = L_8_:MakeTab({
	Name = "Movement";
	Icon = L_6_.Icons.Movement
})
L_10_:AddSlider({
	Name = "WalkSpeed";
	Flag = "WalkSpeed";
	Min = 16;
	Max = 200;
	Default = 16;
	Callback = L_5_
})
L_10_:AddSlider({
	Name = "JumpPower";
	Flag = "JumpPower";
	Min = 50;
	Max = 200;
	Default = 50;
	Callback = L_5_
})
local L_11_ = L_8_:MakeTab({
	Name = "Others";
	Icon = L_6_.Icons.Others
})
L_11_:AddToggle({
	Name = "Auto Re-spawn";
	Flag = "AutoRespawn";
	Callback = L_5_
})
L_11_:AddTextbox({
	Name = "Kick Player";
	TextDisappear = true;
	Callback = L_5_;
	Flag = "KickPlayer";
	IgnoreCustom = true
})
L_3_ = {
	Connections = {};
	Paused = {}
}
do
	function L_3_.Clear(L_36_arg0)
		local L_37_ = 0
		for L_38_forvar0, L_39_forvar1 in next, L_36_arg0.Connections do
			L_37_ = L_37_ + 1 + 0;
			L_39_forvar1.Connection:Disconnect()
			table.remove(L_36_arg0.Connections, L_37_)
		end
	end;
	function L_3_.Add(L_40_arg0, L_41_arg1, L_42_arg2, L_43_arg3)
		local L_44_, L_45_, L_46_ = L_41_arg1, L_42_arg2, L_43_arg3;
		if type(L_42_arg2) == "string" then
			L_45_ = L_44_[L_42_arg2]
			local L_47_;
			L_47_ = L_45_.Connect(L_45_, function(...)
				if L_40_arg0.Paused[L_47_] == true then
					return
				end;
				L_46_(...)
			end)
			L_40_arg0.Connections[# L_40_arg0.Connections + 1] = {
				Object = L_41_arg1;
				Connection = L_47_
			}
			return L_47_
		else
			L_46_ = L_42_arg2;
			L_45_ = L_41_arg1;
			local L_48_;
			L_48_ = L_45_.Connect(L_45_, function(...)
				if L_40_arg0.Paused[L_48_] == true then
					return
				end;
				L_46_(...)
			end)
			L_40_arg0.Connections[# L_40_arg0.Connections + 1 + 0] = {
				Connection = L_48_
			}
			return L_48_
		end
	end;
	function L_3_.Stop(L_49_arg0, L_50_arg1)
		for L_51_forvar0, L_52_forvar1 in next, L_49_arg0.Connections do
			if L_50_arg1 and L_50_arg1(L_52_forvar1.Object) or (true) then
				L_49_arg0.Paused[L_52_forvar1.Connection] = true
			end
		end
	end;
	function L_3_.Start(L_53_arg0)
		for L_54_forvar0, L_55_forvar1 in next, L_53_arg0.Connections do
			if L_53_arg0.Paused[L_55_forvar1.Connection] then
				L_53_arg0.Paused[L_55_forvar1.Connection] = false
			end
		end
	end;
	function L_3_.Remove(L_56_arg0, L_57_arg1)
		local L_58_ = 0
		for L_59_forvar0, L_60_forvar1 in next, L_56_arg0.Connections do
			L_58_ = L_58_ + 1
			if L_60_forvar1.Object == L_57_arg1 then
				L_60_forvar1.Connection:Disconnect()
				table.remove(L_56_arg0.Connections, L_58_)
			end
		end
	end
end;
local L_12_ = game:GetService("Players")
local L_13_ = game:GetService("Workspace")
local L_14_ = game:GetService("RunService")
local L_15_ = game:GetService("UserInputService")
local L_16_ = game:GetService("ReplicatedStorage")
local L_17_ = L_13_:WaitForChild("Lobby")
local L_18_ = L_17_:WaitForChild("GloveStands")
local L_19_ = L_17_:WaitForChild("brazil"):FindFirstChild("portal")
local L_20_ = L_17_:WaitForChild("Teleport1")
local L_21_ = L_16_:WaitForChild("HumanoidDied")
local L_22_ = L_16_.DeactivateRockmode;
local L_23_ = L_16_.Rockmode;
local L_24_ = L_12_.LocalPlayer;
local L_25_ = L_24_.Character;
local L_26_ = L_24_.Backpack;
local L_27_ = L_25_:WaitForChild("HumanoidRootPart")
local L_28_ = L_25_:WaitForChild("Humanoid")
local L_29_ = (L_19_ and L_19_.CFrame) or CFrame.new()
local L_30_ = false
local L_31_ = false
local L_32_ = {}
local L_33_ = {
	["Golden"] = L_16_.GoldenHit
}
if L_19_ then
	local L_61_ = L_19_:Clone()
	L_61_.CFrame = L_29_;
	L_61_.Parent = L_19_.Parent;
	L_19_:Destroy()
end;
function ForTime(L_62_arg0, L_63_arg1, L_64_arg2, L_65_arg3)
	L_64_arg2 = L_64_arg2 or 0
	local L_66_ = tick()
	repeat
		task.wait(L_64_arg2)
		L_62_arg0()
	until (tick() - L_66_ >= L_63_arg1) or L_65_arg3()
end;
function EnterArena()
	repeat
		task.wait()
		firetouchinterest(L_20_, L_27_, 1)
		firetouchinterest(L_20_, L_27_, 0)
	until L_25_:FindFirstChild("entered")
end;
function Respawn(L_67_arg0)
	local L_68_ = L_25_;
	L_21_:FireServer(L_25_, true)
	repeat
		task.wait()
	until L_68_ ~= L_25_;
	if (not L_67_arg0) then
		EnterArena()
	end
end;
function OwnsGlove(L_69_arg0)
	local L_70_ = tonumber(L_18_[L_69_arg0].SlapsInfoPart.SurfaceGui.TextLabel.Text)
	return L_24_.leaderstats.Slaps.Value >= L_70_
end;
function GetDiamondGlove()
	if L_24_.leaderstats.Glove.Value ~= "Diamond" then
		if (not OwnsGlove("Diamond")) then
			L_6_:MakeNotification({
				Name = "Godmode";
				Content = "You need to own the \\'Diamond\\' glove. (45 slaps)";
				Image = "rbxassetid://4483345998";
				Time = 5
			})
			return false
		end;
		Respawn(true)
		task.wait(0.15)
		fireclickdetector(L_17_.DiamondGlove.ClickDetector)
		EnterArena()
		return "Respawned"
	end;
	return true
end;
function GetTarget()
	local L_71_, L_72_, L_73_ = 30, nil, nil
	for L_74_forvar0, L_75_forvar1 in next, L_12_:GetPlayers() do
		if L_75_forvar1 == L_24_ then
			continue
		end;
		local L_76_ = L_75_forvar1.Character;
		local L_77_ = L_76_ and L_76_:FindFirstChild("Head")
		local L_78_ = L_76_ and L_76_:FindFirstChild("entered")
		local L_79_ = L_76_ and L_76_:FindFirstChild("rock")
		if (L_77_ and L_77_.Transparency == 0) and L_78_ and (not L_79_) then
			local L_80_ = (L_77_.Position - L_27_.Position).Magnitude;
			if L_80_ < L_71_ then
				L_71_ = L_80_;
				L_73_ = L_77_;
				L_72_ = L_75_forvar1
			end
		end
	end;
	return L_72_, L_73_
end;
function GetRandomTarget()
	local L_81_, L_82_ = {}, 0
	for L_83_forvar0, L_84_forvar1 in next, L_12_:GetPlayers() do
		if L_84_forvar1 == L_24_ then
			continue
		end;
		local L_85_ = L_84_forvar1.Character;
		local L_86_ = L_85_ and L_85_:FindFirstChild("Head")
		local L_87_ = L_85_ and L_85_:FindFirstChild("entered")
		local L_88_ = L_85_ and L_85_:FindFirstChild("rock")
		if (L_86_ and L_86_.Transparency == 0) and L_87_ and (not L_88_) then
			L_82_ = L_82_ + 1 + 0;
			L_81_[# L_81_ + 1] = {
				L_84_forvar1,
				L_86_
			}
		end
	end;
	if L_82_ > 0 then
		return unpack(L_81_[math.random(1, L_82_)])
	end;
	return nil
end;
function GetPlayer(L_89_arg0)
	L_89_arg0 = string.lower(L_89_arg0)
	for L_90_forvar0, L_91_forvar1 in next, L_12_:GetPlayers() do
		if L_91_forvar1 ~= L_24_ then
			if (L_91_forvar1.Name:sub(1, # L_89_arg0):lower() == L_89_arg0) or (L_91_forvar1.DisplayName:sub(1, # L_89_arg0):lower() == L_89_arg0) then
				return L_91_forvar1
			end
		end
	end;
	return nil
end;
function InvalidObj(L_92_arg0)
	return (not L_92_arg0) or (not L_92_arg0.Parent)
end;
function GetTool()
	return L_24_.Backpack:FindFirstChildOfClass("Tool") or L_24_.Character:FindFirstChildOfClass("Tool")
end;
function Attach(L_93_arg0)
	L_28_.Name = "1"
	local L_94_ = L_28_:Clone()
	L_94_.Parent = L_25_;
	L_94_.Name = "Humanoid"
	task.wait(0.025)
	L_28_:Destroy()
	workspace.CurrentCamera.CameraSubject = L_25_;
	L_94_.DisplayDistanceType = "None"
	local L_95_ = GetTool()
	L_95_.Parent = L_25_;
	L_27_.CFrame = L_93_arg0.CFrame * CFrame.new(0, 0, 0) * CFrame.new(math.random(-100, 100) / 200, math.random(-100, 100) / 5 + 195, math.random(-100, 100) / 200)
	local L_96_ = 0
	repeat
		task.wait(0.1)
		L_96_ = L_96_ + 1
		L_27_.CFrame = L_93_arg0.CFrame * CFrame.new(math.random(-2, 2), 0, math.random(-2, 2))
	until (L_95_.Parent ~= L_25_) or (InvalidObj(L_93_arg0) or InvalidObj(L_27_)) or (L_96_ > 100 and L_96_ > 2)
end;
function GetHitRemote(L_97_arg0)
	local L_98_ = L_97_arg0:WaitForChild("Glove")
	local L_99_ = getconstants(getconnections(L_98_.Touched)[1].Function)
	for L_100_forvar0, L_101_forvar1 in next, L_99_ do
		if L_101_forvar1 == "FireServer" then
			return L_16_:FindFirstChild(L_99_[L_100_forvar0 - 1])
		end
	end
end;
function TeleportPlayer(L_102_arg0, L_103_arg1)
	if L_31_ then
		return L_6_:MakeNotification({
			Name = "Kick Player";
			Content = "Ur already kicking someone.";
			Image = "rbxassetid://4483345998";
			Time = 5
		})
	end;
	L_31_ = true
	local L_104_ = L_102_arg0.Character;
	local L_105_ = L_104_ and L_104_:FindFirstChild("HumanoidRootPart")
	local L_106_ = L_104_ and L_104_:FindFirstChild("Humanoid")
	if (not L_105_) or (not L_106_) then
		L_31_ = false
		return warn("DH | YOO INSANE!")
	end;
	if L_25_:FindFirstChild("entered") then
		Respawn()
		L_28_:UnequipTools()
	else
		EnterArena()
		L_28_:UnequipTools()
	end;
	local L_107_ = L_25_;
	task.wait(0.3)
	local L_108_, L_109_ = pcall(Attach, L_105_)
	if not L_108_ then
		L_31_ = false
		return warn("DH | ERROR:", L_109_)
	end;
	local L_110_ = false
	local L_111_;
	L_111_ = L_106_.Died:Connect(function()
		L_110_ = true
		L_111_:Disconnect()
	end)
	local L_112_ = false
	local L_113_;
	L_113_ = L_28_.Died:Connect(function()
		L_112_ = true
		L_113_:Disconnect()
	end)
	local L_114_ = 0
	repeat
		task.wait()
		L_114_ = L_114_ + 1
		L_27_.CFrame = L_103_arg1
	until InvalidObj(L_102_arg0) or InvalidObj(L_105_) or InvalidObj(L_27_) or (L_114_ > 250) or (L_110_ or L_112_) or ((L_105_.Position - L_103_arg1.p).Magnitude > 5) or (L_107_ ~= L_25_)
	L_111_:Disconnect()
	L_113_:Disconnect()
	repeat
		task.wait(0.05)
		L_27_.CFrame = L_103_arg1;
		L_27_.Velocity = Vector3.new(0, 50, 0)
	until L_107_ ~= L_25_;
	L_27_.CFrame = CFrame.new(0, 400, 0)
	L_31_ = false
end;
function GetTool()
	return L_24_.Backpack:FindFirstChildOfClass("Tool") or L_25_:FindFirstChildOfClass("Tool")
end;
function ForTime(L_115_arg0, L_116_arg1, L_117_arg2)
	local L_118_ = tick()
	repeat
		task.wait()
		L_115_arg0()
	until (tick() - L_118_ >= L_116_arg1) or L_117_arg2()
end;
function KillPlayer(L_119_arg0)
	if L_119_arg0.Position.Y < -9 then
		return
	end;
	ForTime(function()
		L_27_.CFrame = CFrame.new(L_119_arg0.CFrame.p + Vector3.new(0, 10, 0))
		L_27_.Velocity = Vector3.new(0, 0, 0)
		local L_120_ = GetTool()
		if L_120_ then
			local L_121_ = L_33_[L_120_.Name]
			if L_121_ then
				L_121_:FireServer(L_119_arg0, true)
			else
				L_33_[L_120_.Name] = GetHitRemote(L_120_)
			end
		end
	end, 0.5, function()
		return L_119_arg0.Position.Y < -1
	end)
end;
L_3_:Add(L_24_, "CharacterAdded", function(L_122_arg0)
	L_25_ = L_122_arg0;
	L_32_[L_25_] = false
	L_27_ = L_122_arg0:WaitForChild("HumanoidRootPart")
	L_28_ = L_122_arg0:WaitForChild("Humanoid")
	if L_6_.Flags.AutoRespawn.Value and (not L_31_) and (not L_30_) then
		task.wait(0.25)
		EnterArena()
	end
end)
L_7_:Connect(function(L_123_arg0, L_124_arg1, L_125_arg2)
	if L_124_arg1 == "Godmode" then
		if (not L_125_arg2) and (L_32_[L_25_]) then
			L_32_[L_25_] = false
			L_22_:FireServer()
		end
	elseif L_124_arg1 == "KickPlayer" and L_125_arg2 ~= "" then
		local L_126_ = GetPlayer(L_125_arg2)
		if L_126_ and L_126_.Character then
			TeleportPlayer(L_126_, CFrame.new(L_29_.p) * CFrame.new(0, 3.5, 0))
		end
	end
end)
local L_34_ = tick()
L_3_:Add(L_14_, "RenderStepped", function()
	if L_24_.PlayerScripts:FindFirstChild("WSC") then
		L_24_.PlayerScripts.WSC.Disabled = true
	end;
	if L_28_ then
		L_28_.WalkSpeed = L_6_.Flags.WalkSpeed.Value;
		L_28_.JumpPower = L_6_.Flags.JumpPower.Value
	end;
	if L_6_.Flags.Godmode.Value then
		if L_25_:FindFirstChild("entered") and (not L_32_[L_25_]) and (not L_31_) then
			L_32_[L_25_] = true
			L_30_ = true
			local L_127_ = GetDiamondGlove()
			if L_127_ then
				if L_127_ == "Respawned" then
					task.wait(0.5)
				end;
				local L_128_;
				local L_129_;
				L_129_ = L_25_.ChildAdded:Connect(function(L_130_arg0)
					if L_130_arg0.Name == "rock" then
						L_128_ = L_130_arg0;
						L_129_:Disconnect()
					end
				end)
				repeat
					task.wait(0.15)
					if L_128_ then
						break
					end;
					L_23_:FireServer()
				until L_128_;
				L_128_:Destroy()
				L_28_.Name = "Humanoid"
			end;
			L_30_ = false
		end
	end;
	if L_6_.Flags.KillAura.Value and tick() - L_34_ >= 0.1 then
		if L_25_:FindFirstChild("entered") then
			local L_131_, L_132_ = GetTarget()
			if L_131_ and L_132_ then
				local L_133_ = GetTool()
				if L_133_ then
					local L_134_ = L_33_[L_133_.Name]
					if L_134_ then
						L_34_ = tick()
						L_134_:FireServer(L_132_, true)
					else
						L_33_[L_133_.Name] = GetHitRemote(L_133_)
					end
				end
			end
		end
	end
end)
local L_35_ = false
task.spawn(function()
	while true do
		if L_6_.Flags.KillAll.Value and L_25_:FindFirstChild("entered") and (not L_31_) and (not L_30_) then
			if (not L_35_) then
				L_35_ = true
				local L_135_, L_136_ = GetRandomTarget()
				if L_135_ and L_136_ then
					KillPlayer(L_136_)
				end;
				L_35_ = false
			end
		end;
		task.wait()
	end
end)
L_6_:Init()
