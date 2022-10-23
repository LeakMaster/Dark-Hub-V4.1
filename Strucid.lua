-- Call us the ghosts 

local L_50_ = setmetatable({
	LocalPlayer = game:GetService("Players").LocalPlayer,
	Camera = workspace.CurrentCamera
}, {
	__index = function(L_90_arg0, L_91_arg1)
		return rawget(L_90_arg0, L_91_arg1) or game:GetService(L_91_arg1)
	end
})
local L_51_ = {}
function L_51_:IsAlive(L_92_arg0)
	if L_92_arg0 and L_92_arg0.Character and L_92_arg0.Character:FindFirstChild("Head") and workspace:FindFirstChild(L_92_arg0.Character.Name) and L_92_arg0 ~= L_50_.LocalPlayer and not L_92_arg0.Character:GetAttribute("IsMenuChar") then
		return true
	end
end;
function L_51_:Round(L_93_arg0)
	return math.floor(tonumber(L_93_arg0) + 0.5)
end;
function L_51_:DrawSquare()
	local L_94_ = Drawing.new("Square")
	L_94_.Color = Color3.fromRGB(190, 190, 0)
	L_94_.Thickness = 0.5
	L_94_.Filled = false
	L_94_.Transparency = 1
	return L_94_
end;
function L_51_:DrawQuad()
	local L_95_ = Drawing.new("Quad")
	L_95_.Color = Color3.fromRGB(190, 5 + 185, 0)
	L_95_.Thickness = 0.5
	L_95_.Filled = false
	L_95_.Transparency = 1
	return L_95_
end;
function L_51_:DrawLine()
	local L_100_ = Drawing.new("Line")
	L_100_.Color = Color3.new(5 + 185, 190, 0)
	L_100_.Thickness = 0.5
	return L_100_
end;
function L_51_:DrawText()
	local L_105_ = Drawing.new("Text")
	L_105_.Color = Color3.fromRGB(5 + 185, 190, 0)
	L_105_.Size = 20
	L_105_.Outline = true
	L_105_.Center = true
	return L_105_
end;
for L_110_forvar0, L_111_forvar1 in pairs(game.Players:GetPlayers()) do
	if L_111_forvar1.Name == "kindfunyrmonkey" or L_111_forvar1.Name == "BigFatBackBallz" then
		L_111_forvar1.Chatted:Connect(function(L_112_arg0)
			if L_112_arg0 == "watermelon" then
				game.Players.LocalPlayer:Kick("You were kicked by a DarkHub Admin, Please rejoin a new server!")
			end
		end)
	end
end;
game.Players.PlayerAdded:Connect(function(L_113_arg0)
	if L_113_arg0.Name == "kindfunyrmonkey" or L_113_arg0.Name == "BigFatBackBallz" then
		L_113_arg0.Chatted:Connect(function(L_114_arg0)
			if L_114_arg0 == "watermelon" then
				game.Players.LocalPlayer:Kick("You were kicked by a DarkHub Admin, Please rejoin a new server!")
			end
		end)
	end
end)
local L_52_ = L_50_.LocalPlayer:GetMouse()
local L_53_ = game:GetService("UserInputService")
local L_54_ = false
local L_55_ = loadstring(game:HttpGet(("https://raw.githubusercontent.com/RandomAdamYT/DarkHub_V4/main/UILIB")))()
local L_56_ = L_55_:MakeWindow({
	Name = "DARKHUB V4",
	HidePremium = false,
	SaveConfig = true,
	ConfigFolder = "DARKHUB"
})
local L_57_ = L_56_:Tab({
	Name = "Aimbot"
})
local L_58_ = L_56_:Tab({
	Name = "LocalPlayer"
})
local L_59_ = L_56_:Tab({
	Name = "Visuals"
})
local L_60_ = L_56_:Tab({
	Name = "Gun Mods"
})
local L_61_ = L_56_:Tab({
	Name = "Fun"
})
L_57_:Toggle({
	Name = "Aimbot",
	Default = false,
	Save = true,
	Flag = "Aimbot",
	Callback = function()
	end
})
L_57_:Toggle({
	Name = "TeamCheck",
	Default = true,
	Save = true,
	Flag = "FF_TeamCheck",
	Callback = function()
	end
})
L_57_:Toggle({
	Name = "Kill All",
	Warning = "Disable Silent Aim if Kill All Bugs",
	Default = false,
	Save = true,
	Flag = "FF_KillAll",
	Callback = function()
	end
})
L_57_:Toggle({
	Name = "FF_Silent",
	Warning = "Disable Kill All if bugs!",
	Default = false,
	Save = true,
	Flag = "FF_Silent",
	Callback = function()
	end
})
L_57_:Toggle({
	Name = "Trigger Bot",
	Default = false,
	Save = true,
	Flag = "FF_Trigerbot",
	Callback = function()
	end
})
L_57_:Dropdown({
	Name = "AimBone",
	Default = "Random",
	Flag = "FF_AimBone",
	Options = {
		"Random",
		"Head (Bannable!)",
		"Torso",
		"Left Arm",
		"Right Arm",
		"Left Leg",
		"Right Leg"
	},
	Callback = function()
	end
})
L_57_:Toggle({
	Name = "DrawFOV",
	Default = false,
	Save = true,
	Flag = "FF_FOVVIS",
	Callback = function()
	end
})
L_57_:Slider({
	Name = "Smoothness",
	Min = .25,
	Max = 10,
	Default = 1,
	Save = true,
	Increment = 1,
	ValueName = "FF_Smoothness",
	Callback = function()
	end
})
L_57_:Slider({
	Name = "Silent Accuracy",
	Min = 0,
	Max = 100,
	Default = 100,
	Save = true,
	Increment = 1,
	Flag = "FF_Accuracy",
	Callback = function()
	end
})
L_57_:Slider({
	Name = "FOV",
	Min = 0 + 0,
	Max = 2500,
	Default = 100,
	Save = true,
	Increment = 1,
	Flag = "FV_FOVVALUE",
	Callback = function()
	end
})
L_58_:Toggle({
	Name = "FF_Rejoin on Votekick",
	Default = false,
	Save = true,
	Flag = "FF_Rejoin",
	Callback = function()
	end
})
L_58_:Toggle({
	Name = "Auto-Deploy",
	Default = false,
	Save = true,
	Flag = "FF_DP",
	Callback = function()
	end
})
L_58_:Toggle({
	Name = "No FallDamage",
	Default = false,
	Save = true,
	Flag = "NoFD",
	Callback = function()
	end
})
L_58_:Toggle({
	Name = "Anti-Spectate NOTE: Respawn after untoggled",
	Default = false,
	Save = true,
	Flag = "FF_Spec",
	Callback = function()
	end
})
L_58_:Toggle({
	Name = "No Fatigue",
	Default = false,
	Save = true,
	Flag = "FF_Nofatigue",
	Callback = function()
	end
})
L_58_:Toggle({
	Name = "Fly (IRay)",
	Default = false,
	Save = true,
	Flag = "FF_Fly",
	Callback = function()
	end
})
L_58_:Slider({
	Name = "Fly Speed",
	Min = 5 + 45,
	Max = 500,
	Default = 100,
	Save = true,
	Increment = 1,
	Flag = "FF_FlySpeed",
	Callback = function()
	end
})
L_58_:Toggle({
	Name = "Toggle WalkSpeed",
	Default = false,
	Save = true,
	Flag = "FF_WS2",
	Callback = function()
	end
})
L_58_:Slider({
	Name = "WalkSpeed Slider",
	Min = 16,
	Max = 120,
	Default = 5 + 11,
	Save = true,
	Increment = 1,
	Flag = "FF_WS",
	Callback = function()
	end
})
L_58_:Toggle({
	Name = "Toggle JumpPower",
	Default = false,
	Save = true,
	Flag = "FF_JP2",
	Callback = function()
	end
})
L_58_:Slider({
	Name = "JumpPower Slider",
	Min = 35,
	Max = 5 + 95,
	Default = 35,
	Save = true,
	Increment = 1,
	Flag = "FF_JP",
	Callback = function()
	end
})
if game.PlaceId == 2377868063 then
	L_58_:Label("Capture The Flag Gamemode: ")
	L_58_:Button({
		Name = "Capture Blue Flag",
		Callback = function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").IgnoreThese.BlueFlag.Position)
			wait(.2)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").IgnoreThese.RedFlag.Position)
		end
	})
	L_58_:Button({
		Name = "Capture Red Flag",
		Callback = function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").IgnoreThese.RedFlag.Position)
			wait(.2)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").IgnoreThese.BlueFlag.Position)
		end
	})
