-- Sorry, but i just leaked some shit in github

local L_26_ = loadstring(game:HttpGet(("https://raw.githubusercontent.com/RandomAdamYT/DarkHub_V4/main/UILIB")))()
local L_27_ = L_26_:MakeWindow({
	Name = "DARKHUB V4",
	HidePremium = false,
	SaveConfig = true,
	ConfigFolder = "DARKHUB"
})
local L_28_ = require(game.ReplicatedStorage:WaitForChild("Framework"):WaitForChild("Library"))
L_28_.Audio.Play(5205173410, workspace, 1, 1)
L_28_.Message.New("" .. "\226\156\133 DarkHub Loaded! Thanks for using DarkHub V4! \240\159\152\129")
local L_29_ = getsenv(game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.Game["First Person Controller"]).DoesOwnGun;
local L_30_ = L_28_.GunCmds.DoesOwnGun;
local L_31_ = L_27_:Tab({
	Name = "Aimbot"
})
local L_32_ = L_27_:Tab({
	Name = "Visuals"
})
local L_33_ = L_27_:Tab({
	Name = "Gun Mods"
})
local L_34_ = L_27_:Tab({
	Name = "Extra"
})
L_31_:Toggle({
	Name = "KillAll",
	Default = false,
	Save = true,
	Flag = "FF_KillAll",
	Callback = function()
	end
})
L_31_:Toggle({
	Name = "Silent",
	Default = false,
	Save = true,
	Flag = "FF_Silent",
	Callback = function()
	end
})
L_32_:Toggle({
	Name = "Highlight Esp",
	Default = false,
	Save = true,
	Flag = "FF_Highlight",
	Callback = function()
	end
})
L_33_:Button({
	Name = "FireRate",
	Callback = function()
		for L_62_forvar0, L_63_forvar1 in pairs(getgc(true)) do
			if typeof(L_63_forvar1) == "table" and rawget(L_63_forvar1, "shotrate") then
				L_63_forvar1.shotrate = 0.037
			end
		end
	end
})
L_33_:Button({
	Name = "No Drop",
	Callback = function()
		for L_64_forvar0, L_65_forvar1 in pairs(getgc(true)) do
			if typeof(L_65_forvar1) == "table" and rawget(L_65_forvar1, "shotrate") then
				L_65_forvar1.velocity = 5 + 994
			end
		end
	end
})
L_33_:Button({
	Name = "Fully Automatic",
	Callback = function()
		for L_69_forvar0, L_70_forvar1 in pairs(getgc(true)) do
			if typeof(L_70_forvar1) == "table" and rawget(L_70_forvar1, "shotrate") then
				L_70_forvar1.automatic = true
			end
		end
	end
})
L_34_:Button({
	Name = "Unlock All (Client-Sided)",
	Warning = "Other players can not see these weapons",
	Callback = function()
		local L_71_;
		L_71_ = hookmetamethod(game, "__namecall", function(L_72_arg0, ...)
			local L_73_ = {
				...
			}
			local L_74_ = getnamecallmethod()
			if tostring(L_72_arg0) == "request respawn" and getnamecallmethod() == "FireServer" then
				if typeof(L_73_[1]) == "table" then
					L_73_[1 + 0] = {
						"1"
					}
				end;
				return L_72_arg0.FireServer(L_72_arg0, unpack(L_73_))
			end;
			return L_71_(L_72_arg0, ...)
		end)
		hookfunction(getsenv(game:GetService("Players").LocalPlayer.PlayerScripts.Scripts.Game["First Person Controller"]).DoesOwnGun, function()
			return true
		end)
		hookfunction(L_28_.GunCmds.DoesOwnGun, function()
			return true
		end)
	end
})
L_34_:Button({
	Name = "Loop Remove All Layered Clothing",
	Warning = "This should be used to remove any annoying Character particles or Layered Clothing Exploits",
	Callback = function()
		for L_78_forvar0, L_79_forvar1 in pairs(game.Players:GetPlayers()) do
			for L_80_forvar0, L_81_forvar1 in pairs(L_79_forvar1.Character:GetChildren()) do
				if L_81_forvar1:IsA("Accessory") then
					L_81_forvar1:Destroy()
				end
			end;
			L_79_forvar1.CharacterAdded:connect(function(L_82_arg0)
				wait(.11)
				for L_83_forvar0, L_84_forvar1 in pairs(L_82_arg0:GetChildren()) do
					if L_84_forvar1:IsA("Accessory") then
						L_84_forvar1:Destroy()
					end
				end
			end)
		end
	end
})
spawn(function()
	while task.wait() do
		for L_85_forvar0, L_86_forvar1 in pairs(game.Players:GetPlayers()) do
			if L_86_forvar1.Character then
				if not L_86_forvar1.Character:FindFirstChild("Highlight") then
					local L_87_ = Instance.new("Highlight", L_86_forvar1.Character)
					L_87_.FillColor = L_86_forvar1.TeamColor.Color
				end
			end
		end;
		for L_88_forvar0, L_89_forvar1 in pairs(game.Players:GetPlayers()) do
			if L_89_forvar1.Character then
				if L_89_forvar1.Character:FindFirstChild("Highlight") then
					if L_26_.Flags["FF_Highlight"] and L_26_.Flags["FF_Highlight"].Value then
						L_89_forvar1.Character:FindFirstChild("Highlight").Enabled = true
						L_89_forvar1.Character:FindFirstChild("Highlight").FillColor = L_89_forvar1.TeamColor.Color
					elseif L_26_.Flags["FF_Highlight"] and not L_26_.Flags["FF_Highlight"].Value then
						L_89_forvar1.Character:FindFirstChild("Highlight").Enabled = false
					end
				end
			end
		end;
		if L_26_.Flags["FF_KillAll"] and L_26_.Flags["FF_KillAll"].Value then
			for L_106_forvar0, L_107_forvar1 in pairs(game.Players:GetPlayers()) do
				pcall(function()
					if L_107_forvar1.Character and L_107_forvar1.Team == game.Players.LocalPlayer.Team and game:GetService("Players").LocalPlayer.PlayerGui.Top.RoundType.TextLabel.Text == "FFA" then
						local L_108_ = L_28_.Functions.GenerateUID()
						workspace.__THINGS.__REMOTES["new projectile"]:FireServer({
							[1] = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector),
							[2] = L_108_,
							[3] = math.floor(game.Workspace.DistributedGameTime)
						})
						wait(.3)
						workspace.__THINGS.__REMOTES["do damage"]:FireServer({
							[1] = L_107_forvar1.Character.Humanoid,
							[2] = L_108_,
							[3] = math.floor(game.Workspace.DistributedGameTime),
							[4] = L_107_forvar1.Character.Head.Position,
							[5] = false
						})
					elseif L_107_forvar1.Character and L_107_forvar1.Team ~= game.Players.LocalPlayer.Team then
						local L_115_ = L_28_.Functions.GenerateUID()
						workspace.__THINGS.__REMOTES["new projectile"]:FireServer({
							[1] = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector),
							[2] = L_115_,
							[3] = math.floor(game.Workspace.DistributedGameTime)
						})
						wait(.1)
						workspace.__THINGS.__REMOTES["do damage"]:FireServer({
							[1 + 0] = L_107_forvar1.Character.Humanoid,
							[2] = L_115_,
							[3] = math.floor(game.Workspace.DistributedGameTime),
							[4 + 0] = L_107_forvar1.Character.Head.Position,
							[5] = false
						})
					end
				end)
			end
		end
	end
