--[[
    Things for next update maybe:
        force prones/stances wtv
        walkspeed when crouched, using upvs
        make mags combine on new ammo pickup

        

]]

-- wow new updates, well get fucked


local Client         = {}
local SettingsName   = ("DarkHub/%s.json"):format( tostring(game.PlaceId) )

local HttpService    = game.GetService(game, "HttpService")

function __makefolder(name)
    if isfolder(name) then 
        return true 
    end
    
    makefolder(name)
end

function __updatesettings(Client)
    writefile(SettingsName, HttpService:JSONEncode({
        ["Toggles"] = Client.Toggles;
        ["Values"]  = Client.Values;
    }))    
end

local DarkHub_Client = { SavedSettings = false } do

    if __makefolder("DarkHub") then 
        if isfile(SettingsName) then 
            DarkHub_Client.SavedSettings = true
			DarkHub_Client.GameSettings = HttpService:JSONDecode( readfile(SettingsName) )
        end
    end
    
end

function GetSave(Type, Name)
    return (DarkHub_Client.SavedSettings and DarkHub_Client.GameSettings[Type][Name]) or nil
end

local IsUpToDate, Error = pcall(function()
	Client = {
		Toggles = {
			NoFalldamage        = GetSave("Toggles", "NoFalldamage") or false;

			RageBot             = GetSave("Toggles", "RageBot") or false;
			QuickRagebot        = GetSave("Toggles", "QuickRagebot") or false;
            
            ESP                 = GetSave("Toggles", "ESP") or false;

			SilentAim           = GetSave("Toggles", "SilentAim") or false;
			SilentAim_UseFOV    = GetSave("Toggles", "SilentAim_UseFOV") or true;
            
            MagCombine          = GetSave("Toggles", "MagCombine") or false;
            FireRate            = GetSave("Toggles", "FireRate") or false;

			Walkspeed       	= GetSave("Toggles", "Walkspeed") or false;
			Jumppower       	= GetSave("Toggles", "Jumppower") or false;

            AutomaticGuns       = GetSave("Toggles", "AutomaticGuns") or false;

            NoGunSway           = GetSave("Toggles", "NoGunSway") or false;
            NoGunBob            = GetSave("Toggles", "NoGunBob") or false;

            NoRecoil            = GetSave("Toggles", "NoRecoil") or false;
            NoSpread            = GetSave("Toggles", "NoSpread") or false;
            SmallCrosshair      = GetSave("Toggles", "SmallCrosshair") or false;
        },
		Values = {
			FireRateAddition 	= GetSave("Values", "FireRateAddition") or 1000;
			WalkspeedValue      = GetSave("Values", "WalkspeedValue") or 10;
			JumppowerValue      = GetSave("Values", "JumppowerValue") or 10;
			SilentAim_Radius    = GetSave("Values", "SilentAim_Radius") or 400;
            SilentAim_HitPart   = GetSave("Values", "SilentAim_HitPart") or "head";
		}
	}
end)

if (DarkHub_Client.SavedSettings) and (not IsUpToDate) and isfile(SettingsName) then 
    delfile(SettingsName)

	return error("DarkHub Settings Out Of Date - Issue Fixed | Restart DarkHub to Continue")
end