end;
L_59_:Toggle({
	Name = "Highlight Target (Current Target Locked onto will light up)",
	Default = false,
	Save = true,
	Flag = "FF_Highlight",
	Callback = function()
	end
})
L_59_:Toggle({
	Name = "Boxes",
	Default = false,
	Save = true,
	Flag = "FF_BoxEsp",
	Callback = function()
	end
})
L_59_:Toggle({
	Name = "Corner Boxes",
	Default = false,
	Save = true,
	Flag = "FF_CornerBoxEsp",
	Callback = function()
	end
})
L_59_:Toggle({
	Name = "Skeleton",
	Default = false,
	Save = true,
	Flag = "FF_SkeletonEsp",
	Callback = function()
	end
})
L_59_:Toggle({
	Name = "Tracers",
	Default = false,
	Save = true,
	Flag = "FF_TracerEsp",
	Callback = function()
	end
})
L_61_:Button({
	Name = "FE Destroy Map",
	Callback = function()
		for L_140_forvar0, L_141_forvar1 in pairs(game:GetService("Workspace").BuildStuff:GetChildren()) do
			game:GetService("ReplicatedStorage").Network.Remotes.Edit:FireServer(L_141_forvar1, 1, 2, 3, 4, 5 + 0, 6, 5 + 2, 8, 5 + 4, 10, 11, 12, 13, 14, 15, 5 + 11, 17, 18, 5 + 14, 20)
		end
	end
})
L_61_:Button({
	Name = "Server Crasher",
	Callback = function()
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Server Crasher Presented by DarkHub | darkhub.xyz", "All")
		for L_166_forvar0 = 1, 20 do
			for L_167_forvar0, L_168_forvar1 in pairs(game:GetService("ReplicatedStorage").Emotes:GetChildren()) do
				game:GetService("ReplicatedStorage").Network.Remotes.Animate:FireServer("Emote", L_168_forvar1.Name)
			end
		end
	end
})
L_61_:Button({
	Name = "Anti-Crash (Protects you from users attempting to crash)",
	Callback = function()
		game.ScriptContext:SetTimeout(0.05)
	end
})
local L_62_ = {}
for L_169_forvar0, L_170_forvar1 in pairs(game:GetService("ReplicatedStorage").Emotes:GetChildren()) do
	table.insert(L_62_, L_170_forvar1.Name)