end)
local function L_35_func()
	local L_157_ = nil
	local L_158_ = math.huge;
	if game:GetService("Players").LocalPlayer.PlayerGui.Top.RoundType.TextLabel.Text == "FFA" then
		for L_159_forvar0, L_160_forvar1 in pairs(game.Players:GetPlayers()) do
			if L_160_forvar1.Character and L_160_forvar1.Character:FindFirstChild("Humanoid") and L_160_forvar1.Character.Humanoid.Health ~= 0 and L_160_forvar1.Character:FindFirstChild("HumanoidRootPart") and L_160_forvar1.Team == game.Players.LocalPlayer.Team then
				local L_161_ = game.Workspace.CurrentCamera:WorldToScreenPoint(L_160_forvar1.Character.HumanoidRootPart.Position)
				local L_162_ = (Vector2.new(game:GetService("Players").LocalPlayer:GetMouse().X, game:GetService("Players").LocalPlayer:GetMouse().Y) - Vector2.new(L_161_.X, L_161_.Y)).magnitude;
				if L_162_ < L_158_ and L_162_ <= 2500 then
					L_157_ = L_160_forvar1;
					L_158_ = L_162_
				end
			end
		end
	else
		for L_163_forvar0, L_164_forvar1 in pairs(game.Players:GetPlayers()) do
			if L_164_forvar1.Character and L_164_forvar1.Character:FindFirstChild("Humanoid") and L_164_forvar1.Character.Humanoid.Health ~= 0 and L_164_forvar1.Character:FindFirstChild("HumanoidRootPart") and L_164_forvar1.Team ~= game.Players.LocalPlayer.Team then
				local L_191_ = game.Workspace.CurrentCamera:WorldToScreenPoint(L_164_forvar1.Character.HumanoidRootPart.Position)
				local L_192_ = (Vector2.new(game:GetService("Players").LocalPlayer:GetMouse().X, game:GetService("Players").LocalPlayer:GetMouse().Y) - Vector2.new(L_191_.X, L_191_.Y)).magnitude;
				if L_192_ < L_158_ and L_192_ <= 2500 then
					L_157_ = L_164_forvar1;
					L_158_ = L_192_
				end
			end
		end
	end;
	return L_157_
end;
local L_36_;
L_36_ = hookmetamethod(game, "__namecall", function(L_210_arg0, ...)
	local L_211_ = {
		...
	}
	if tostring(L_210_arg0) == "new projectile" and getnamecallmethod() == "FireServer" then
		for L_215_forvar0, L_216_forvar1 in pairs(L_211_[1 + 0]) do
			if typeof(L_216_forvar1) == "string" then
				DataCore = L_216_forvar1
			end
		end
	end;
	if tostring(L_210_arg0) == "new projectile" and getnamecallmethod() == "FireServer" and L_26_.Flags["FF_Silent"] and L_26_.Flags["FF_Silent"].Value and L_35_func() then
		if L_35_func() then
			workspace.__THINGS.__REMOTES["do damage"]:FireServer({
				[1] = L_35_func().Character.Humanoid,
				[2] = DataCore,
				[3] = math.floor(game.Workspace.DistributedGameTime),
				[4] = L_35_func().Character.Head.Position,
				[5] = false
			})
		end
	end;
	return L_36_(L_210_arg0, ...)
end)
L_26_:Init()
