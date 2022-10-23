-- it doesn't matter who we are, what matters is our plan! 


local L_36_;
local L_37_ = gcinfo()
hookfunction(gcinfo, function(...)
	return L_37_
end)
local L_38_ = {
	Functions = {};
	Settings = {
		PointsAmount = 5 + 995
	}
}
local L_39_ = {
	["FireServer"] = {
		["SendData"] = {
			checkcaller = false;
			callback = function(L_70_arg0, ...)
				return nil
			end
		};
		["Damage"] = {
			checkcaller = false;
			callback = function(L_71_arg0, ...)
				local L_72_ = ({
					...
				})
				local L_73_ = L_72_[1]
				L_38_.damage_key = L_72_[2]
				L_73_["Damage"] = (L_38_.Settings.InstantKill and math.huge) or L_73_["Damage"]
				L_73_["Freeze"] = (L_38_.Settings.FreezeRay and true) or L_73_["Freeze"]
				if L_38_.Settings.SlowGun and L_71_arg0.Parent.ClassName == "Humanoid" then
					warn("SHOT ZOMBIE!")
					L_38_.Functions.Slow(L_71_arg0.Parent.Parent)
				end;
				L_71_arg0.FireServer(L_71_arg0, L_73_, L_38_.damage_key)
			end
		}
	};
	["InvokeServer"] = {
		["UpdateDamageKey"] = {
			checkcaller = false;
			callback = function(L_76_arg0, L_77_arg1)
				L_38_.damage_key = L_77_arg1;
				return L_76_arg0.InvokeServer(L_76_arg0, L_77_arg1)
			end
		}
	}
}
local L_40_ = {}
function get_damage_key()
	for L_78_forvar0, L_79_forvar1 in pairs(getgc()) do
		if type(L_79_forvar1) == "function" and getinfo(L_79_forvar1).name == "Knife" then
			for L_80_forvar0, L_81_forvar1 in next, getupvalues(L_79_forvar1) do
				if type(L_81_forvar1) == "number" then
					return L_81_forvar1
				end
			end
		end
	end
end;
function deepcopy(L_82_arg0, L_83_arg1)
	L_83_arg1 = L_83_arg1 or {}
	local L_84_ = type(L_82_arg0)
	local L_85_;
	if L_84_ == "table" then
		if L_83_arg1[L_82_arg0] then
			L_85_ = L_83_arg1[L_82_arg0]
		else
			L_85_ = {}
			L_83_arg1[L_82_arg0] = L_85_;
			for L_86_forvar0, L_87_forvar1 in next, L_82_arg0, nil do
				L_85_[deepcopy(L_86_forvar0, L_83_arg1)] = deepcopy(L_87_forvar1, L_83_arg1)
			end;
			setmetatable(L_85_, deepcopy(getmetatable(L_82_arg0), L_83_arg1))
		end
	else
		L_85_ = L_82_arg0
	end;
	return L_85_
end;
function backup_gun(L_88_arg0)
	if not rawget(L_40_, L_88_arg0) then
		rawset(L_40_, L_88_arg0, deepcopy(L_88_arg0))
	end;
	return rawget(L_40_, L_88_arg0)
end;
local L_41_ = {
	Min = 0,
	Max = 0
}
function set_viewkick(L_90_arg0, L_91_arg1)
	if not L_90_arg0 then
		return
	end;
	local L_92_ = backup_gun(L_90_arg0)
	local L_93_ = L_90_arg0;
	for L_94_forvar0, L_95_forvar1 in next, L_93_ do
		if L_94_forvar0 == "ViewKick" then
			local L_96_ = L_93_[L_94_forvar0]
			local L_97_ = ((L_91_arg1 and L_41_) or L_92_[L_94_forvar0]["Pitch"])
			local L_98_ = ((L_91_arg1 and L_41_) or L_92_[L_94_forvar0]["Yaw"])
			rawset(L_96_, "Pitch", L_97_)
			rawset(L_96_, "Yaw", L_98_)
		end
	end