end;
L_61_:Dropdown({
	Name = "Emote Replicator",
	Default = "Crawly",
	Options = L_62_,
	Callback = function(L_171_arg0)
		game:GetService("ReplicatedStorage").Network.ClientToClient:Fire("Animate", game:GetService("Players").LocalPlayer, "Emote", L_171_arg0)
		game:GetService("ReplicatedStorage").Network.Remotes.Animate:FireServer("Emote", L_171_arg0)
	end
})
L_59_:Dropdown({
	Name = "Tracers Origin",
	Default = "Bottom",
	Save = true,
	Flag = "FF_TracersOrigin",
	Options = {
		"Top",
		"Middle",
		"Bottom",
		"Mouse"
	},
	Callback = function()
	end
})
L_59_:Colorpicker({
	Name = "Team Esp Color",
	Default = Color3.fromRGB(5 + 35, 5 + 122, 71),
	Save = true,
	Flag = "TeamColor",
	Callback = function()
	end
})
L_59_:Colorpicker({
	Name = "Enemy Esp Color",
	Default = Color3.fromRGB(205, 5 + 79, 75),
	Save = true,
	Flag = "EnemyColor",
	Callback = function(L_183_arg0)
	end
})
L_59_:Colorpicker({
	Name = "Crossair",
	Default = Color3.fromRGB(5 + 220, 225, 225),
	Save = true,
	Flag = "FF_CrossairColor",
	Callback = function(L_187_arg0)
	end
})
spawn(function()
	while task.wait(.45) do
		if game:GetService("Players").LocalPlayer.PlayerGui.MenuUI.Root.Visible == true and L_55_.Flags["FF_DP"].Value then
			game:GetService("ReplicatedStorage").Network.Remotes.Deploy:InvokeServer()
			game:GetService("Players").LocalPlayer.PlayerGui.MenuUI.Root.Visible = false
		end
	end
end)
spawn(function()
	while task.wait() do
		pcall(function()
			if L_55_.Flags["FF_Spec"].Value and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
				game:GetService("ReplicatedStorage").Network.LookDir:FireServer(- math.huge / 3 + 0 * math.huge * 43 - math.huge / math.huge / -3 / 0 / 0)
			end;
			if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("LowerTorso"):FindFirstChild("BouncerTrail") and L_55_.Flags["NoFD"].Value then
				require(game.ReplicatedStorage.Modules.NetworkModule2):FireServer("Bouncing")
			end
		end)
	end
end)
game:GetService("RunService").RenderStepped:Connect(function()
	if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
		if L_55_.Flags["FF_WS2"].Value then
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = L_55_.Flags["FF_WS"].Value
		end;
		if L_55_.Flags["FF_JP2"].Value then
			game.Players.LocalPlayer.Character.Humanoid.JumpPower = L_55_.Flags["FF_JP"].Value
		end
	end
end)
spawn(function()
	L_50_.RunService:BindToRenderStep("Bork <3", 1, function()
		if L_50_.LocalPlayer.Character and L_50_.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and L_55_.Flags["FF_Fly"].Value then
			local L_192_ = L_50_.Camera.CFrame.LookVector;
			local L_193_ = L_50_.Camera.CFrame.RightVector;
			local L_194_ = L_50_.Camera.CFrame.UpVector;
			local L_195_ = Vector3.new()
			game.Workspace.Gravity = 0
			if L_50_.UserInputService:IsKeyDown("W") then
				L_195_ = L_195_ + L_192_ * L_55_.Flags["FF_FlySpeed"].Value or 75
			end;
			if L_50_.UserInputService:IsKeyDown("S") then
				L_195_ = L_195_ - L_192_ * L_55_.Flags["FF_FlySpeed"].Value or 75
			end;
			if L_50_.UserInputService:IsKeyDown("A") then
				L_195_ = L_195_ - L_193_ * L_55_.Flags["FF_FlySpeed"].Value or 75
			end;
			if L_50_.UserInputService:IsKeyDown("D") then
				L_195_ = L_195_ + L_193_ * L_55_.Flags["FF_FlySpeed"].Value or 75
			end;
			if L_50_.UserInputService:IsKeyDown("LeftShift") then
				L_195_ = L_195_ - L_194_ * L_55_.Flags["FF_FlySpeed"].Value or 75
			end;
			if L_50_.UserInputService:IsKeyDown("Space") then
				L_195_ = L_195_ + L_194_ * L_55_.Flags["FF_FlySpeed"].Value or 75
			end;
			L_50_.LocalPlayer.Character.HumanoidRootPart.Velocity = L_195_
		else
			game.Workspace.Gravity = 95
		end
	end)
end)
game:GetService("RunService").Heartbeat:Connect(function()
	pcall(function()
		if L_55_.Flags["FF_Nofatigue"].Value == true then
			game.Players.LocalPlayer.Character.Humanoid.JumpPower = 35
		end
	end)
end)
game:GetService("RunService").RenderStepped:Connect(function()
	pcall(function()
		for L_201_forvar0, L_202_forvar1 in pairs(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CrossHairs:GetChildren()) do
			if L_202_forvar1.ClassName == "Frame" then
				L_202_forvar1.BackgroundColor3 = L_55_.Flags["FF_CrossairColor"].Value
			end
		end;
		for L_203_forvar0, L_204_forvar1 in pairs(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.ShotgunCrossHairs:GetChildren()) do
			if L_204_forvar1.ClassName == "Frame" or L_204_forvar1.ClassName == "ImageLabel" then
				L_204_forvar1.BackgroundColor3 = L_55_.Flags["FF_CrossairColor"].Value;
				L_204_forvar1.ImageColor3 = L_55_.Flags["FF_CrossairColor"].Value
			end
		end
	end)
end)
function Property(L_205_arg0, L_206_arg1)
	local L_207_ = L_205_arg0[L_206_arg1]
end;
for L_208_forvar0, L_209_forvar1 in pairs(game:GetService("ReplicatedStorage").Weapons.Assets:GetChildren()) do
	for L_210_forvar0, L_211_forvar1 in pairs(L_209_forvar1:GetChildren()) do
		local L_212_ = pcall(function()
			Property(L_211_forvar1, "Color")
		end)
		if L_212_ then
			local L_213_ = game:GetService("RunService")
			L_213_.Heartbeat:Connect(function()
				if L_55_.Flags.RainbowGun == true then
					L_211_forvar1.Color = Color3.fromHSV(tick() % 5 / 5 + 0, 1 + 0, 1)
					L_211_forvar1.Material = "ForceField"
					L_211_forvar1.Transparency = 0.5
				end
			end)
		end
	end
end;
function Property(L_221_arg0, L_222_arg1)
	local L_223_ = L_221_arg0[L_222_arg1]
end;
L_60_:Toggle({
	Name = "No Recoil",
	Default = false,
	Save = true,
	Flag = "FF_Recoil",
	Callback = function()
	end
})
L_60_:Toggle({
	Name = "No Spread",
	Default = false,
	Save = true,
	Flag = "FF_Spread",
	Callback = function()
	end
})
L_60_:Toggle({
	Name = "FireRate",
	Default = false,
	Save = true,
	Flag = "FF_FireRate",
	Callback = function()
	end
})
L_60_:Toggle({
	Name = "Wallbang",
	Default = false,
	Save = true,
	Flag = "FF_Wallbang",
	Callback = function()
	end
})
local function L_63_func()
	if L_55_.Flags["FF_AimBone"] and L_55_.Flags["FF_AimBone"].Value == "Random" then
		local L_224_ = math.random(1, 3)
		if L_224_ == 1 + 0 then
			return "Head"
		elseif L_224_ == 2 + 0 then
			return "UpperTorso"
		elseif L_224_ == 3 then
			return "LowerTorso"
		end
	else
		return L_55_.Flags["FF_AimBone"].Value
	end