--:: Init Script
    --:: Main Script Variables

    local DarkEnv                       = loadstring(game.HttpGet(game, "https://raw.githubusercontent.com/NougatBitz/DarkHubUtils/main/ENV.lua"))() do
        local v3  = Vector3.new()
        local dot = v3.Dot

        DarkEnv["BulletTrajectory"] = function(o, a, t, s, e)
            local f = -a
            local ld = t - o
            local a = dot(f, f)
            local b = 4 * dot(ld, ld)
            local k = (4 * (dot(f, ld) + s * s)) / (2 * a)
            local v = (k * k - b / a) ^ 0.5
            local t, t0 = k - v, k + v
        
            if not (t > 0) then
                t = t0
            end
        
            t = t ^ 0.5
            return f * t / 2 + (e or v3) + ld / t, t
        end

        DarkEnv["GetDirection"] = function(Origin, Position, IgnoreDist)
            return ( IgnoreDist and (Position - Origin) ) or ( (Position - Origin).Unit * (1000) )
        end

        DarkEnv["getupvalues"] = function(func)
            local upvs = getupvalues(func)
            
            return setmetatable({}, {
                __index = function(self, index)
                    return rawget(upvs, index)
                end;
                __newindex = function(self, index, value)
                    rawset(upvs, index, value)
                    setupvalue(func, index, value)
                end;
            })
        end

        DarkEnv["GameClient"] = {
            ["Functions"] = DarkEnv.GetFunctionsFromGC({ 
                {
                    name = "breakwindow";
                }; {
                    name = "updatehealth";
                };{
                    name = "muzzleflash";
                }; {
                    name = "bigaward";
                }; {
                    name = "setsprint";
                }; {
                    name = "getslidecondition";
                };{
                    name = "loadgun";
                }; {
                    name = "getbodyparts";
                }; {
                    name = "fromaxisangle";
                }; {
                    name = "gunbob";
                };{
                    name = "gunsway";
                }; {
                    name = "new";
                    storage_name = "particle_new";
                    script_check = function(source) return source:find("particle") end
                }; {
                    name = "step";
                    storage_name = "camera_step";
                    script_check = function(source) return source:find("camera") end
                };
            });
        }

        DarkEnv.GameClient["Tables"] = {
            PlayerTable = debug.getupvalue(DarkEnv.GameClient.Functions.getbodyparts, 1);
            GunRequire  = debug.getupvalue(DarkEnv.GameClient.Functions.loadgun, 2);
            Character   = debug.getupvalue(DarkEnv.GameClient.Functions.muzzleflash, 2);
            Network     = debug.getupvalue(DarkEnv.GameClient.Functions.breakwindow, 1);
            HealthTable = debug.getupvalue(DarkEnv.GameClient.Functions.updatehealth, 1);
            GameHUD     = nil;
            GameLogic   = nil;
        } do 
            DarkEnv.GameClient.Tables.GameHUD = debug.getupvalue(DarkEnv.GameClient.Tables.Character.setmovementmode, 10)

            for i,v in next, getupvalues(DarkEnv.GameClient.Functions.loadgun) do
                if type(v) == "table" then
                    if rawget(v, "gammo") and rawget(v, "controllerstep") then
                        DarkEnv.GameClient.Tables.GameLogic = v
                    end
                end
            end
        
            for i,v in next, getgc(true) do
                if type(v) == "table" and rawget(v, "step") == DarkEnv.GameClient.Functions.camera_step then
                    DarkEnv.GameClient.Tables["Camera"] = v
                end
            end

        end
    end
    local LSignalModule                 = loadstring(game.HttpGet(game, "https://raw.githubusercontent.com/NougatBitz/BitzUtils/main/Signal.lua"))()

    local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/NougatBitz/BitzUtils/main/kiriot22Esp"))() do 
        ESP.Players = false
        ESP:Toggle(false)
    end

    local Functions                     = DarkEnv.GameClient.Functions
    local Tables                        = DarkEnv.GameClient.Tables
    local GameLogic                     = Tables.GameLogic
    local VelocityBypass

    local game                          = game
    local GetService                    = game.GetService
    local FindFirstChild                = game.FindFirstChild

    local Players                       = GetService(game, "Players")
    local Workspace                     = GetService(game, "Workspace")
    local RunService                    = GetService(game, "RunService")
    local UserInputService              = GetService(game, "UserInputService")

    local Camera                        = Workspace.CurrentCamera
    local LocalPlayer                   = Players.LocalPlayer
    local LocalMouse                    = LocalPlayer:GetMouse()

    local Raycast                       = getrenv().shared.require("Raycast")
    local PublicSettings                = getrenv().shared.require("PublicSettings")
    local SoundModule                   = getrenv().shared.require("sound")
    local ParticleModule                = getrenv().shared.require("particle")

    local Acceleration                  = PublicSettings.bulletAcceleration 

    local BulletsShot                   = getupvalue(Functions.loadgun, 49) do 
        BulletsShot = typeof(BulletsShot) == "number" and BulletsShot or nil
        if not BulletsShot then 
            warn("BulletsShot not found.") 
            BulletsShot = 0 
        end
    end

    local BulletsFired                  = {}
    local Killing                       = {}
    local Closest, HitPart

    local IgnoreList                    = { 
        workspace.Players, 
        workspace.Terrain, 
        workspace.Ignore, 
        Camera
    }

    local PlayerKilled                  = LSignalModule.new()

    local OldSend                       = Tables.Network.send
    local OldGetTime                    = Tables.Network.getTime


    local FovCircle = Drawing.new("Circle") do
        FovCircle.Visible   = Client.Toggles.SilentAim_UseFOV
        FovCircle.Radius    = Client.Values.SilentAim_Radius
        FovCircle.Color     = Color3.new(1, 1, 1)
        FovCircle.Thickness = 1
        FovCircle.Position  = Vector2.new(Camera.ViewportSize.X * 0.5, Camera.ViewportSize.Y * 0.5)
    end
    
    --:: Main Script Functions
    local RandomHitParts = { "head", "torso" }
    function GetHitpartName()
        if Client.Values.SilentAim_HitPart == "Random" then 
            return RandomHitParts[math.random(1,2)]
        end
        return (Client.Values.SilentAim_HitPart):lower()
    end

    function ValidatePlayerMouse(i,v)
        if i.Team ~= LocalPlayer.Team then
            local hitpart = v[GetHitpartName()]
            if hitpart then return hitpart end
        end

        return nil
    end

    function ValidatePlayerCharacter(i,v)
        if i.Team ~= LocalPlayer.Team and v.head then
            return v.head
        end

        return nil
    end

    local raycastparameters = RaycastParams.new()
    function RaycastFunction(origin, direction, filterlist, whitelist)
        raycastparameters.FilterType                 = Enum.RaycastFilterType[whitelist and "Whitelist" or "Blacklist"]
        raycastparameters.FilterDescendantsInstances = filterlist

        local result = workspace:Raycast(origin, direction, raycastparameters)
        
        if result then 
            return result.Instance, result.Position 
        end

    end

    function Wallcheck(o, t, p)
        if p <= 0 then return false end
        
        local ve = t - o
        local n = ve.Unit
        local h, po = RaycastFunction(o, ve, IgnoreList)
    
        if h then
    
            if h.CanCollide or h.Transparency == 0 then
                local e = h.Size.Magnitude * n
                local nh, dp = RaycastFunction(po + e, -e, {h}, true)
                local m = (dp - po).Magnitude
    
                if m >= p then
                    return false
                else
                    p = p - m
                end
            end
    
            return Wallcheck(po + n / 100, t, p)
        end
    
        return true
    end

    function GetTargetFromMouse(MaxDistance)
        if not GameLogic.currentgun then return end
        MaxDistance = MaxDistance or math.huge
        local Closest, HitPart = nil, nil

        for i, v in next, Tables.PlayerTable do 
            local CharacterPart = ValidatePlayerMouse(i, v)
            if CharacterPart then
                local ScreenVector, OnScreen = Camera.WorldToViewportPoint(Camera, CharacterPart.Position)
                if OnScreen then
                    local Distance  = ( Vector2.new(LocalMouse.X, LocalMouse.Y) - Vector2.new(ScreenVector.X, ScreenVector.Y) ).Magnitude

                    local IsHitable = Wallcheck(Camera.CFrame.p, CharacterPart.Position, GameLogic.currentgun.data.penetrationdepth)

                    if IsHitable and (Distance < MaxDistance) then
                        MaxDistance = Distance
                        HitPart     = CharacterPart
                        Closest     = i
                    end
                end
            end
        end


        return Closest, HitPart
    end

    local AllCharsToPlayer = {}
    function CharacterToPlayer(Character)
        local CharData = AllCharsToPlayer[Character]

        if CharData and CharData.c.Head and CharData.c.Head.Parent ~= nil then
            return CharData.p
        end

        for i,v in next, Tables.PlayerTable do 
            if v.head == Character.Head then 
                AllCharsToPlayer[Character] = {
                    c = Character;
                    p = i;
                }
                return i
            end
        end
    end

    function GetTargetCharacter(MaxDistance, Quick)
        if not GameLogic.currentgun then return "NO GUN" end

        local LocalRootPart = LocalPlayer.Character and FindFirstChild(LocalPlayer.Character, "HumanoidRootPart")

        if not LocalRootPart then return "NO ROOT" end

        MaxDistance = MaxDistance or math.huge
        local Closest, HitPart = nil, nil

        for i, v in next, Tables.PlayerTable do 
            local CharacterPart = ValidatePlayerCharacter(i, v)
            if CharacterPart then
                local IsHitable =  Wallcheck(Camera.CFrame.p, CharacterPart.Position, GameLogic.currentgun.data.penetrationdepth)
                
                if IsHitable then
                    if Quick then 
                        return i, CharacterPart 
                    end

                    local Distance  = ( LocalRootPart.Position - CharacterPart.Position ).Magnitude
                    if (Distance < MaxDistance) then
                        MaxDistance = Distance
                        HitPart     = CharacterPart
                        Closest     = i
                    end
                end
            end
        end


        return Closest, HitPart
    end

    function GetTarget(Character, MaxDistance)
        if Character then 
            return GetTargetCharacter(MaxDistance) 
        end

        return GetTargetFromMouse(MaxDistance)
    end

    function UpdateClientAmmo(number)
        local currentgun = GameLogic.currentgun
        if currentgun and currentgun.reload then
            local reload_upvalues = DarkEnv.getupvalues(currentgun.reload)
            local sparerounds = reload_upvalues[4]
            local currentmag  = reload_upvalues[5]

            if currentmag > 0 or sparerounds > 0 then
                local magsize = reload_upvalues[7]

                for i = 1, number do
                    if currentmag == 0 then
                        if sparerounds >= magsize then
                            currentmag = magsize
                            sparerounds = sparerounds - currentmag
                        else
                            currentmag = sparerounds
                            sparerounds = 0
                        end
                    end

                    currentmag = currentmag - 1
                end

                reload_upvalues[4] = sparerounds
                reload_upvalues[5] = currentmag

                Tables.GameHUD:updateammo(currentmag, sparerounds)
            end
        end
    end

    function CalculateDamage(Origin, Target, Data)
        local Distance = (Origin - Target).Magnitude

        local Range0,  Range1  = Data.range0,  Data.range1
        local Damage0, Damage1 = Data.damage0, Data.damage1

        return ( (Distance < Range0 and Damage0 or (Distance < Range1 and (Damage1 - Damage0) / (Range1 - Range0) * (Distance - Range0) + Damage0 or Damage1)) * (Data.multhead or 1) ) * (Data.pelletcount or 1)
    end

    function CreateBullet(BulletVelocity, Data, HitData, BulletCount, BulletsNeeded)
        if not Client.Toggles.QuickRagebot then
            local HitConn; HitConn = PlayerKilled:Connect(function(player_name)
                if HitData.Player.Name == player_name then
                    UpdateClientAmmo(BulletsNeeded)
                    HitConn:Disconnect()
                end
            end)
        end

        local BulletTable = {} do
            for i = 1, BulletCount do
                if not BulletTable[i] then 
                    BulletTable[i] = {} 
                end
                BulletTable[i][1] = BulletVelocity
                BulletTable[i][2] = BulletsShot + i
            end
        end

        OldSend(Tables.Network, "newbullets", {
            camerapos   = Camera.CFrame.p, 
            firepos     = HitData.FirePos, 
            bullets     = BulletTable,
        }, OldGetTime(Tables.Network))
        

    --            OldGetTime(Tables.Network)

    
        for i = 1, #BulletTable do
            BulletTable[i][1]               = BulletVelocity
            BulletsFired[BulletTable[i][2]] = true
            BulletsShot                     = BulletTable[i][2]
            OldSend(self, "bullethit", HitData.Player, HitData.HitPart.Position, HitData.HitPart.Name, BulletTable[i][2])
        end
    end

    function KillClosestPlayer()
        local Closest, HitPart = GetTargetCharacter(math.huge, Client.Toggles.QuickRagebot)

        local CurrentGun        = GameLogic.currentgun 
        
        if Closest and CurrentGun then
            local BulletOrigin = (CurrentGun.barrel) or (CurrentGun.aimsightdata and CurrentGun.aimsightdata[1].sightpart)
            local CurrentData  = CurrentGun.data

            local BulletVelocity = DarkEnv.BulletTrajectory(BulletOrigin.Position, Acceleration, HitPart.Position, CurrentData.bulletspeed)

            local CRHealth = 0 do
                local HealthT = Tables.HealthTable[Closest]
                if HealthT then 
                    CRHealth = HealthT.health0 
                end
            end

            local Damage = CalculateDamage(BulletOrigin.Position, HitPart.Position, CurrentData)
            local BulletsNeeded = math.ceil(CRHealth / Damage)


            for i = 1, BulletsNeeded do
                CreateBullet(BulletVelocity, CurrentData, {
                    Player  = Closest;
                    HitPart = HitPart;
                    FirePos = BulletOrigin.Position;
                }, CurrentData.pelletcount or 1, BulletsNeeded, OldGetTime(Tables.Network))
            end
        end
    end


    --:: Main Script Hooks
    local OldParticle = ParticleModule.new
    setreadonly(ParticleModule, false)
    ParticleModule.new = function(Data)
        if checkcaller() then return OldParticle(Data) end
        
        if Client.Toggles.SilentAim then
            local CurrentGun = GameLogic.currentgun

            if CurrentGun then
                local Barrel    = CurrentGun.barrel
                local SightPart = CurrentGun.aimsightdata and CurrentGun.aimsightdata[1].sightpart

                if (Barrel and Data.visualorigin == Barrel.Position) or (SightPart and Data.visualorigin == SightPart.Position) then
                    Closest, HitPart = GetTarget(false, (FovCircle.Visible and FovCircle.Radius) or math.huge)

                    if Closest then
                        Data.velocity    = DarkEnv.BulletTrajectory(Data.visualorigin, Acceleration, HitPart.Position, CurrentGun.data.bulletspeed * 10)
                        Data.position    = HitPart.Position + Data.velocity.Unit
                    end
                end
            end
        end

        return OldParticle(Data)
    end
    setreadonly(ParticleModule, true)
    task.defer(function()
       while task.wait() do
            VelocityBypass = { CurrentTime = OldGetTime(Tables.Network) }
        end
    end)
    Tables.Network.send = function(self, Name, ...)
        local Args = { ... }

        
        if Name == "newbullets" then
            if Client.Toggles.SilentAim then 
                local Bullets = Args[1].bullets
                BulletsShot = Bullets[#Bullets][2]

                if Closest then
                    local CurrentGun = GameLogic.currentgun

                    if CurrentGun then
                        local BulletVelocity = DarkEnv.BulletTrajectory(Args[1].firepos, Acceleration, HitPart.Position, CurrentGun.data.bulletspeed)
                        
                        for i = 1, #Bullets do
                            Bullets[i][1]   = BulletVelocity
                            BulletsShot     = Bullets[i][2]
                        end
                        
                        OldSend(self, Name, Args[1], self:getTime())

                        --// hit bullets
                        for i = 1, #Bullets do
                            Bullets[i][1]               = BulletVelocity
                            BulletsFired[Bullets[i][2]] = true

                            OldSend(self, "bullethit", Closest, HitPart.Position, HitPart.Name, Bullets[i][2])
                        end
                    end
                end
            end
        end
        
        if Name == "bullethit" then 
            if BulletsFired[Args[4]] then
                return nil
            end
        end

        if Name == "spawn" then
            VelocityBypass.CurrentTime = OldGetTime(self)
        elseif Name == "repupdate" then
            Args[3] = VelocityBypass.CurrentTime
        elseif Name == "newgrenade" then
            Args[3] = VelocityBypass.CurrentTime
            Args[4] = 5
        elseif Name == "updatesight" then
            Args[3] = VelocityBypass.CurrentTime
        elseif Name == "spotplayers" then
            Args[2] = VelocityBypass.CurrentTime
        elseif Name == "falldamage" and Client.Toggles.NoFalldamage then
            return 
        elseif Name == "ping" then
            return
        end


        return OldSend(self, Name, unpack(Args))
    end

    local OldGetWeaponData; OldGetWeaponData = hookfunction(Tables.GunRequire.getWeaponData, function(...)
        local Args       = {...}
        local WeaponData = OldGetWeaponData(...)
        if Args[2] ~= nil then
            setreadonly(WeaponData, false)
    
            if Client.Toggles.NoSpread then
                WeaponData["hipfirespreadrecover"]  = 9e9
                WeaponData["hipfirestability"]      = 9e9
                WeaponData["hipfirespread"]         = 0
            end
    
            if Client.Toggles.SmallCrosshair then
                WeaponData["crosssize"]         = 1
                WeaponData["crossexpansion"]    = 0
            end

            setreadonly(WeaponData, true)
        end

        return WeaponData
    end)

    if Functions.gunsway then 
        OldGunSway = hookfunction(Functions.gunsway, function(...) --// gay ass upvalue issue :rage:
            if Client.Toggles.NoGunSway then
                return CFrame.new(0,0,0)
            end

            return OldGunSway(...)
        end)
    else
        warn("[ERROR]: GUNSWAY NOT FOUND!")
    end

    local OldGunBob; OldGunBob = hookfunction(Functions.gunbob, function(...)
        if Client.Toggles.NoGunBob then
            return OldGunBob(0, 0)
        end
    
        return OldGunBob(...)
    end)

    local OldFromAxis; OldFromAxis = hookfunction(Functions.fromaxisangle, function(...)
        if string.find(debug.traceback(), "animstep") then
            return OldFromAxis(...)
        end
        
        if Client.Toggles.NoRecoil then
            return CFrame.new()
        end

        return OldFromAxis(...)
    end)

    local OldLoadgun; OldLoadgun = hookfunction(Functions.loadgun, function(...)
        local LoadedGun = OldLoadgun(...)
        
        local MemesUpvalues = DarkEnv.getupvalues(LoadedGun.memes)

        if Client.Toggles.MagCombine then
            MemesUpvalues[2] = MemesUpvalues[2] + MemesUpvalues[3]
            MemesUpvalues[3] = 0
        end

        MemesUpvalues[4] = (Client.Toggles.FireRate and MemesUpvalues[4] + Client.Values.FireRateAddition) or MemesUpvalues[4] -- FireRate
        MemesUpvalues[5] = ( Client.Toggles.AutomaticGuns and { true } ) or MemesUpvalues[5]
        return LoadedGun
    end)

    local OldBigAward; OldBigAward = hookfunction(Functions.bigaward, function(award_type, award_table, ...)
        if award_type == "kill" then
            PlayerKilled:Fire(award_table.Name)
        end

        return OldBigAward(award_type, award_table, ...)
    end)

    local OldSBWS; OldSBWS = hookfunction(Tables.Character.setbasewalkspeed, function(self, Speed)
        Speed = (Client.Toggles.Walkspeed and Speed + Client.Values.WalkspeedValue) or Speed
        return OldSBWS(self, Speed)
    end)

    local OldJump; OldJump = hookfunction(Tables.Character.jump, function(self, Power)
        Power = (Client.Toggles.Jumppower and Power + Client.Values.JumppowerValue) or Power
        return OldJump(self, Power)
    end)
    local SMS
    task.spawn(function()
        while true do 
            if Client.Toggles.RageBot then
                pcall(spawn, KillClosestPlayer)
            end
        SMS = debug.getupvalue(Tables.Character.setsprint, 1)
           if SMS.currentgun and SMS.currentgun.data then
               if SMS.currentgun.data.firerate then
                    task.wait(60 / SMS.currentgun.data.firerate)
                else
                    task.wait(60 / SMS.currentgun.data.firerate[1])    
                end
             else
                task.wait(.08)
           end
        end
    end)

    RunService.RenderStepped:Connect(function()
        if Client.Toggles.SilentAim_UseFOV then
            FovCircle.Visible   = true
            FovCircle.Radius    = Client.Values.SilentAim_Radius
            FovCircle.Position  = Camera.ViewportSize * 0.5
        else
            FovCircle.Visible   = false
        end
    end)


    for i,v in next, workspace.Players:GetChildren() do 
        ESP:AddObjectListener(v, {
            Type        = "Model";
            Color       = Color3.new(1, 1, 0);
            PrimaryPart = function(Object)
                return Object:FindFirstChild("Torso")
            end;
            Validator   = function(Object)
                if not Client.Toggles.ESP then return end
                local Player = Object:FindFirstChild("Head") and CharacterToPlayer(Object)
                return Player and Player.Team ~= LocalPlayer.Team
            end;
            CustomName  = function(Object)
                local Player = Object:FindFirstChild("Head") and CharacterToPlayer(Object)
                return Player.Name
            end;
            IsEnabled = "CPlayerESP";
        })
    end
--:: Done with init

local OrionLib   = loadstring(game:HttpGet(("https://raw.githubusercontent.com/shlexware/Orion/main/source")))()
local MainWindow = OrionLib:MakeWindow({
    Name            = "DarkHub";
    HidePremium     = true; 
    SaveConfig      = false;

    IntroText       = "DarkHub";
})



local GetClientSave = function(UiType)
    return (UiType == "AddToggle" and Client.Toggles) or (Client.Values)
end

local RunInstructions = function(Instructions) 
    local Tab, Type, Args = Instructions.Tab, Instructions.Type, Instructions.Args

    local SaveTable = GetClientSave(Type)

    local OriginalCB do
        if Args.Callback then 
            OriginalCB = Args.Callback
        end
    end

    Args.Default  = SaveTable[Instructions.Flag]
    Args.Callback = function(new_value)
        SaveTable[Instructions.Flag] = new_value
        __updatesettings(Client)
        
        if OriginalCB then 
            OriginalCB(new_value) 
        end
    end
    
    return Tab[Type](Tab, Args)
end

local Tabs      = {
    Combat      = MainWindow:MakeTab({Name = "Combat"; Icon = "rbxassetid://4483345998";});
    Character   = MainWindow:MakeTab({Name = "Character"; Icon = "rbxassetid://4483345998";});
}

local Sections  = {
    Aimbot      = Tabs.Combat:AddSection({ Name = "Aimbot"});
    Visuals     = Tabs.Combat:AddSection({ Name = "Visuals" });
    Weapons     = Tabs.Combat:AddSection({ Name = "Weapon Mods" });
    RageBot     = Tabs.Combat:AddSection({ Name = "Rage Bot" });
}

--:: Aimbot
RunInstructions({
    Type = "AddToggle";
    Flag = "SilentAim";
    Tab  = Sections.Aimbot;
    Args = {
        Name = "Silent Aim";
    };
})

RunInstructions({
    Type = "AddToggle";
    Flag = "SilentAim_UseFOV";
    Tab  = Sections.Aimbot;
    Args = {
        Name = "Use FOV";
    };
})

RunInstructions({
    Type = "AddSlider";
    Flag = "SilentAim_Radius";
    Tab  = Sections.Aimbot;

    Args = {
        Name    = "FOV Radius";

        Min     = 10;
	    Max     = 1000;
    };
})

RunInstructions({
    Type = "AddDropdown";
    Flag = "SilentAim_HitPart";
    Tab  = Sections.Aimbot;

    Args = {
        Name    = "HitPart";
        Default = "1";
        Options = {"Head", "Torso", "Random"};
    };
})

--:: Visuals
RunInstructions({
    Type = "AddToggle";
    Flag = "ESP";
    Tab  = Sections.Visuals;

    Args = {
        Name = "ESP (ty kiriot22)";
        Callback = function(value)
            ESP:Toggle(value)
            ESP.CPlayerESP = value
        end
    };
})


--:: Weapon Mods
RunInstructions({
    Type = "AddToggle";
    Flag = "NoGunSway";
    Tab  = Sections.Weapons;
    Args = {
        Name = "No Gun Sway";
    };
})

RunInstructions({
    Type = "AddToggle";
    Flag = "NoGunBob";
    Tab  = Sections.Weapons;
    Args = {
        Name = "No Gun Bob";
    };
})

RunInstructions({
    Type = "AddToggle";
    Flag = "NoRecoil";
    Tab  = Sections.Weapons;
    Args = {
        Name = "No Recoil";
    };
})

RunInstructions({
    Type = "AddToggle";
    Flag = "NoSpread";
    Tab  = Sections.Weapons;
    Args = {
        Name = "No Spread";
    };
})

RunInstructions({
    Type = "AddToggle";
    Flag = "SmallCrosshair";
    Tab  = Sections.Weapons;
    Args = {
        Name = "Small Crosshair";
    };
})

RunInstructions({
    Type = "AddToggle";
    Flag = "AutomaticGuns";
    Tab  = Sections.Weapons;
    Args = {
        Name = "Automatic Guns";
    };
})

RunInstructions({
    Type = "AddToggle";
    Flag = "FireRate";
    Tab  = Sections.Weapons;
    Args = {
        Name = "FireRate";
    };
})

RunInstructions({
    Type = "AddSlider";
    Flag = "FireRateAddition";
    Tab  = Sections.Weapons;

    Args = {
        Name    = "FireRate Addition";

        Min     = 0;
	    Max     = 10000;
    };
})

RunInstructions({
    Type = "AddToggle";
    Flag = "MagCombine";
    Tab  = Sections.Weapons;
    Args = {
        Name = "Combine Mags";
    };
})

--:: RageBot
RunInstructions({
    Type = "AddToggle";
    Flag = "RageBot";
    Tab  = Sections.RageBot;
    Args = {
        Name = "Rage Bot";
    };
})

RunInstructions({
    Type = "AddToggle";
    Flag = "QuickRagebot";
    Tab  = Sections.RageBot;
    Args = {
        Name = "Faster Wallcheck (not recommended)";
    };
})


--:: Character
RunInstructions({
    Type = "AddToggle";
    Flag = "NoFalldamage";
    Tab  = Tabs.Character;
    Args = {
        Name = "No Falldamage";
    };
})

RunInstructions({
    Type = "AddToggle";
    Flag = "Walkspeed";
    Tab  = Tabs.Character;
    Args = {
        Name = "Walkspeed Toggle";

        Callback    = function(value)
            if value == false and Tables.Character.alive then
                OldSBWS(Tables.Character, GameLogic.currentgun.data.walkspeed)
            end
        end;
    };
})

RunInstructions({
    Type = "AddSlider";
    Flag = "WalkspeedValue";
    Tab  = Tabs.Character;

    Args = {
        Name        = "Walkspeed Value";

        Min         = 0;
	    Max         = 250;

        Callback    = function(value)
            if Tables.Character.alive then
                OldSBWS(Tables.Character, GameLogic.currentgun.data.walkspeed + value)
            end
        end;
    };
})

RunInstructions({
    Type = "AddToggle";
    Flag = "Jumppower";
    Tab  = Tabs.Character;
    Args = {
        Name = "Jumppower Toggle";
    };
})

RunInstructions({
    Type = "AddSlider";
    Flag = "JumppowerValue";
    Tab  = Tabs.Character;

    Args = {
        Name    = "Jumppower Value";

        Min     = 0;
	    Max     = 100;
    };
})