end;
function set_spread(L_99_arg0, L_100_arg1)
	if not L_99_arg0 then
		return
	end;
	local L_101_ = backup_gun(L_99_arg0)
	local L_102_ = L_99_arg0;
	for L_103_forvar0, L_104_forvar1 in next, L_102_ do
		if L_103_forvar0 == "Spread" then
			local L_105_ = ((L_100_arg1 and L_41_) or L_101_[L_103_forvar0])
			rawset(L_102_, "Spread", L_105_)
		end
	end
end;
function set_ammo(L_106_arg0, L_107_arg1, L_108_arg2)
	if not L_106_arg0 then
		return
	end;
	local L_109_ = backup_gun(L_106_arg0)
	local L_110_ = L_106_arg0;
	for L_111_forvar0, L_112_forvar1 in next, L_110_ do
		if tostring(L_111_forvar0):find("Ammo") then
			if L_108_arg2 then
				rawset(L_110_, L_111_forvar0, L_107_arg1)
			elseif (L_112_forvar1 == L_107_arg1) or L_112_forvar1 == (L_107_arg1 - 1 + 0) then
				rawset(L_110_, L_111_forvar0, L_109_[L_111_forvar0])
			end
		end
	end
end;
function set_rapidfire(L_116_arg0, L_117_arg1)
	if not L_116_arg0 then
		return
	end;
	local L_118_ = backup_gun(L_116_arg0)
	local L_119_ = L_116_arg0;
	local L_120_ = ((L_117_arg1 and 0) or L_118_["FireTime"])
	if L_117_arg1 then
		rawset(L_119_, "Semi", false)
	else
		rawset(L_119_, "Semi", L_118_["Semi"])
	end;
	rawset(L_119_, "FireTime", L_120_)
end;
function set_other(L_130_arg0)
	if not L_130_arg0 then
		return
	end;
	local L_131_ = backup_gun(L_130_arg0)
	local L_132_ = L_130_arg0;
	for L_133_forvar0, L_134_forvar1 in next, L_132_ do
		if L_133_forvar0 == "BulletPenetration" then
			rawset(L_132_, L_133_forvar0, ((L_38_.Settings.BulletPenetration and 1000) or L_131_[L_133_forvar0]))
		end
	end
end;
function get_server_script(L_136_arg0)
	return L_136_arg0 and L_136_arg0.Character and L_136_arg0.Character.ServerScript
end;
local L_42_ = getrenv()
local L_43_ = game.Loaded.Connect;
local L_44_ = game.WaitForChild;
local L_45_ = game.FindFirstChild;
local L_46_ = game.GetChildren;
local L_47_ = game.GetService;
local L_48_ = L_47_(game, "RunService")
local L_49_ = L_47_(game, "Workspace")
local L_50_ = L_47_(game, "Players")
local L_51_ = L_50_.LocalPlayer;
local L_52_ = L_44_(L_49_, "Baddies")
local L_53_ = L_44_(L_49_, "Interact")
L_38_.Functions.Damage = function(L_137_arg0, L_138_arg1)
	if not L_137_arg0.Humanoid then
		return
	end;
	local L_139_ = L_44_(L_137_arg0.Humanoid, "Damage")
	L_139_:FireServer({
		["Source"] = L_137_arg0.HumanoidRootPart.Position,
		["Splash"] = true,
		["Damage"] = L_138_arg1 or math.huge
	}, L_38_.damage_key)
end;
L_38_.Functions.KillAll = function()
	for L_140_forvar0, L_141_forvar1 in next, L_46_(L_52_) do
		L_38_.Functions.Damage(L_141_forvar1)
	end
end;
L_38_.Functions.Slow = function(L_142_arg0)
	if not L_142_arg0.Humanoid then
		return
	end;
	local L_143_ = L_44_(L_142_arg0.Humanoid, "ApplySlow")
	L_143_:FireServer({
		["Value"] = 0,
		["Duration"] = math.huge
	})