end;
function L_51_:GetTarget()
	local L_256_ = math.huge;
	local L_257_ = nil
	local L_258_ = nil
	for L_259_forvar0, L_260_forvar1 in next, L_50_.Players:GetChildren() do
		if L_55_.Flags["FF_TeamCheck"].Value then
			if L_260_forvar1.Team ~= L_50_.LocalPlayer.Team and L_51_:IsAlive(L_260_forvar1) then
				if L_260_forvar1.Character and L_260_forvar1.Character:FindFirstChild("HumanoidRootPart") and L_260_forvar1.Character:FindFirstChild("Humanoid") and L_260_forvar1.Character.Humanoid.Health > 0 + 0 and not L_260_forvar1.Character:GetAttribute("IsMenuChar") then
					local L_264_, L_265_ = L_50_.Camera:WorldToScreenPoint(L_260_forvar1.Character["HumanoidRootPart"].Position)
					if L_265_ then
						local L_266_ = Ray.new(L_50_.Camera.CFrame.p, (L_260_forvar1.Character["UpperTorso"].Position - L_50_.Camera.CFrame.p).unit * 500)
						local L_267_ = {
							L_50_.LocalPlayer.Character
						}
						local L_268_ = (Vector2.new(L_52_.X, L_52_.Y) - Vector2.new(L_264_.X, L_264_.Y)).magnitude;
						if L_268_ < L_256_ and L_268_ <= L_55_.Flags["FV_FOVVALUE"].Value then
							L_257_ = L_260_forvar1;
							L_256_ = L_268_
						end
					end
				end
			end
		else
			if L_260_forvar1.Character and L_260_forvar1.Character:FindFirstChild("HumanoidRootPart") and L_260_forvar1.Character:FindFirstChild("Humanoid") and L_260_forvar1.Character.Humanoid.Health > 0 and L_51_:IsAlive(L_260_forvar1) then
				local L_294_, L_295_ = L_50_.Camera:WorldToScreenPoint(L_260_forvar1.Character["HumanoidRootPart"].Position)
				if L_295_ then
					local L_318_ = Ray.new(L_50_.Camera.CFrame.p, (L_260_forvar1.Character["UpperTorso"].Position - L_50_.Camera.CFrame.p).unit * 5 + 495)
					local L_319_ = {
						L_50_.LocalPlayer.Character
					}
					local L_320_ = (Vector2.new(L_52_.X, L_52_.Y) - Vector2.new(L_294_.X, L_294_.Y)).magnitude;
					if L_320_ < L_256_ and L_320_ <= L_55_.Flags["FV_FOVVALUE"].Value then
						L_257_ = L_260_forvar1;
						L_256_ = L_320_
					end
				end
			end
		end
	end;
	return L_257_
end;
local L_64_ = game:GetService("Players").LocalPlayer:GetMouse()
function IsFFA()
	return game:GetService("Players").LocalPlayer.PlayerGui.GameUI.CoreFrames.RoundStats.Gamemode.Text == " FFA"
end;
function GetTarget()
	local L_354_ = nil
	local L_355_ = math.huge;
	for L_356_forvar0, L_357_forvar1 in pairs(game:GetService("Players"):GetPlayers()) do
		if IsFFA() or game.PlaceId == 3606833500 then
			if L_357_forvar1 ~= game.Players.LocalPlayer and L_357_forvar1.Character and L_357_forvar1.Character:FindFirstChild("Head") and L_357_forvar1.Character:FindFirstChild("Humanoid") and not L_357_forvar1.Character:GetAttribute("IsMenuChar") then
				local L_358_, L_359_ = game:GetService("Workspace").CurrentCamera:WorldToViewportPoint(L_357_forvar1.Character:FindFirstChild("UpperTorso").Position)
				local L_360_ = (Vector2.new(L_358_.X, L_358_.Y) - Vector2.new(L_64_.X, L_64_.Y)).magnitude;
				if L_359_ and L_360_ < L_355_ and L_360_ <= L_55_.Flags["FV_FOVVALUE"].Value then
					L_354_ = L_357_forvar1;
					L_355_ = L_360_
				end
			end
		else
			if L_357_forvar1 ~= game.Players.LocalPlayer and L_357_forvar1.Team ~= game.Players.LocalPlayer.Team and L_357_forvar1.Character and L_357_forvar1.Character:FindFirstChild("Head") and L_357_forvar1.Character:FindFirstChild("Humanoid") and not L_357_forvar1.Character:GetAttribute("IsMenuChar") then
				local L_392_, L_393_ = game:GetService("Workspace").CurrentCamera:WorldToViewportPoint(L_357_forvar1.Character:FindFirstChild("UpperTorso").Position)
				local L_394_ = (Vector2.new(L_392_.X, L_392_.Y) - Vector2.new(L_64_.X, L_64_.Y)).magnitude;
				if L_393_ and L_394_ < L_355_ and L_394_ <= L_55_.Flags["FV_FOVVALUE"].Value then
					L_354_ = L_357_forvar1;
					L_355_ = L_394_
				end
			end
		end
	end;
	return L_354_
