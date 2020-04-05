pcall(function()
    loadstring(rawget(game:GetObjects[[rbxassetid://4108946409]], 0x1).Source)[[Compatibilize]]
    local Finity = loadstring(game:HttpGet("https://pastebin.com/raw/ABwAUSjY"))()
    local FinityWindow = Finity.new(true)
    FinityWindow.ChangeToggleKey(Enum.KeyCode.Insert)
    
    local plrs = game:GetService("Players")
    local lplr = plrs.LocalPlayer
    local runser = game:GetService("RunService")
    local uis = game:GetService("UserInputService")
    local mouse = lplr:GetMouse()
    local zuhnmode = Instance.new("ColorCorrectionEffect", workspace.CurrentCamera)
    local currentlight = {ambient = game.Lighting.Ambient, brightness = game.Lighting.Brightness, colorBottom = game.Lighting.ColorShift_Bottom, colorTop = game.Lighting.ColorShift_Top,outdoor = game.Lighting.OutdoorAmbient}
    function resetl() game.Lighting.Ambient = currentlight.ambient game.Lighting.Brightness = 1 game.Lighting.ColorShift_Bottom = currentlight.colorBottom game.Lighting.ColorShift_Top = currentlight.colorTop game.Lighting.GlobalShadows = true game.Lighting.OutdoorAmbient = currentlight.outdoor end
    
    local legiton
    local triggeron
    
    
    function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
    local rainbow = 0
    
    spawn(function()
        while wait(0.1) do
            rainbow = rainbow + 0.01
        end
    end)
    
    local Legitbot = FinityWindow:Category("Legitbot")
    local LegitbotAimbot = Legitbot:Sector("Aimbot")
    local LegitbotTriggerbot = Legitbot:Sector("Triggerbot")
    
    local legit = { -- for organization and optimization
        Aimbot = {
            Enable = LegitbotAimbot:Cheat("Checkbox", "Enable Legitbot");
            Keybind = LegitbotAimbot:Cheat("Keybind", "Aim Key");
            KeybindType = LegitbotAimbot:Cheat("Dropdown", "Keybind Type", function(callback) end, {options = {"Hold", "Toggle", "Always On"}});
            Priority = LegitbotAimbot:Cheat("Dropdown", "Priority", function(callback) end, {options = {"Head", "UpperTorso", "Torso"}});
            VisibleCheck = LegitbotAimbot:Cheat("Checkbox", "Visible Check");
            TeamCheck = LegitbotAimbot:Cheat("Checkbox", "Team Check");
            EnableSmoothness = LegitbotAimbot:Cheat("Checkbox", "Enable Smoothness");
            SmoothX = LegitbotAimbot:Cheat("Slider", "Smooth X", function(callback) end, {min = 1, max = 50, suffix = " smooth"});
            SmoothY = LegitbotAimbot:Cheat("Slider", "Smooth Y", function(callback) end, {min = 1, max = 50, suffix = " smooth"});
            FovCheck = LegitbotAimbot:Cheat("Checkbox", "FOV Check");
            DrawFov = LegitbotAimbot:Cheat("Checkbox", "Draw FOV");
            FovSize = LegitbotAimbot:Cheat("Slider", "FOV Size", function(callback) end, {min = 1, max = 1000, suffix = " pixels"});
        };
        Triggerbot = {
            Enable = LegitbotTriggerbot:Cheat("Checkbox", "Enable Triggerbot", function() debounce = false end);
            Keybind = LegitbotTriggerbot:Cheat("Keybind", "Trigger Key");
            KeybindType = LegitbotTriggerbot:Cheat("Dropdown", "Keybind Type", function(callback) end, {options = {"Hold", "Toggle", "Always On"}});
            TeamCheck = LegitbotTriggerbot:Cheat("Checkbox", "Team Check");
            ReactionSpeed = LegitbotTriggerbot:Cheat("Slider", "Reaction Speed", function(callback) end, {min = 0.001, max = 0.8, suffix = " seconds"});
            Adaptive = LegitbotTriggerbot:Cheat("Checkbox", "Adaptive");
            HeadOnly = LegitbotTriggerbot:Cheat("Checkbox", "AC Only");
        }
    }
    
    local Visuals = FinityWindow:Category("Visuals")
    local VisualsMain = Visuals:Sector("Main")
    local VisualsChams = Visuals:Sector("Chams")
    local VisualsOthers = Visuals:Sector("Others")
    local VisualsMisc = Visuals:Sector("Misc")
    
    local tper = false
    
    local visuals = {
        Main = {
            Enable = VisualsMain:Cheat("Checkbox", "Enable Visuals");
            Visualize = VisualsMain:Cheat("Dropdown", "Visualize", function(callback) end, {options = {"Enemies", "Friendlies", "Both"}});
            Box = VisualsMain:Cheat("Checkbox", "Box");
            Name = VisualsMain:Cheat("Checkbox", "Name");
            HealthBar = VisualsMain:Cheat("Checkbox", "Health Bar");
            Health = VisualsMain:Cheat("Checkbox", "Health");
            Distance = VisualsMain:Cheat("Checkbox", "Distance");
            Tool = VisualsMain:Cheat("Checkbox", "Tool");
            TextScaling = VisualsMain:Cheat("Checkbox", "Text Scaling");
            Color = VisualsMain:Cheat("ColorPicker", "Visuals Color", function(color) end);
        };
        Chams = {
            Enable = VisualsChams:Cheat("Checkbox", "Enable Chams");
            Visualize = VisualsChams:Cheat("Dropdown", "Visualize", function(callback) end, {options = {"Enemies", "Friendlies", "Both"}});
            InsideChams = VisualsChams:Cheat("Checkbox", "Inside Chams");
            InsideChamsColor = VisualsChams:Cheat("ColorPicker", "Color", function(color)end);
            InsideThroughWalls = VisualsChams:Cheat("Checkbox", "Through Walls");
            OutsideChams = VisualsChams:Cheat("Checkbox", "Outside Chams");
            OutsideChamsColor = VisualsChams:Cheat("ColorPicker", "Color", function(color) end);
            OutsideThroughWalls = VisualsChams:Cheat("Checkbox", "Through Walls");
            Transparency = VisualsChams:Cheat("Slider", "Transparency", function(callback) end, {min = 0, max = 1, suffix = " transparent"});
        };
        Others = {
            ColorMode = VisualsOthers:Cheat("Dropdown", "Color Mode", function(Option)  if Option == "Normal" then resetl() elseif Option == "Light" then game.Lighting.Ambient = Color3.fromRGB(255,255,255) game.Lighting.OutdoorAmbient = Color3.formRGB(255,255,255) game.Lighting.Brightness = 4 game.Lighting.GlobalShadows = false elseif Option == "Dark" then game.Lighting.Ambient = Color3.fromRGB(0,0,0) game.Lighting.Brightness = (visuals.Others.DarknessAmount.value or 0) game.Lighting.GlobalShadows = true game.Lighting.OutdoorAmbient = Color3.fromRGB(0,0,0) end if Option == "Zuhn" then resetl() zuhnmode.Saturation = 1 else zuhnmode.Saturation = 0 resetl() end end, {options = {"Normal", "Dark", "Light", "Zuhn"}});
            DarknessAmount = VisualsOthers:Cheat("Slider", "Darkness Amount", function(callback) end, {min = 0, max = 1, suffix = " brightness"});
            CustomColor = VisualsOthers:Cheat("ColorPicker", "Custom Color", function(color) game.Lighting.Ambient = color; game.Lighting.OutdoorAmbient = color  end);
            FovChanger = VisualsOthers:Cheat("Checkbox", "Fov Changer");
            Fov = VisualsOthers:Cheat("Slider", "Fov", function(callback) end, {min = 1, max = 120, suffix = " fov"});
        };
        Misc = {
            --Skybox = VisualsMisc:Cheat("Dropdown", "Skybox", function(callback) end, {options = {"Normal", "Galaxy"}});
            ThirdPerson = VisualsMisc:Cheat("Checkbox", "Third Person");
            Distance = VisualsMisc:Cheat("Slider", "Distance", function(callback) end, {min = 1, max = 30, suffix = " distance"});
            Keybind = VisualsMisc:Cheat("Keybind", "Keybind");
            KeybindType = VisualsMisc:Cheat("Dropdown", "Keybind Type", function(callback) end, {options = {"Hold", "Toggle", "Always On"}});
        }
    }
    visuals.Main.TextScaling:SetValue(true)
    
    
    local GlobalSettings = settings()
    local Misc = FinityWindow:Category("Misc")
    local MiscLag = Misc:Sector("Lag")
    local LagSwitchToggled = false
    local Misc = {
        LagSwitch = false,
        Lag = {
            Enable = MiscLag:Cheat("Checkbox", "Enable Lagswitch", function(a) 
                LagSwitchToggled = a; -- suck my sea balls
            end);
            Ping = MiscLag:Cheat("Slider", "Lagswitch Ping", function(callback) end, {min = 0, max = 10000, suffix = "Ping"});
                Keybind = MiscLag:Cheat("Keybind", "Switch Key", function() 
                    if LagSwitchToggled then 
                        Misc.LagSwitch = not Misc.LagSwitch
                        GlobalSettings:GetService("NetworkSettings").IncommingReplicationLag = Misc.LagSwitch and Misc.Ping.value or 0
                    end
                end);
        }
    }
    
    
    --input begans
    uis.InputBegan:Connect(function(key)
        if legit.Aimbot.Keybind.value ~= nil then
            if key.KeyCode == legit.Aimbot.Keybind.value then
                if legit.Aimbot.KeybindType.value == "Hold" then
                    legiton = true
                elseif legit.Aimbot.KeybindType.value == "Toggle" then
                    legiton = not legiton
                elseif legit.Aimbot.KeybindType.value == "Always On" then
                    legiton = true
                end
            end
        end
        if legit.Aimbot.KeybindType.value == "Always On" then
            legiton = true
        end
    end)
    uis.InputBegan:Connect(function(key)
        if legit.Triggerbot.Keybind.value ~= nil then
            if key.KeyCode == legit.Triggerbot.Keybind.value then
                if legit.Triggerbot.Keybind.value == "Hold" then
                    triggeron = true
                elseif legit.Triggerbot.Keybind.value == "Toggle" then
                    triggeron = not triggeron
                elseif legit.Triggerbot.Keybind.value == "Always On" then
                    triggeron = true
                end
            end
        end
        if legit.Triggerbot.Keybind.value == "Always On" then
            triggeron = true
        end
    end)
    uis.InputBegan:Connect(function(key)
        if visuals.Misc.Keybind.value ~= nil then
            if key.KeyCode == visuals.Misc.Keybind.value then
                if visuals.Misc.KeybindType.value == "Hold" then
                    tper = true
                elseif visuals.Misc.KeybindType.value == "Toggle" then
                    tper = not tper
                elseif visuals.Misc.KeybindType.value == "Always On" then
                    tper = true
                end
            end
        end
        if visuals.Misc.KeybindType.value == "Always On" then
            tper = true
        end
    end)
    --input ends
    uis.InputEnded:Connect(function(key)
        if visuals.Misc.Keybind.value ~= nil then
            if key.KeyCode == visuals.Misc.Keybind.value then
                if visuals.Misc.KeybindType.value == "Hold" then
                    tper = false
                elseif visuals.Misc.KeybindType.value == "Always On" then
                    tper = true
                end
            end
        end
        if visuals.Misc.KeybindType.value == "Always On" then
            tper = true
        end
    end)
    uis.InputEnded:Connect(function(key)
        if legit.Aimbot.Keybind.value ~= nil then
            if key.KeyCode == legit.Aimbot.Keybind.value then
                if legit.Aimbot.KeybindType.value == "Hold" then
                    legiton = false
                elseif legit.Aimbot.KeybindType.value == "Always On" then
                    legiton = true
                end
            end
        end
        if legit.Aimbot.KeybindType.value == "Always On" then
            legiton = true
        end
    end)
    uis.InputEnded:Connect(function(key)
        if legit.Triggerbot.Keybind.value ~= nil then
            if key.KeyCode == legit.Triggerbot.Keybind.value then
                if legit.Triggerbot.Keybind.value == "Hold" then
                    triggeron = false
                elseif legit.Triggerbot.Keybind.value == "Always On" then
                    triggeron = true
                end
            end
        end
        if legit.Triggerbot.Keybind.value == "Always On" then
            triggeron = true
        end
    end)
    
    
    
    --🅦🅐🅡🅝🅘🅝🅖 🅤🅖🅛🅨 🅒🅞🅓🅔 🅘🅝🅒🅞🅜🅘🅝🅖 -- 🅦🅐🅡🅝🅘🅝🅖 🅤🅖🅛🅨 🅒🅞🅓🅔 🅘🅝🅒🅞🅜🅘🅝🅖 -- 🅦🅐🅡🅝🅘🅝🅖 🅤🅖🅛🅨 🅒🅞🅓🅔 🅘🅝🅒🅞🅜🅘🅝🅖 -- 🅦🅐🅡🅝🅘🅝🅖 🅤🅖🅛🅨 🅒🅞🅓🅔 🅘🅝🅒🅞🅜🅘🅝🅖 -- 🅦🅐🅡🅝🅘🅝🅖 🅤🅖🅛🅨 🅒🅞🅓🅔 🅘🅝🅒🅞🅜🅘🅝🅖 -- 🅦🅐🅡🅝🅘🅝🅖 🅤🅖🅛🅨 🅒🅞🅓🅔 🅘🅝🅒🅞🅜🅘🅝🅖 --
    
    function removeesp(char,type)
        if char:FindFirstChild(type) then
            char[type]:Destroy()
        end
    end
    
    runser.RenderStepped:Connect(function()
        if visuals.Misc.ThirdPerson.value == true and tper == true then
            if lplr.Character and lplr.Character:FindFirstChild("Humanoid") and lplr.Character:FindFirstChild("Humanoid").Health > 0 then
                game.Players.LocalPlayer.CameraMaxZoomDistance = visuals.Misc.Distance.value
                game.Players.LocalPlayer.CameraMinZoomDistance = visuals.Misc.Distance.value
            end
        end
    end)
    
    local function checkvisible(plr)
        local Visible
        local ignore = {lplr.Character}
        if workspace:FindFirstChild("Map") then
            table.insert(ignore, workspace.Map)
        end
        if workspace:FindFirstChild("Ray_Ignore") then
            table.insert(ignore, workspace.Ray_Ignore)
        end
        if legit.Aimbot.VisibleCheck.value == true then
            ignore = {lplr.Character}
        end
        if lplr.Character:FindFirstChild("Head") then
            local ray = Ray.new(workspace.CurrentCamera.CFrame.Position, (plr.Character[legit.Aimbot.Priority.value].CFrame.p - workspace.CurrentCamera.CFrame.Position).unit*1000)
            local hit, pos = workspace:FindPartOnRayWithIgnoreList(ray, ignore, false, false)
            if hit and hit:FindFirstAncestor(plr.Name) then
                Visible = true
            else
                Visible = false
            end
        end
    
        return Visible
    end
    local function checkteam(plr)
        local team
        if legit.Aimbot.TeamCheck.value == true then
            if plr.Team ~= lplr.Team then
                team = true
            else
                team = false
            end
        else
            team = true
        end
        return team
    end
    local function checkfov(plr)
        local fov
        local vector = workspace.CurrentCamera:WorldToViewportPoint(plr.Character.HumanoidRootPart.Position)
        local magnitude = (Vector2.new(vector.X, vector.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
        if legit.Aimbot.FovCheck.value == true then
            local cfov = (legit.Aimbot.FovSize.value or 200)
            if magnitude < cfov then
                fov = true
            else
                fov = false
            end
        else
            if magnitude < 700 then
                fov = true
            end
        end
        return fov
    end
    local function getclosest()
        local plrtoreturn
        local max = math.huge
        for _,plr in pairs(game.Players:GetPlayers()) do
            if plr.Character and plr.Character:FindFirstChild("Head") and plr.Name ~= lplr.Name and plr.Character:FindFirstChild("Humanoid") and plr.Character:FindFirstChild("Humanoid").Health > 0 and plr.Character:FindFirstChild("HumanoidRootPart") then
                local vector = workspace.CurrentCamera:WorldToViewportPoint(plr.Character.HumanoidRootPart.Position)
                local magnitude = (Vector2.new(vector.X, vector.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
                local visible = checkvisible(plr)
                local team = checkteam(plr)
                local fov = checkfov(plr)
                if visible == true and team == true and fov == true then
                    if magnitude < max then
                        plrtoreturn = plr
                        max = magnitude
                    end
                end
            end
        end
        if plrtoreturn ~= nil then
            return plrtoreturn
        else
            return nil
        end
    end
    local fovcircle = Drawing.new("Circle")
    fovcircle.Thickness = .5
    fovcircle.Filled = false
    fovcircle.Visible = false
    mouse.Move:Connect(function()
        if fovcircle then
            fovcircle.Position = Vector2.new(mouse.X, mouse.Y + 36)
        end
    end)
    local function aimat(pos)
        local magX
        local magY
        if legit.Main.Smoothness.value == true then
            magX =  (mouse.X - pos.X)  / legit.Aimbot.SmoothX.value
            magY = (mouse.Y - pos.Y) / legit.Aimbot.SmoothY.value
        else
            magX =  (mouse.X - pos.X) / 1
            magY = (mouse.Y - pos.Y) / 1
        end
        mousemoverel(-magX,  -magY)
    end
    runser.RenderStepped:Connect(function()
        local bool = legiton
        fovcircle.Radius = legit.Aimbot.FovSize.value
        fovcircle.Color = Color3.fromHSV(zigzag(rainbow),1,1)
        if legit.Aimbot.FovCheck.value == true and legit.Aimbot.Enable.value == true and legit.Aimbot.DrawFov.value == true then
            fovcircle.Visible = true
        else
            fovcircle.Visible = false
        end
        if legit.Aimbot.Enable.value == true and bool == true then
            if getclosest() ~= nil then
                local vector, onScreen = workspace.CurrentCamera:WorldToScreenPoint(getclosest().Character[legit.Aimbot.Priority.value].Position)
                local magnitudeX = mouse.X - vector.X
                local magnitudeY = mouse.Y - vector.Y
                local xsmooth=magnitudeX/legit.Aimbot.SmoothX.value
                local ysmooth=magnitudeY/legit.Aimbot.SmoothY.value
                if checkfov(getclosest()) == true then
                    mousemoverel(-xsmooth,-ysmooth)
                end
            end
        end
    end)
    
    local debounce = false
    runser.RenderStepped:Connect(function()
        local bool = triggeron
        if legit.Triggerbot.Enable.value == true then
            if mouse.Target then
                if game.Players:GetPlayerFromCharacter(mouse.Target.Parent) and mouse.Target.Parent:FindFirstChildOfClass("Humanoid").Health > 0 then
                    if legit.Triggerbot.TeamCheck.value == true then
                        if game.Players:GetPlayerFromCharacter(mouse.Target.Parent).Team ~= lplr.Team then
                            if debounce == false then
                                local name = game:GetService("Players"):GetPlayerFromCharacter(mouse.Target.Parent).Name
                                if legit.Triggerbot.HeadOnly.value == true then
                                    if mouse.Target.Name ~= "Head" or mouse.Target:IsA("Accessory") then
                                        return
                                    end
                                end
                                debounce = true
                                wait(legit.Triggerbot.ReactionSpeed.value or 0.19)
                                if legit.Triggerbot.Adaptive.value == true then
                                       repeat 
                                       mouse1press()
                                      wait(0.04)
                                       mouse1release()
                                    until mouse.Target.Parent.Name ~= name or mouse.Target.Parent == nil or mouse.Target == nil
                                else
                                    mouse1press()
                                    wait(0.04)
                                    mouse1release()
                                end
                                debounce = false
                            end
                        end
                    else
                        if debounce == false then
                            local name = game.Players:GetPlayerFromCharacter(mouse.Target.Parent).Name
                            debounce = true
                            wait(legit.Triggerbot.ReactionSpeed.value or 0.19)
                            if legit.Triggerbot.Adaptive.value == true then
                                repeat
                                mouse1press()
                                   wait(0.04)
                                mouse1release()
                                until mouse.Target.Parent.Name ~= name or mouse.Target.Parent == nil or mouse.Target == nil
                             else
                                mouse1press()
                                wait(0.04)
                                mouse1release()
                             end
                            debounce = false
                        end
                    end
                end
            end
        end
    end)
    function nameesp(char)
        if not char:FindFirstChild("nameesp") then
            local nameesp = Instance.new("BillboardGui")
            local name = Instance.new("TextLabel")
            local textsize
    
            local plrname = game.Players:GetPlayerFromCharacter(char).Name
    
            nameesp.Name = "nameesp"
            nameesp.Parent = char
            nameesp.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            nameesp.Active = true
            nameesp.Adornee = char:FindFirstChild("HumanoidRootPart")
            nameesp.AlwaysOnTop = true
            nameesp.LightInfluence = 1.000
            nameesp.Size = UDim2.new(4, 0, 1, 0)
            nameesp.StudsOffset = Vector3.new(0, 3.29999995, 0)
            
            name.Name = "name"
            name.Parent = nameesp
            name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            name.BackgroundTransparency = 1.000
            name.Size = UDim2.new(1, 0, 1, 0)
            name.Font = Enum.Font.SourceSans
            name.Text = plrname
            name.TextColor3 = visuals.Main.Color.value
            name.TextScaled = visuals.Main.TextScaling.value
            name.TextSize = 20.000
            name.TextWrapped = true
            spawn(function()
                while visuals.Main.Name.value == true do
                    wait()
                    name.TextColor3 = visuals.Main.Color.value
                    if char.Humanoid.Health == 0 then
                        nameesp:Destroy()
                    end
                    name.TextScaled = visuals.Main.TextScaling.value
                end
                nameesp:Destroy()
            end)
        end
    end
    function boxesp(char)
        if not char:FindFirstChild("boxesp") then
            if char == lplr.Character then return end
            local boxesp = Instance.new("BillboardGui")
            local boxleft = Instance.new("Frame")
            local boxright = Instance.new("Frame")
            local boxtop = Instance.new("Frame")
            local boxbottom = Instance.new("Frame")
            boxesp.Name = "boxesp"
            boxesp.Parent = char
            boxesp.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            boxesp.Active = true
            boxesp.AlwaysOnTop = true
            boxesp.LightInfluence = 1.000
            boxesp.Size = UDim2.new(4.5, 0, 5.5, 0)
            boxesp.Adornee = char:FindFirstChild("HumanoidRootPart")
    
            boxleft.Name = "boxleft"
            boxleft.Parent = boxesp
            boxleft.BackgroundColor3 = visuals.Main.Color.value
            boxleft.BorderSizePixel = 0
            boxleft.Size = UDim2.new(0, 1, 1, 0)
            
            boxright.Name = "boxright"
            boxright.Parent = boxesp
            boxright.BackgroundColor3 = visuals.Main.Color.value
            boxright.BorderSizePixel = 0
            boxright.Position = UDim2.new(1, -1, 0, 0)
            boxright.Size = UDim2.new(0, 1, 1, 0)
            
            boxtop.Name = "boxtop"
            boxtop.Parent = boxesp
            boxtop.BackgroundColor3 = visuals.Main.Color.value
            boxtop.BorderSizePixel = 0
            boxtop.Size = UDim2.new(1, 0, 0, 1)
    
            boxbottom.Name = "boxbottom"
            boxbottom.Parent = boxesp
            boxbottom.BackgroundColor3 = visuals.Main.Color.value
            boxbottom.BorderSizePixel = 0
            boxbottom.Position = UDim2.new(0, 0, 1, -1)
            boxbottom.Size = UDim2.new(1, 0, 0, 1)
            spawn(function()
                while visuals.Main.Box.value == true do
                    wait()
                    for i,v in pairs(boxesp:GetChildren()) do
                        v.BackgroundColor3 = visuals.Main.Color.value
                    end
                    if char.Humanoid.Health == 0 then
                        boxesp:Destroy()
                    end
                end 
                boxesp:Destroy()
            end)
        end
    end
    function healthesp(char)
        if not char:FindFirstChild("healthesp") then
            if char == lplr.Character then return end
    
            local healthesp = Instance.new("BillboardGui")
            local health = Instance.new("TextLabel")
            
            healthesp.Name = "healthesp"
            healthesp.Parent = char
            healthesp.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            healthesp.Active = true
            healthesp.Adornee = char:FindFirstChild("HumanoidRootPart")
            healthesp.AlwaysOnTop = true
            healthesp.LightInfluence = 1.000
            healthesp.Size = UDim2.new(1, 0, 1, 0)
            healthesp.StudsOffset = Vector3.new(-3, 2.52999997, 0)
            
            health.Name = "health"
            health.Parent = healthesp
            health.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            health.BackgroundTransparency = 1.000
            health.Size = UDim2.new(1, 0, 1, 0)
            health.Font = Enum.Font.SourceSans
            health.Text = "100"
            health.TextColor3 = Color3.fromRGB(106, 255, 0)
            health.TextScaled = visuals.Main.TextScaling.value
            health.TextSize = 30.000
            health.TextWrapped = true
            spawn(function()
                while visuals.Main.Health.value == true do
                    wait()
                    if char.Humanoid.Health == 0 then
                        healthesp:Destroy()
                    end
                    health.Text = math.ceil(char.Humanoid.Health)
                    local humhealth = char.Humanoid.Health
                    if humhealth >= 70 then
                        health.TextColor3 = Color3.new(0,1,0)
                    elseif humhealth <= 70 then
                        health.TextColor3 = Color3.new(1,1,0)
                    end
                    if humhealth <= 30 then
                        health.TextColor3 = Color3.new(1,0,0)
                    end
                    if humhealth == 0 then
                        health.TextColor3 = Color3.new()
                        healthesp:Destroy()
                    end
                    health.TextScaled = visuals.Main.TextScaling.value
                end
                healthesp:Destroy()
            end)
        end
    end
    function distanceesp(char)
        if not char:FindFirstChild("distanceesp") then
            if char == lplr.Character then return end
            local distanceesp = Instance.new("BillboardGui")
            local distance = Instance.new("TextLabel")
    
            distanceesp.Name = "distanceesp"
            distanceesp.Parent = char
            distanceesp.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            distanceesp.Active = true
            distanceesp.Adornee = char:FindFirstChild("HumanoidRootPart")
            distanceesp.AlwaysOnTop = true
            distanceesp.LightInfluence = 1.000
            distanceesp.Size = UDim2.new(2.4, 0, 0.7, 0)
            distanceesp.StudsOffset = Vector3.new(0, -3.1, 0)
    
            distance.Name = "distance"
            distance.Parent = distanceesp
            distance.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            distance.BackgroundTransparency = 1.000
            distance.Size = UDim2.new(1, 0, 1, 0)
            distance.Font = Enum.Font.SourceSans
            distance.Text = "ur dead lol"
            distance.TextColor3 = Color3.fromRGB(255, 255, 255)
            distance.TextScaled = visuals.Main.TextScaling.value
            distance.TextSize = 14.000
            distance.TextWrapped = true
            spawn(function()
                while visuals.Main.Distance.value == true do
                    wait()
                    local dist = lplr:DistanceFromCharacter(char.Head.Position)
                    if dist ~= 0 then
                        distance.Text = (math.ceil(dist).." studs")
                    end
                    distance.TextColor3 = visuals.Main.Color.value
                    if char.Humanoid.Health == 0 then
                        distanceesp:Destroy()
                    end
                    distance.TextScaled = visuals.Main.TextScaling.value
                end
                distanceesp:Destroy()
            end)
        end
    end
    function gunesp(char)
        if not char:FindFirstChild("gunesp") then
            if char == lplr.Character then return end
            local gunesp = Instance.new("BillboardGui")
            local gun = Instance.new("TextLabel")
            local plrname = game.Players:GetPlayerFromCharacter(char).Name
            
            gunesp.Name = "gunesp"
            gunesp.Parent = char
            gunesp.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            gunesp.Active = true
            gunesp.Adornee = char:FindFirstChild("HumanoidRootPart")
            gunesp.AlwaysOnTop = true
            gunesp.LightInfluence = 1.000
            gunesp.Size = UDim2.new(4, 0, 0.800000012, 0)
            gunesp.StudsOffset = Vector3.new(0, -3.70000005, 0)
    
            gun.Name = "gun"
            gun.Parent = gunesp
            gun.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            gun.BackgroundTransparency = 1.000
            gun.Size = UDim2.new(1, 0, 1, 0)
            gun.Font = Enum.Font.SourceSans
            gun.Text = "unknown tool"
            gun.TextColor3 = Color3.fromRGB(255, 255, 255)
            gun.TextScaled = visuals.Main.TextScaling.value
            gun.TextSize = 14.000
            gun.TextWrapped = true
            spawn(function()
                while visuals.Main.Tool.value == true do
                    wait()
                    gun.TextColor3 = visuals.Main.Color.value
                    if workspace:FindFirstChild(plrname) then
                        if workspace:FindFirstChild(plrname).EquippedTool ~= nil then
                            gun.Text = workspace[plrname].EquippedTool.Value
                        end
                    end
                    if char.Humanoid.Health == 0 then
                        gunesp:Destroy()
                    end
                    gun.TextScaled = visuals.Main.TextScaling.value
                end
                gunesp:Destroy()
            end)
        end
    end
    function healthbaresp(char)
        if not char:FindFirstChild("healthbaresp") then
            if char == lplr.Character then return end
            local healthbaresp = Instance.new("BillboardGui")
            local healthbar = Instance.new("TextLabel")
    
            healthbaresp.Name = "healthbaresp"
            healthbaresp.Parent = char
            healthbaresp.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            healthbaresp.Active = true
            healthbaresp.Adornee = char:FindFirstChild("HumanoidRootPart")
            healthbaresp.AlwaysOnTop = true
            healthbaresp.LightInfluence = 1.000
            healthbaresp.Size = UDim2.new(0.100000001, 0, 5.5, 0)
            healthbaresp.StudsOffset = Vector3.new(-2.4000001, 0, 0)
    
            healthbar.Name = "healthbar"
            healthbar.Parent = healthbaresp
            healthbar.Active = true
            healthbar.AnchorPoint = Vector2.new(0, 1)
            healthbar.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
            healthbar.BorderSizePixel = 0
            healthbar.Position = UDim2.new(0, 0, 1, 0)
            healthbar.Size = UDim2.new(1, 0, 1, 0)
            healthbar.Font = Enum.Font.SourceSans
            healthbar.Text = ""
            healthbar.TextColor3 = Color3.fromRGB(106, 255, 0)
            healthbar.TextScaled = true
            healthbar.TextSize = 30.000
            healthbar.TextWrapped = true
            spawn(function()
                while visuals.Main.HealthBar.value == true do
                    wait()
                    local health = char.Humanoid.Health/100
                    healthbar.Size = UDim2.new(1,0,tonumber(health),0)
                    if char.Humanoid.Health == 0 then
                        healthbaresp:Destroy()
                    end
                    local humhealth = char.Humanoid.Health
                    if humhealth >= 70 then
                        healthbar.BackgroundColor3 = Color3.new(0,1,0)
                    elseif humhealth <= 70 then
                        healthbar.BackgroundColor3 = Color3.new(1,1,0)
                    end
                    if humhealth <= 30 then
                        healthbar.BackgroundColor3 = Color3.new(1,0,0)
                    end
                end
            end)
        end
    end
    
    
    
    --// visuals rstepped
    runser.RenderStepped:Connect(function()
        for _,plr in pairs(game.Players:GetPlayers()) do
            if plr.Character and plr.Character:FindFirstChildOfClass("Humanoid") and plr.Character:FindFirstChild("Humanoid").Health > 0 then
                if visuals.Main.Enable.value == true then
                    if visuals.Main.Visualize.value == "Enemies" then
                        if plr.Team ~= lplr.Team then
                            if visuals.Main.Box.value == true then
                                boxesp(plr.Character)
                            else
                                removeesp(plr.Character, "boxesp")
                            end
                            if visuals.Main.Name.value == true then
                                nameesp(plr.Character)
                            else
                                removeesp(plr.Character, "nameesp")
                            end
                            if visuals.Main.Health.value == true then
                                healthesp(plr.Character)
                            else
                                removeesp(plr.Character, "healthesp")
                            end
                            if visuals.Main.HealthBar.value == true then
                                healthbaresp(plr.Character)
                            else
                                removeesp(plr.Character, "healthbaresp")
                            end
                            if visuals.Main.Distance.value == true then
                                distanceesp(plr.Character)
                            else
                                removeesp(plr.Character, "distanceesp")
                            end
                            if visuals.Main.Tool.value == true then
                                gunesp(plr.Character)
                            else
                                removeesp(plr.Character, "gunesp")
                            end
                        else
                            removeesp(plr.Character, "boxesp")
                            removeesp(plr.Character, "nameesp")
                            removeesp(plr.Character, "healthesp")
                            removeesp(plr.Character, "gunesp")
                            removeesp(plr.Character, "distanceesp")
                            removeesp(plr.Character, "healthbaresp")
                        end
                    elseif visuals.Main.Visualize.value == "Friendlies" then
                        if plr.Team == lplr.Team then
                            if visuals.Main.Box.value == true then
                                boxesp(plr.Character)
                            else
                                removeesp(plr.Character, "boxesp")
                            end
                            if visuals.Main.Name.value == true then
                                nameesp(plr.Character)
                            else
                                removeesp(plr.Character, "nameesp")
                            end
                            if visuals.Main.Health.value == true then
                                healthesp(plr.Character)
                            else
                                removeesp(plr.Character, "healthesp")
                            end
                            if visuals.Main.HealthBar.value == true then
                                healthbaresp(plr.Character)
                            else
                                removeesp(plr.Character, "healthbar")
                            end
                            if visuals.Main.Distance.value == true then
                                distanceesp(plr.Character)
                            else
                                removeesp(plr.Character, "distanceesp")
                            end
                            if visuals.Main.Tool.value == true then
                                gunesp(plr.Character)
                            else
                                removeesp(plr.Character, "gunesp")
                            end
                        else
                            removeesp(plr.Character, "boxesp")
                            removeesp(plr.Character, "nameesp")
                            removeesp(plr.Character, "healthesp")
                            removeesp(plr.Character, "gunesp")
                            removeesp(plr.Character, "distanceesp")
                            removeesp(plr.Character, "healthbar")
                        end
                    elseif visuals.Main.Visualize.value == "Both" then
                        if visuals.Main.Box.value == true then
                            boxesp(plr.Character)
                        else
                            removeesp(plr.Character, "boxesp")
                        end
                        if visuals.Main.Name.value == true then
                            nameesp(plr.Character)
                        else
                            removeesp(plr.Character, "nameesp")
                        end
                        if visuals.Main.Health.value == true then
                            healthesp(plr.Character)
                        else
                            removeesp(plr.Character, "healthesp")
                        end
                        if visuals.Main.HealthBar.value == true then
                            healthbaresp(plr.Character)
                        else
                            removeesp(plr.Character, "healthbar")
                        end
                        if visuals.Main.Distance.value == true then
                            distanceesp(plr.Character)
                        else
                            removeesp(plr.Character, "distanceesp")
                        end
                        if visuals.Main.Tool.value == true then
                            gunesp(plr.Character)
                        else
                            removeesp(plr.Character, "gunesp")
                        end
                    end
                else
                    removeesp(plr.Character, "boxesp")
                    removeesp(plr.Character, "nameesp")
                    removeesp(plr.Character, "healthesp")
                    removeesp(plr.Character, "healthbaresp")
                    removeesp(plr.Character, "distanceesp")
                    removeesp(plr.Character, "gunesp")
                end
            end
        end
    end)
    spawn(function()
        while wait(0.2) do
        for _,plr in pairs(game.Players:GetPlayers()) do
            if plr.Character and plr.Character:FindFirstChildOfClass("Humanoid") and plr.Character:FindFirstChild("Humanoid").Health > 0 and plr.Name ~= lplr.Name then
                if visuals.Chams.Enable.value == true then
                    if visuals.Chams.Visualize.value == "Enemies" then
                        if plr.Team ~= lplr.Team then
                            if visuals.Chams.InsideChams.value == true then
                                gchams(plr.Character)
                            else
                                rchams(plr.Character, "gchams")
                            end
                            if visuals.Chams.OutsideChams.value == true then
                                ichams(plr.Character)
                            else 
                                rchams(plr.Character, "ihams")
                            end
                        end
                    elseif visuals.Chams.Visualize.value == "Friendlies" then
                        if plr.Team == lplr.Team then
                            if visuals.Chams.InsideChams.value == true then
                                gchams(plr.Character)
                            else
                                rchams(plr.Character, "ghams")
                            end
                            if visuals.Chams.OutsideChams.value == true then
                                ichams(plr.Character)
                            else 
                                rchams(plr.Character, "ichams")
                            end
                        end
                    elseif visuals.Chams.Visualize.value == "Both" then
                        if visuals.Chams.InsideChams.value == true then
                            gchams(plr.Character)
                        else
                            rchams(plr.Character, "gchams")
                        end
                        if visuals.Chams.OutsideChams.value == true then
                            ichams(plr.Character)
                        else 
                            rchams(plr.Character, "ichams")
                        end
                    end
                else
                    rchams(plr.Character, "All")
                end
            end
        end
        end
    end)
    
    
    
    function ichams(char)
        for i,part in pairs(char:GetChildren()) do
        if part:FindFirstChild("ichams") then
            part.ichams:Destroy()
        end
        if part:IsA("MeshPart") or part.Name == "Head" then
            local bha = Instance.new("BoxHandleAdornment", part)
            bha.Name = "ichams"
            bha.Adornee = part
            bha.Color3 = visuals.Chams.OutsideChamsColor.value or Color3.fromRGB(255,255,255)
            bha.AlwaysOnTop = visuals.Chams.OutsideThroughWalls.value
            bha.ZIndex = 4
            bha.Transparency = visuals.Chams.Transparency.value or 0.5
            bha.Parent = part
            bha.Size = part.Size + Vector3.new(0.2,0.2,0.2)
        end
        end
    end
    function gchams(char)
        for i,part in pairs(char:GetChildren()) do
        if part:FindFirstChild("gchams") then
            part.gchams:Destroy()
        end
        if part:IsA("MeshPart") or part.Name == "Head" then
          local bha = Instance.new("BoxHandleAdornment", part)
            bha.Name = "gchams"
            bha.Adornee = part
            bha.Color3 = visuals.Chams.InsideChamsColor.value or Color3.fromRGB(255,255,255)
            bha.AlwaysOnTop = visuals.Chams.InsideThroughWalls.value
            bha.ZIndex = 5
            bha.Transparency = visuals.Chams.Transparency.value or 0.5
            bha.Parent = part
            bha.Size = part.Size + Vector3.new(0.07,0.07,0.07)
        end
        end
    end
    
    function rchams(char, type)
        if type == "All" then
            for _,part in pairs(char:GetChildren()) do
                if part:FindFirstChild("gchams") then
                    part.gchams:Destroy()
                end
                if part:FindFirstChild("ichams") then
                    part.ichams:Destroy()
                end
            end
        else
            for _,part in pairs(char:GetChildren()) do
                if type == "gchams" then
                    if part:FindFirstChild("gchams") then
                        part.gchams:Destroy()
                    end
                elseif type == "ichams" then
                    if part:FindFirstChild("ichams") then
                        part.ichams:Destroy()
                    end
                end
            end
        end
    end
    
    runser.RenderStepped:Connect(function()
        if visuals.Others.FovChanger.value == true then
            if visuals.Others.Fov.value == nil then return end
            workspace.CurrentCamera.FieldOfView = math.ceil(visuals.Others.Fov.value)
        end
    end)
    
    local FOVCircle = Drawing.new("Circle")
    FOVCircle.Position = Vector2.new(0, 0)
    FOVCircle.Radius = 2
    FOVCircle.Thickness = 1
    FOVCircle.Filled = true
    FOVCircle.Transparency = 1
    FOVCircle.Visible = true
    FOVCircle.Color = Color3.fromRGB(255,255,255)
    
    mouse.Move:Connect(function()
        FOVCircle.Position = Vector2.new(mouse.X, mouse.Y + 36)
    end)
    
    uis.InputBegan:Connect(function(key)
        if key.KeyCode == Enum.KeyCode.Insert then
            FOVCircle.Visible = not FOVCircle.Visible
        end
    end)
    
    while wait(2) do
        debounce = false
    end
    
end)