end;
L_38_.Functions.SlowAll = function()
	for L_144_forvar0, L_145_forvar1 in next, L_46_(L_52_) do
		L_38_.Functions.Slow(L_145_forvar1)
	end
end;
L_38_.Functions.GetPoints = function(L_146_arg0)
	local L_147_ = L_46_(L_52_)
	if #L_147_ > 0 then
		for L_149_forvar0, L_150_forvar1 in next, L_46_(L_52_) do
			for L_154_forvar0 = 1 + 0, L_146_arg0 / 10 do
				L_38_.Functions.Damage(L_150_forvar1, 0)
			end;
			break
		end
	else
		L_36_:MakeNotification({
			Name = "DarkHub";
			Content = "There has to be atleast one zombie to get points.";
			Image = "rbxassetid://4483345998";
			Time = 3
		})
	end
end;
L_38_.Functions.GetPerk = function(L_236_arg0)
	local L_237_ = get_server_script(L_51_)
	local L_238_ = L_237_ and L_45_(L_237_, "NewPerk")
	if L_238_ then
		L_237_.NewPerk:FireServer({
			Value = L_236_arg0
		})
	else
		L_36_:MakeNotification({
			Name = "DarkHub";
			Content = "Get Perks didnt work, you must be spawned.";
			Image = "rbxassetid://4483345998";
			Time = 3
		})
	end
end;
L_38_.Functions.GetPerks = function()
	for L_333_forvar0, L_334_forvar1 in next, L_46_(L_53_) do
		if L_45_(L_334_forvar1, "PerkScript") then
			L_38_.Functions.GetPerk(L_334_forvar1.Name)
		end
	end
end;
local L_54_ = function(L_335_arg0)
	if L_38_.Settings.KillAll then
		task.spawn(function()
			L_44_(L_335_arg0, "Humanoid")
			L_38_.Functions.Damage(L_335_arg0)
		end)
	end;
	if L_38_.Settings.FreezeAll then
		task.spawn(function()
			L_44_(L_335_arg0, "Humanoid")
			L_38_.Functions.Slow(L_335_arg0)
		end)
	end