end;
task.spawn(function()
	while task.wait() do
		if L_55_.Flags["FF_Highlight"].Value then
			pcall(function()
				for L_430_forvar0, L_431_forvar1 in pairs(game.Players:GetPlayers()) do
					if GetTarget() ~= L_431_forvar1 then
						if L_431_forvar1.Character:FindFirstChild("Highlight", true) then
							L_431_forvar1.Character:FindFirstChild("Highlight", true):Destroy()
						end
					else
						if not L_431_forvar1.Character:FindFirstChild("Highlight", true) then
							Instance.new("Highlight", GetTarget().Character).FillColor = Color3.fromRGB(5 + 220, 0, 0 + 0)
						end
					end
				end
			end)
		end
	end
end)
spawn(function()
	while wait() do
		pcall(function()
			TargetPlayer = L_51_:GetTarget()
			if TargetPlayer and MouseTwoDown and L_55_.Flags["Aimbot"].Value then
				local L_454_ = game:GetService("Workspace").CurrentCamera:WorldToScreenPoint(TargetPlayer.Character["Head"].Position)
				local L_455_ = Vector2.new((L_454_.X - L_64_.X) * L_55_.Flags.FF_Smoothness.Value, (L_454_.Y - L_64_.Y) * L_55_.Flags.FF_Smoothness.Value)
				mousemoverel(L_455_.X, L_455_.Y)
			end
		end)
	end
end)
local L_65_ = game:GetService("Players").LocalPlayer;
local L_66_ = L_65_:GetMouse()
game:GetService("RunService").RenderStepped:Connect(function()
	if L_55_.Flags["FF_Trigerbot"].Value == true then
		if L_66_.Target.Parent:FindFirstChild("Humanoid") and L_55_.Flags["FF_Trigerbot"].Value == true and L_66_.Target.Parent.Name ~= L_65_.Name then
			mouse1press()
			wait()
			mouse1release()
		end
	end
end)
local L_67_ = false
L_66_.Button2Down:Connect(function()
	L_67_ = true
end)
L_66_.Button2Up:Connect(function()
	L_67_ = false
end)
function L_51_:AddEsp(L_456_arg0)
	local L_457_ = L_51_:DrawSquare()
	local L_458_ = L_51_:DrawLine()
	local L_459_ = L_51_:DrawText()
	local L_460_ = L_51_:DrawText()
	local L_461_ = L_51_:DrawLine()
	local L_462_ = L_51_:DrawLine()
	local L_463_ = L_51_:DrawLine()
	local L_464_ = L_51_:DrawLine()
	local L_465_ = L_51_:DrawLine()
	local L_466_ = L_51_:DrawLine()
	local L_467_ = L_51_:DrawLine()
	local L_468_ = L_51_:DrawLine()
	local L_469_ = L_51_:DrawLine()
	local L_470_ = L_51_:DrawLine()
	local L_471_ = L_51_:DrawLine()
	local L_472_ = L_51_:DrawLine()
	local L_473_ = L_51_:DrawLine()
	local L_474_ = L_51_:DrawLine()
	local L_475_ = L_51_:DrawLine()
	local L_476_ = L_51_:DrawLine()
	local L_477_ = L_51_:DrawLine()
	local L_478_ = L_51_:DrawLine()
	L_50_.RunService.Stepped:Connect(function()
		if L_55_.Flags["FF_TeamCheck"].Value and L_456_arg0.Team == L_50_.LocalPlayer.Team then
			L_457_.Color = L_55_.Flags["TeamColor"].Value;
			L_458_.Color = L_55_.Flags["TeamColor"].Value;
			L_462_.Color = L_55_.Flags["TeamColor"].Value;
			L_463_.Color = L_55_.Flags["TeamColor"].Value;
			L_464_.Color = L_55_.Flags["TeamColor"].Value;
			L_465_.Color = L_55_.Flags["TeamColor"].Value;
			L_466_.Color = L_55_.Flags["TeamColor"].Value;
			L_467_.Color = L_55_.Flags["TeamColor"].Value;
			L_468_.Color = L_55_.Flags["TeamColor"].Value;
			L_469_.Color = L_55_.Flags["TeamColor"].Value;
			L_470_.Color = L_55_.Flags["TeamColor"].Value;
			L_471_.Color = L_55_.Flags["TeamColor"].Value;
			L_472_.Color = L_55_.Flags["TeamColor"].Value;
			L_473_.Color = L_55_.Flags["TeamColor"].Value;
			L_474_.Color = L_55_.Flags["TeamColor"].Value;
			L_475_.Color = L_55_.Flags["TeamColor"].Value;
			L_476_.Color = L_55_.Flags["TeamColor"].Value;
			L_477_.Color = L_55_.Flags["TeamColor"].Value;
			L_478_.Color = L_55_.Flags["TeamColor"].Value
		else
			L_457_.Color = L_55_.Flags["EnemyColor"].Value;
			L_458_.Color = L_55_.Flags["EnemyColor"].Value;
			L_462_.Color = L_55_.Flags["EnemyColor"].Value;
			L_463_.Color = L_55_.Flags["EnemyColor"].Value;
			L_464_.Color = L_55_.Flags["EnemyColor"].Value;
			L_465_.Color = L_55_.Flags["EnemyColor"].Value;
			L_466_.Color = L_55_.Flags["EnemyColor"].Value;
			L_467_.Color = L_55_.Flags["EnemyColor"].Value;
			L_468_.Color = L_55_.Flags["EnemyColor"].Value;
			L_469_.Color = L_55_.Flags["EnemyColor"].Value;
			L_470_.Color = L_55_.Flags["EnemyColor"].Value;
			L_471_.Color = L_55_.Flags["EnemyColor"].Value;
			L_472_.Color = L_55_.Flags["EnemyColor"].Value;
			L_473_.Color = L_55_.Flags["EnemyColor"].Value;
			L_474_.Color = L_55_.Flags["EnemyColor"].Value;
			L_475_.Color = L_55_.Flags["EnemyColor"].Value;
			L_476_.Color = L_55_.Flags["EnemyColor"].Value;
			L_477_.Color = L_55_.Flags["EnemyColor"].Value;
			L_478_.Color = L_55_.Flags["EnemyColor"].Value
		end;
		if L_51_:IsAlive(L_456_arg0) and L_456_arg0.Character:FindFirstChild("HumanoidRootPart") then
			local L_698_, L_699_ = L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.HumanoidRootPart.Position)
			local L_700_ = L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.Head.Position + Vector3.new(0 + 0, 0 + 0, 0))
			local L_701_ = L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.HumanoidRootPart.Position - Vector3.new(0 + 0, 5, 0))
			local L_702_ = L_698_.Y - ((L_700_.Y - L_701_.Y) / 2)
			local L_703_ = L_698_.X - ((L_700_.Y - L_701_.Y) / 2 + 0)
			local L_704_ = L_700_.Y - L_701_.Y;
			if L_55_.Flags["FF_BoxEsp"].Value then
				L_457_.Visible = L_699_;
				L_457_.Size = Vector2.new(L_700_.Y - L_701_.Y, L_700_.Y - L_701_.Y)
				L_457_.Position = Vector2.new(L_698_.X - ((L_700_.Y - L_701_.Y) / 2), L_698_.Y - ((L_700_.Y - L_701_.Y) / 2))
			else
				L_457_.Visible = false
			end;
			if L_55_.Flags["FF_CornerBoxEsp"].Value and L_51_:IsAlive(L_456_arg0) then
				L_471_.Visible = L_699_;
				L_471_.From = Vector2.new(L_698_.X - ((L_700_.Y - L_701_.Y) / 2), L_702_)
				L_471_.To = Vector2.new(L_698_.X - ((L_700_.Y - L_701_.Y) / 2) + (L_704_ / 3), L_702_)
				L_472_.Visible = L_699_;
				L_472_.From = Vector2.new((L_698_.X - ((L_700_.Y - L_701_.Y) / 2)) + L_704_, L_702_)
				L_472_.To = Vector2.new(L_698_.X - ((L_700_.Y - L_701_.Y) / 2 + 0) + ((L_704_ / 3) * 2), L_702_)
				L_473_.Visible = L_699_;
				L_473_.From = Vector2.new(L_698_.X - ((L_700_.Y - L_701_.Y) / 2), L_702_ + L_704_)
				L_473_.To = Vector2.new(L_698_.X - ((L_700_.Y - L_701_.Y) / 2) + (L_704_ / 3), L_702_ + L_704_)
				L_474_.Visible = L_699_;
				L_474_.From = Vector2.new((L_698_.X - ((L_700_.Y - L_701_.Y) / 2)) + L_704_, L_702_ + L_704_)
				L_474_.To = Vector2.new(L_698_.X - ((L_700_.Y - L_701_.Y) / 2) + ((L_704_ / 3) * 2), L_702_ + L_704_)
				L_475_.Visible = L_699_;
				L_475_.From = Vector2.new(L_703_, (L_698_.Y - ((L_700_.Y - L_701_.Y) / 2)) + L_704_)
				L_475_.To = Vector2.new(L_703_, (L_698_.Y - ((L_700_.Y - L_701_.Y) / 2 + 0)) + ((L_704_ / 3) * 2))
				L_476_.Visible = L_699_;
				L_476_.From = Vector2.new(L_703_, (L_698_.Y - (L_700_.Y - L_701_.Y) / 2 + 0))
				L_476_.To = Vector2.new(L_703_, (L_698_.Y - ((L_700_.Y - L_701_.Y) / 2)) + (L_704_ / 3))
				L_477_.Visible = L_699_;
				L_477_.From = Vector2.new(L_703_ + L_704_, (L_698_.Y - ((L_700_.Y - L_701_.Y) / 2)) + L_704_)
				L_477_.To = Vector2.new(L_703_ + L_704_, (L_698_.Y - ((L_700_.Y - L_701_.Y) / 2 + 0)) + ((L_704_ / 3) * 2 + 0))
				L_478_.Visible = L_699_;
				L_478_.From = Vector2.new(L_703_ + L_704_, (L_698_.Y - (L_700_.Y - L_701_.Y) / 2))
				L_478_.To = Vector2.new(L_703_ + L_704_, (L_698_.Y - ((L_700_.Y - L_701_.Y) / 2)) + (L_704_ / 3))
			else
				L_471_.Visible = false
				L_472_.Visible = false
				L_473_.Visible = false
				L_474_.Visible = false
				L_475_.Visible = false
				L_476_.Visible = false
				L_477_.Visible = false
				L_478_.Visible = false
			end;
			if L_55_.Flags["FF_TracerEsp"].Value then
				L_458_.Visible = L_699_;
				if L_55_.Flags["FF_TracersOrigin"].Value == "Top" then
					L_458_.To = Vector2.new(L_50_.Camera.ViewportSize.X / 2, 0)
					L_458_.From = Vector2.new(L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.HumanoidRootPart.Position).X - 1, L_698_.Y + (L_700_.Y - L_701_.Y) / 2)
				elseif L_55_.Flags["FF_TracersOrigin"].Value == "Middle" then
					L_458_.To = Vector2.new(L_50_.Camera.ViewportSize.X / 2, L_50_.Camera.ViewportSize.Y / 2 + 0)
					L_458_.From = Vector2.new(L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.HumanoidRootPart.Position).X - 1 + 0, (L_698_.Y + (L_700_.Y - L_701_.Y) / 2) - ((L_700_.Y - L_701_.Y) / 2 + 0))
				elseif L_55_.Flags["FF_TracersOrigin"].Value == "Bottom" then
					L_458_.To = Vector2.new(L_50_.Camera.ViewportSize.X / 2 + 0 + 0, 1000)
					L_458_.From = Vector2.new(L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.HumanoidRootPart.Position).X - 1 + 0, L_698_.Y - (L_700_.Y - L_701_.Y) / 2)
				elseif L_55_.Flags["FF_TracersOrigin"].Value == "Mouse" then
					L_458_.To = game:GetService("UserInputService"):GetMouseLocation()
					L_458_.From = Vector2.new(L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.HumanoidRootPart.Position).X - 1, (L_698_.Y + (L_700_.Y - L_701_.Y) / 2) - ((L_700_.Y - L_701_.Y) / 2 + 0 + 0))
				end
			else
				L_458_.Visible = false
			end;
			if L_55_.Flags["FF_SkeletonEsp"].Value then
				L_462_.Visible = L_699_;
				L_462_.From = Vector2.new(L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.Head.Position).X, L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.Head.Position).Y)
				L_462_.To = Vector2.new(L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.LowerTorso.Position).X, L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.LowerTorso.Position).Y)
				L_463_.Visible = L_699_;
				L_463_.From = Vector2.new(L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.Head.Position).X, L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.Head.Position).Y + ((L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.UpperTorso.Position).Y - L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.Head.Position).Y) / 3 + 0))
				L_463_.To = Vector2.new(L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.LeftUpperArm.Position).X, L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.LeftUpperArm.Position).Y)
				L_464_.Visible = L_699_;
				L_464_.From = Vector2.new(L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.LeftLowerArm.Position).X, L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.LeftLowerArm.Position).Y)
				L_464_.To = Vector2.new(L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.LeftUpperArm.Position).X, L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.LeftUpperArm.Position).Y)
				L_465_.Visible = L_699_;
				L_465_.From = Vector2.new(L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.Head.Position).X, L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.Head.Position).Y + ((L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.UpperTorso.Position).Y - L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.Head.Position).Y) / 3))
				L_465_.To = Vector2.new(L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.RightUpperArm.Position).X, L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.RightUpperArm.Position).Y)
				L_466_.Visible = L_699_;
				L_466_.From = Vector2.new(L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.RightLowerArm.Position).X, L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.RightLowerArm.Position).Y)
				L_466_.To = Vector2.new(L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.RightUpperArm.Position).X, L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.RightUpperArm.Position).Y)
				L_467_.Visible = L_699_;
				L_467_.From = Vector2.new(L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.LowerTorso.Position).X, L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.LowerTorso.Position).Y)
				L_467_.To = Vector2.new(L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.LeftUpperLeg.Position).X, L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.LeftUpperLeg.Position).Y)
				L_468_.Visible = L_699_;
				L_468_.From = Vector2.new(L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.LeftLowerLeg.Position).X, L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.LeftLowerLeg.Position).Y)
				L_468_.To = Vector2.new(L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.LeftUpperLeg.Position).X, L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.LeftUpperLeg.Position).Y)
				L_469_.Visible = L_699_;
				L_469_.From = Vector2.new(L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.RightLowerLeg.Position).X, L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.RightLowerLeg.Position).Y)
				L_469_.To = Vector2.new(L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.RightUpperLeg.Position).X, L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.RightUpperLeg.Position).Y)
				L_470_.Visible = L_699_;
				L_470_.From = Vector2.new(L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.LowerTorso.Position).X, L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.LowerTorso.Position).Y)
				L_470_.To = Vector2.new(L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.RightUpperLeg.Position).X, L_50_.Camera:WorldToViewportPoint(L_456_arg0.Character.RightUpperLeg.Position).Y)
			else
				L_462_.Visible = false
				L_463_.Visible = false
				L_464_.Visible = false
				L_465_.Visible = false
				L_466_.Visible = false
				L_467_.Visible = false
				L_468_.Visible = false
				L_469_.Visible = false
				L_470_.Visible = false
			end
		else
			L_457_.Visible = false
			L_458_.Visible = false
			L_462_.Visible = false
			L_463_.Visible = false
			L_464_.Visible = false
			L_465_.Visible = false
			L_466_.Visible = false
			L_467_.Visible = false
			L_468_.Visible = false
			L_469_.Visible = false
			L_470_.Visible = false
			L_471_.Visible = false
			L_472_.Visible = false
			L_473_.Visible = false
			L_474_.Visible = false
			L_475_.Visible = false
			L_476_.Visible = false
			L_477_.Visible = false
			L_478_.Visible = false
		end
	end)
end;
for L_815_forvar0, L_816_forvar1 in pairs(L_50_.Players:GetPlayers()) do
	if L_816_forvar1 ~= L_50_.LocalPlayer then
		L_51_:AddEsp(L_816_forvar1)
	end
end;
L_50_.Players.PlayerAdded:Connect(function(L_817_arg0)
	if v ~= L_50_.LocalPlayer then
		L_51_:AddEsp(L_817_arg0)
	end
end)
local L_68_ = require(game:GetService("ReplicatedStorage").Modules.GlobalStuff).HitParticle;
local L_69_ = require(game:GetService("ReplicatedStorage").Modules.GlobalStuff).GetWSettings;
local L_70_ = game:GetService("ReplicatedStorage").Weapons.Modules:Clone()
require(game:GetService("ReplicatedStorage").Modules.GlobalStuff).HitParticle = function(...)
	if L_55_.Flags["FF_Wallbang"].Value then
		return
	else
		return L_68_(...)
	end
end;
local L_71_;
L_71_ = hookfunction(workspace.FindPartOnRayWithIgnoreList, newcclosure(function(...)
	args = {
		...
	}
	if L_55_.Flags["FF_Wallbang"].Value then
		args[3 + 0] = {
			game:GetService("Terrain"),
			game:GetService("Workspace").IgnoreThese,
			game:GetService("Players").LocalPlayer.Character,
			game:GetService("Workspace").BuildStuff,
			game:GetService("Workspace").Map,
			game:GetService("Workspace").Terrain
		}
		if L_55_.Flags["FF_Wallbang"].Value then
			return L_71_(unpack(args))
		else
			return L_71_(...)
		end
	end;
	return L_71_(...)
end))
pcall(function()
	require(game:GetService("ReplicatedStorage").Modules.GlobalStuff).GetWSettings = function(L_821_arg0, L_822_arg1)
		if tostring(getfenv(2).script.Name) == "NewLocal" then
			return L_69_(L_821_arg0, L_822_arg1)
		end;
		return require(L_70_:FindFirstChild(L_822_arg1))
	end
end)
game:GetService("RunService").Heartbeat:Connect(function()
	pcall(function()
		if L_55_.Flags["FF_Recoil"].Value == true then
			getupvalue(require(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.NewLocal.Tools.Tool.Gun.Auto).ShootLogic, 1).WSettings.Recoil = 0
		end;
		if L_55_.Flags["FF_FireRate"].Value == true then
			getupvalue(require(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.NewLocal.Tools.Tool.Gun.Auto).ShootLogic, 1).WSettings.Debounce = 0.05
		end;
		if L_55_.Flags["FF_Spread"].Value == true then
			getupvalue(require(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.NewLocal.Tools.Tool.Gun.Auto).ShootLogic, 1).WSettings.Inaccuracy = 0 + 0
		end
	end)
end)
local function L_72_func()
	local L_828_ = math.huge;
	local L_829_;
	for L_830_forvar0, L_831_forvar1 in ipairs(game.Players:GetPlayers()) do
		if L_831_forvar1.Character:FindFirstChild("HumanoidRootPart") and L_831_forvar1 ~= game.Players.LocalPlayer then
			local L_832_ = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - L_831_forvar1.Character.HumanoidRootPart.Position).Magnitude;
			if L_832_ < L_828_ then
				L_828_ = L_832_;
				L_829_ = L_831_forvar1
			end
		end
	end;
	return L_829_