end;
local L_55_;
L_55_ = hookmetamethod(game, "__namecall", function(L_336_arg0, ...)
	local L_337_ = getnamecallmethod()
	local L_338_ = checkcaller()
	local L_339_ = L_39_[L_337_]
	local L_340_ = L_339_ and L_339_[L_336_arg0.Name]
	if (L_340_ and L_340_.checkcaller == L_338_) then
		local L_341_, L_342_ = pcall(L_340_.callback, L_336_arg0, ...)
		return L_342_
	end;
	return L_55_(L_336_arg0, ...)
end)
task.spawn(function()
	while true do
		local L_343_ = L_45_(L_49_, "Baddies")
		if L_343_ and (L_343_ ~= L_52_) then
			L_52_ = L_343_;
			L_43_(L_52_.ChildAdded, L_54_)
		end;
		local L_344_ = L_45_(L_49_, "Interact")
		if L_344_ and (L_344_ ~= L_53_) then
			L_53_ = L_344_
		end;
		task.wait(1)
	end
end)
L_43_(L_48_.RenderStepped, function()
	local L_345_ = L_42_._G.Equipped;
	if L_345_ then
		if (not L_38_.damage_key) then
			L_38_.damage_key = get_damage_key()
		end;
		set_spread(L_345_, L_38_.Settings.NoSpread)
		set_viewkick(L_345_, L_38_.Settings.NoRecoil)
		set_ammo(L_345_, 100, L_38_.Settings.InfiniteAmmo)
		set_rapidfire(L_345_, L_38_.Settings.RapidFire)
	end
end)
L_43_(L_52_.ChildAdded, L_54_)
L_36_ = loadstring(game:HttpGet(("https://raw.githubusercontent.com/shlexware/Orion/main/source")))()
local L_56_ = L_36_:MakeWindow({
	Name = "DarkHub",
	HidePremium = false,
	SaveConfig = true,
	ConfigFolder = "DarkHub"
})
local L_57_ = L_56_:MakeTab({
	Name = "Combat Cheats";
	Icon = "rbxassetid://4483345998"
})
do
	L_57_:AddButton({
		Name = "Get Perks";
		Callback = function()
			L_38_.Functions.GetPerks()
		end
	})
	L_57_:AddToggle({
		Name = "Kill all Zombies";
		Default = false;
		Callback = function(L_348_arg0)
			if L_348_arg0 then
				L_38_.Functions.KillAll()
			end;
			L_38_.Settings.KillAll = L_348_arg0
		end
	})
	L_57_:AddToggle({
		Name = "Freeze all Zombies";
		Default = false;
		Callback = function(L_349_arg0)
			if L_349_arg0 then
				L_38_.Functions.SlowAll()
			end;
			L_38_.Settings.FreezeAll = L_349_arg0
		end
	})
	local L_346_ = L_57_:AddSection({
		Name = "Weapon Mods"
	})
	do
		L_346_:AddToggle({
			Name = "Infinite Ammo";
			Default = false;
			Callback = function(L_350_arg0)
				L_38_.Settings.InfiniteAmmo = L_350_arg0
			end
		})
		L_346_:AddToggle({
			Name = "No GunKick";
			Default = false;
			Callback = function(L_351_arg0)
				L_38_.Settings.NoRecoil = L_351_arg0
			end
		})
		L_346_:AddToggle({
			Name = "No Spread";
			Default = false;
			Callback = function(L_352_arg0)
				L_38_.Settings.NoSpread = L_352_arg0
			end
		})
		L_346_:AddToggle({
			Name = "Instant Kill";
			Default = false;
			Callback = function(L_353_arg0)
				L_38_.Settings.InstantKill = L_353_arg0
			end
		})
		L_346_:AddToggle({
			Name = "Frostbite bullet";
			Default = false;
			Callback = function(L_354_arg0)
				L_38_.Settings.FreezeRay = L_354_arg0
			end
		})
		L_346_:AddToggle({
			Name = "Freez Zombie on Hit";
			Default = false;
			Callback = function(L_355_arg0)
				L_38_.Settings.SlowGun = L_355_arg0
			end
		})
		L_346_:AddToggle({
			Name = "Rapid Fire";
			Default = false;
			Callback = function(L_356_arg0)
				L_38_.Settings.RapidFire = L_356_arg0
			end
		})
	end;
	local L_347_ = L_57_:AddSection({
		Name = "Point Exploit"
	})
	do
		L_347_:AddTextbox({
			Name = "Point Amount",
			Default = "1000",
			TextDisappear = false,
			Callback = function(L_357_arg0)
				local L_358_ = tonumber(L_357_arg0)
				if not L_358_ then
					L_36_:MakeNotification({
						Name = "DarkHub";
						Content = "Input has to be a Number.";
						Image = "rbxassetid://4483345998";
						Time = 3 + 0
					})
					return
				end;
				if L_358_ > 10000 then
					L_36_:MakeNotification({
						Name = "DarkHub";
						Content = "10000 are the max amount, dont spam it, could cause lag to yourself.";
						Image = "rbxassetid://4483345998";
						Time = 3
					})
					return
				end;
				if L_358_ < 100 then
					L_36_:MakeNotification({
						Name = "DarkHub";
						Content = "Points have to be above 100";
						Image = "rbxassetid://4483345998";
						Time = 3
					})
					return
				end;
				L_38_.Settings.PointsAmount = L_358_
			end
		})
		L_347_:AddButton({
			Name = "Get Points";
			Callback = function()
				L_38_.Functions.GetPoints(L_38_.Settings.PointsAmount)
			end
		})
	end
end