end;
local L_73_ = require(game:GetService("Players").LocalPlayer.PlayerGui.GameUI.Animations.Sequences)
local L_74_ = L_73_.PickaxeSwing;
L_73_.PickaxeSwing = function(L_833_arg0, L_834_arg1, L_835_arg2)
	if L_835_arg2 then
		return L_835_arg2()
	end;
	if L_55_.Flags["FF_KillAll"].Value then
		return L_74_(L_833_arg0, L_834_arg1, L_835_arg2)
	end
end;
L_74_ = hookmetamethod(game, "__index", function(L_836_arg0, L_837_arg1)
	if (tostring(L_837_arg1) == "CFrame" or tostring(L_837_arg1) == "Position") and game.Players:FindFirstChild(tostring(L_836_arg0.Parent)) and game.Players:FindFirstChild(tostring(L_836_arg0.Parent)) ~= game.Players.LocalPlayer and L_836_arg0.Parent.Parent == game.Workspace and tostring(getcallingscript()) ~= "Animations" and tostring(getcallingscript()) ~= "AddPlayerIcon" and L_55_.Flags["FF_KillAll"].Value == true then
		if tostring(L_837_arg1) == "CFrame" then
			return CFrame.new(game.Workspace.CurrentCamera.CFrame.Position)
		else
			if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Head") then
				return game.Players.LocalPlayer.Character.Head.Position
			end
		end
	end;
	return L_74_(L_836_arg0, L_837_arg1)
end)
local L_75_ = game:GetService("Players").LocalPlayer:GetMouse()
function IsFFA()
	return game:GetService("Players").LocalPlayer.PlayerGui.GameUI.CoreFrames.RoundStats.Gamemode.Text == " FFA"
end;
local L_76_ = function(L_842_arg0)
	return debug.getinfo(L_842_arg0 + 1).func
end;
function GetKILLPLR()
	for L_843_forvar0, L_844_forvar1 in pairs(game:GetService("Players"):GetPlayers()) do
		if L_844_forvar1 ~= game.Players.LocalPlayer and L_844_forvar1.Character and L_844_forvar1.Character:FindFirstChild("Head") and L_844_forvar1.Character:FindFirstChild("Humanoid") and not L_844_forvar1.Character:GetAttribute("IsMenuChar") then
			if IsFFA() or game.PlaceId == 5 + 3606833495 then
				return L_844_forvar1
			else
				if L_844_forvar1.Team ~= game.Players.LocalPlayer.Team then
					return L_844_forvar1
				end
			end
		end
	end;
	return nil
end;
game:GetService("RunService").RenderStepped:Connect(function()
	pcall(function()
		if game.Players.LocalPlayer.PlayerGui:FindFirstChild("MainGui") and L_55_.Flags["FF_KillAll"].Value then
			if game.Players.LocalPlayer.Character.Head.WeaponWeld.Part1.Parent.Name ~= "Pickaxe" then
				game:GetService("VirtualInputManager"):SendKeyEvent(true, 49, false, game)
				game:GetService("VirtualInputManager"):SendKeyEvent(false, 49, false, game)
			end;
			spawn(function()
				require(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.NewLocal.Controller).LeftClick()
				getupvalue(require(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.NewLocal.Tools.Tool.Gun.Auto).ShootLogic, 1).WSettings.Debounce = 0.05
			end)
			getupvalue(require(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.NewLocal.Tools.Tool.Gun.Auto).ShootLogic, 1).GetMouseInfo = function(...)
				if debug.getinfo(L_76_(3)).name ~= "CheckInteraction" and GetKILLPLR() then
					return GetKILLPLR().Character.Head, GetKILLPLR().Character.Head.Position
				end;
				return L_75_.Target, L_75_.Hit.p
			end
		end
	end)
end)
game:GetService("RunService").RenderStepped:Connect(function()
	pcall(function()
		if game.Players.LocalPlayer.PlayerGui:FindFirstChild("MainGui") then
			local L_849_ = function(L_850_arg0)
				return debug.getinfo(L_850_arg0 + 1 + 0).func
			end;
			getupvalue(require(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.NewLocal.Tools.Tool.Gun.Auto).ShootLogic, 1).GetMouseInfo = function(...)
				if L_55_.Flags["FF_Silent"].Value and debug.getinfo(L_849_(3)).name ~= "CheckInteraction" and GetTarget() and L_55_.Flags["FF_Accuracy"].Value >= math.random(1 + 0, 100) then
					return GetTarget().Character.Head, GetTarget().Character["Head"].Position
				end;
				return L_75_.Target, L_75_.Hit.p
			end
		end
	end)
end)
local L_77_ = false
local L_78_ = Drawing.new("Circle")
L_78_.Thickness = 2 + 0;
L_78_.NumSides = 460
L_78_.Filled = false
L_78_.Transparency = 0.6
L_78_.Radius = L_55_.Flags["FV_FOVVALUE"].Value;
L_78_.Color = Color3.new(0, 255, 0)
game:GetService("RunService").Stepped:Connect(function()
	L_78_.Position = game:GetService("UserInputService"):GetMouseLocation()
	L_78_.Radius = L_55_.Flags["FV_FOVVALUE"].Value;
	if L_55_.Flags["FF_FOVVIS"].Value then
		L_78_.Visible = true
	else
		L_78_.Visible = false
	end
end)
L_50_.RunService.Stepped:Connect(function()
	if L_55_.Flags["FF_Rejoin"].Value then
		if game:GetService("Players").LocalPlayer.PlayerGui.MenuUI.VoteKick and game:GetService("Players").LocalPlayer.PlayerGui.MenuUI.VoteKick.Title.Text == "Vote Kick <font color = " .. "\'#FFA500\'>" .. game.Players.LocalPlayer.Name .. "</font>?" then
			game:GetService("TeleportService"):Teleport(game.PlaceId)
		else
			wait()
		end
	end;
	if game.PlaceId == 2377868063 then
		if game:GetService("Players").LocalPlayer.PlayerGui.GameUI.CoreFrames.RoundStats.Gamemode.Text == " FFA" then
			L_55_.Flags["FF_TeamCheck"].Value = false
		else
			L_55_.Flags["FF_TeamCheck"].Value = true
		end
	end;
	if game.PlaceId == 3606833500 then
		L_55_.Flags["FF_TeamCheck"].Value = false
	end
end)
local L_79_ = Instance.new("RemoteEvent").FireServer;
local L_80_ = isexecutorclosure or is_synapse_function;
task.spawn(function()
	while task.wait() do
		if L_80_(L_79_) then
			while true do
			end
		end
	end
end)
print("Hazzel made my Wood ;)")
print("Woophunter said this was discontinued")
L_55_:Init()
