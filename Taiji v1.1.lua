local rodsConst = loadstring(game:HttpGet("https://raw.githubusercontent.com/rankopolat/TaijiFisch/refs/heads/main/rodsConst.lua"))()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local start_time = os.time() -- Record the start time
local elapsed_time = 0

local Window = Rayfield:CreateWindow({
    Name = "Taiji v1.1",
    Icon = 0,
    LoadingTitle = "Taiji v1.1 interfacce",
    LoadingSubtitle = "by Taijitu",
    Theme = "Serenity",
 
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false, 
 
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil,
       FileName = "Big Hub"
    },
 
    Discord = {
       Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
 })

local Home = Window:CreateTab("Home","home")
local Main = Window:CreateTab("Auto","list")
local Taiji = Window:CreateTab("Taiji","heart")
local Shop = Window:CreateTab("Shop","box")
local Teleports = Window:CreateTab("Teleports","map-pin")
local Misc = Window:CreateTab("Misc","file-text")

-- // // // Services // // // --
local VirtualInputManager = game:GetService("VirtualInputManager")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local VirtualUser = game:GetService("VirtualUser")
local HttpService = game:GetService("HttpService")
local GuiService = game:GetService("GuiService")
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local CoreGui = game:GetService('StarterGui')
local ContextActionService = game:GetService('ContextActionService')
local UserInputService = game:GetService('UserInputService')

-- // // // Locals // // // --
local LocalPlayer = Players.LocalPlayer
local LocalCharacter = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local HumanoidRootPart = LocalCharacter:FindFirstChild("HumanoidRootPart")
local UserPlayer = HumanoidRootPart:WaitForChild("user")
local ActiveFolder = Workspace:FindFirstChild("active")
local FishingZonesFolder = Workspace:FindFirstChild("zones"):WaitForChild("fishing")
local TpSpotsFolder = Workspace:FindFirstChild("world"):WaitForChild("spawns"):WaitForChild("TpSpots")
local NpcFolder = Workspace:FindFirstChild("world"):WaitForChild("npcs")
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
local screenGui = Instance.new("ScreenGui", PlayerGui)
local shadowCountLabel = Instance.new("TextLabel", screenGui)
local RenderStepped = RunService.RenderStepped
local WaitForSomeone = RenderStepped.Wait

-- // // // Variables // // // --
local CastMode = "Blatant"
local ShakeMode = "Navigation"
local ReelMode = "Blatant"
local CollectMode = "Teleports"
local teleportSpots = {}
local FreezeChar = false
local DayOnlyLoop = nil
local BypassGpsLoop = nil
local Noclip = false
local RunCount = false

-- // TABLE FILLER // --
for i, v in pairs(TpSpotsFolder:GetChildren()) do
    if table.find(teleportSpots, v.Name) == nil then
        table.insert(teleportSpots, v.Name)
    end
end

table.sort(teleportSpots, function(a, b)
    return a:lower() < b:lower()
end)

-- // // // Functions // // // --
function ShowNotification(String)
    Fluent:Notify({
        Title = "Tester Taijitu",
        Content = String,
        Duration = 5
    })
end

game.Players.LocalPlayer.Idled:Connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
end)

spawn(function()
    while true do
        game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("afk"):FireServer(false)
        task.wait(0.01)
    end
end)


 -- // // // Noclip Stepped // // // --
 NoclipConnection = RunService.Stepped:Connect(function()
    if Noclip == true then
        if LocalCharacter ~= nil then
            for i, v in pairs(LocalCharacter:GetDescendants()) do
                if v:IsA("BasePart") and v.CanCollide == true then
                    v.CanCollide = false
                end
            end
        end
    end
end)

-- // // // Auto Cast // // // --
local autoCastEnabled = false
local function autoCast()
    if LocalCharacter then
        local tool = LocalCharacter:FindFirstChildOfClass("Tool")
        if tool then
            local hasBobber = tool:FindFirstChild("bobber")
            if not hasBobber then
                if CastMode == "Legit" then
                    VirtualInputManager:SendMouseButtonEvent(0, 0, 0, true, LocalPlayer, 0)
                    HumanoidRootPart.ChildAdded:Connect(function()
                        if HumanoidRootPart:FindFirstChild("power") ~= nil and HumanoidRootPart.power.powerbar.bar ~= nil then
                            HumanoidRootPart.power.powerbar.bar.Changed:Connect(function(property)
                                if property == "Size" then
                                    if HumanoidRootPart.power.powerbar.bar.Size == UDim2.new(1, 0, 1, 0) then
                                        VirtualInputManager:SendMouseButtonEvent(0, 0, 0, false, LocalPlayer, 0)
                                    end
                                end
                            end)
                        end
                    end)
                elseif CastMode == "Blatant" then
                    local rod = LocalCharacter and LocalCharacter:FindFirstChildOfClass("Tool")
                    if rod and rod:FindFirstChild("values") and string.find(rod.Name, "Rod") then
                        task.wait(0.5)
                        local Random = math.random(90, 99)
                        rod.events.cast:FireServer(Random)
                    end
                end
            end
        end
        task.wait(0.5)
    end
end


-- // // // Auto Shake // // // --
local autoShakeEnabled = true
local autoShakeConnection
local function autoShake()
    if ShakeMode == "Navigation" then
        task.wait()
        xpcall(function()
            local shakeui = PlayerGui:FindFirstChild("shakeui")
            if not shakeui then return end
            local safezone = shakeui:FindFirstChild("safezone")
            local button = safezone and safezone:FindFirstChild("button")
            task.wait(0.1)
            GuiService.SelectedObject = button
            if GuiService.SelectedObject == button then
                VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
                VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
            end
            task.wait(0.1)
            GuiService.SelectedObject = nil
        end,function (err)
        end)
    elseif ShakeMode == "Mouse" then
        task.wait()
        xpcall(function()
            local shakeui = PlayerGui:FindFirstChild("shakeui")
            if not shakeui then return end
            local safezone = shakeui:FindFirstChild("safezone")
            local button = safezone and safezone:FindFirstChild("button")
            local pos = button.AbsolutePosition
            local size = button.AbsoluteSize
            VirtualInputManager:SendMouseButtonEvent(pos.X + size.X / 2, pos.Y + size.Y / 2, 0, true, LocalPlayer, 0)
            VirtualInputManager:SendMouseButtonEvent(pos.X + size.X / 2, pos.Y + size.Y / 2, 0, false, LocalPlayer, 0)
            task.wait(0.03)
        end,function (err)
        end)
    end
end

local function startAutoShake()
    if autoShakeConnection or not autoShakeEnabled then return end
    autoShakeConnection = RunService.RenderStepped:Connect(autoShake)
end

local function stopAutoShake()
    if autoShakeConnection then
        autoShakeConnection:Disconnect()
        autoShakeConnection = nil
    end
end

PlayerGui.DescendantAdded:Connect(function(descendant)
    if autoShakeEnabled and descendant.Name == "button" and descendant.Parent and descendant.Parent.Name == "safezone" then
        startAutoShake()
    end
end)

PlayerGui.DescendantAdded:Connect(function(descendant)
    if descendant.Name == "playerbar" and descendant.Parent and descendant.Parent.Name == "bar" then
        stopAutoShake()
    end
end)

if autoShakeEnabled and PlayerGui:FindFirstChild("shakeui") and PlayerGui.shakeui:FindFirstChild("safezone") and PlayerGui.shakeui.safezone:FindFirstChild("button") then
    startAutoShake()
end


-- // // // Auto Reel // // // --
local autoReelEnabled = true
local PerfectCatchEnabled = true
local autoReelConnection
local function autoReel()
    local reel = PlayerGui:FindFirstChild("reel")
    if not reel then return end
    local bar = reel:FindFirstChild("bar")
    local playerbar = bar and bar:FindFirstChild("playerbar")
    local fish = bar and bar:FindFirstChild("fish")
    if playerbar and fish then
        playerbar.Position = fish.Position
    end
end

local function noperfect()
    local reel = PlayerGui:FindFirstChild("reel")
    if not reel then return end
    local bar = reel:FindFirstChild("bar")
    local playerbar = bar and bar:FindFirstChild("playerbar")
    if playerbar then
        playerbar.Position = UDim2.new(0, 0, -35, 0)
        wait(0.5)
    end
end

local function startAutoReel()
    if ReelMode == "Legit" then
        if autoReelConnection or not autoReelEnabled then return end
        -- noperfect()
        task.wait(2)
        autoReelConnection = RunService.RenderStepped:Connect(autoReel)
    elseif ReelMode == "Blatant" then
        local reel = PlayerGui:FindFirstChild("reel")
        if not reel then return end
        local bar = reel:FindFirstChild("bar")
        local playerbar = bar and bar:FindFirstChild("playerbar")
        playerbar:GetPropertyChangedSignal('Position'):Wait()
        game.ReplicatedStorage:WaitForChild("events"):WaitForChild("reelfinished"):FireServer(100, PerfectCatchEnabled)
    end
end

local function stopAutoReel()
    if autoReelConnection then
        autoReelConnection:Disconnect()
        autoReelConnection = nil
    end
end

PlayerGui.DescendantAdded:Connect(function(descendant)
    if autoReelEnabled and descendant.Name == "playerbar" and descendant.Parent and descendant.Parent.Name == "bar" then
        startAutoReel()
    end
end)

PlayerGui.DescendantRemoving:Connect(function(descendant)
    if descendant.Name == "playerbar" and descendant.Parent and descendant.Parent.Name == "bar" then
        stopAutoReel()
        if autoCastEnabled then
            task.wait(1)
            autoCast()
        end
    end
end)

if autoReelEnabled and PlayerGui:FindFirstChild("reel") and 
    PlayerGui.reel:FindFirstChild("bar") and 
    PlayerGui.reel.bar:FindFirstChild("playerbar") then
    startAutoReel()
end


function SellAll()
    local sellAllFunction = game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("SellAll")
    local result = sellAllFunction:InvokeServer()
end

function Enchant()
    game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("enchant"):InvokeServer()
end

local timeLabel = Home:CreateLabel(elapsed_time, "heart", Color3.fromRGB(255, 255, 255), false)

-- // // // // // AUTO FISH SECTION // // // // // --
local autoFishSection = Main:CreateSection("Auto Fishing Toggles")
local autoFish = Main:CreateToggle({
   Name = "Auto Fish",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(Value)
        local RodName = ReplicatedStorage.playerstats[LocalPlayer.Name].Stats.rod.Value
        if Value == true then
            autoCastEnabled = true
            if LocalPlayer.Backpack:FindFirstChild(RodName) then
                LocalPlayer.Character.Humanoid:EquipTool(LocalPlayer.Backpack:FindFirstChild(RodName))
            end
            if LocalCharacter then
                local tool = LocalCharacter:FindFirstChildOfClass("Tool")
                if tool then
                    local hasBobber = tool:FindFirstChild("bobber")
                    if not hasBobber then
                        if CastMode == "Legit" then
                            VirtualInputManager:SendMouseButtonEvent(0, 0, 0, true, LocalPlayer, 0)
                            HumanoidRootPart.ChildAdded:Connect(function()
                                if HumanoidRootPart:FindFirstChild("power") ~= nil and HumanoidRootPart.power.powerbar.bar ~= nil then
                                    HumanoidRootPart.power.powerbar.bar.Changed:Connect(function(property)
                                        if property == "Size" then
                                            if HumanoidRootPart.power.powerbar.bar.Size == UDim2.new(1, 0, 1, 0) then
                                                VirtualInputManager:SendMouseButtonEvent(0, 0, 0, false, LocalPlayer, 0)
                                            end
                                        end
                                    end)
                                end
                            end)
                        elseif CastMode == "Blatant" then
                            local rod = LocalCharacter and LocalCharacter:FindFirstChildOfClass("Tool")
                            if rod and rod:FindFirstChild("values") and string.find(rod.Name, "Rod") then
                                task.wait(0.5)
                                local Random = math.random(90, 99)
                                rod.events.cast:FireServer(Random)
                            end
                        end
                    end
                end
                task.wait(1)
            end
        else
            autoCastEnabled = false
        end
    end,
})


local autoFish = Main:CreateToggle({
    Name = "Auto Shake",
    CurrentValue = false,
    Flag = "Toggle2",
    Callback = function(Value)
        if Value == true then
            autoShakeEnabled = true
            startAutoShake()
        else
            autoShakeEnabled = false
            stopAutoShake()
        end
    end,
 })

 local autoFish = Main:CreateToggle({
    Name = "Auto Reel",
    CurrentValue = false,
    Flag = "Toggle3",
    Callback = function(Value)
        if Value == true then
            autoReelEnabled = true
            startAutoReel()
        else
            autoReelEnabled = false
            stopAutoReel()
        end
    end,
 })

 local autoFish = Main:CreateToggle({
    Name = "Freeze Character",
    CurrentValue = false,
    Flag = "Toggle4",
    Callback = function(Value)
        local oldpos = HumanoidRootPart.CFrame
        FreezeChar = Value
        task.wait()
        while WaitForSomeone(RenderStepped) do
            if FreezeChar and HumanoidRootPart ~= nil then
                task.wait()
                HumanoidRootPart.CFrame = oldpos
            else
                break
            end
        end
    end,
 })

 local autoFishSection = Main:CreateSection("Auto Fishing Modes")
local Dropdown = Main:CreateDropdown({
    Name = "Auto Cast Mode",
    Options = {"Legit", "Blatant"},
    CurrentOption = {CastMode},
    MultipleOptions = false, -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(CurrentOption)
        print(CurrentOption[1])
        CastMode = CurrentOption[1]
     end,
 })

 local Dropdown = Main:CreateDropdown({
    Name = "Auto Shake Mode",
    Options = {"Navigation", "Mouse"},
    CurrentOption = {ShakeMode},
    MultipleOptions = false, -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(CurrentOption)
        ShakeMode = CurrentOption[1]
     end,
 })

 local Dropdown = Main:CreateDropdown({
    Name = "Auto Reel Mode",
    Options = {"Legit", "Blatant"},
    CurrentOption = {CastMode},
    MultipleOptions = false, -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(CurrentOption)
        ReelMode = CurrentOption[1]
     end,
 })

local autoFishSection = Main:CreateSection("Auto Totems")

local autoSundial = Main:CreateToggle({
    Name = "Auto Sundial Totem",
    CurrentValue = false,
    Callback = function(Value)
        while Value do
            for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v.Name == "Sundial Totem" then
                    -- Equip the Sundial Totem if found
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                    VirtualInputManager:SendMouseButtonEvent(0, 0, 0, true, LocalPlayer, 0)
                    break
                end
            end

            task.wait(25)
        end   
    end,
 })

local autoAuroraSun = Main:CreateToggle({
    Name = "Auto Aurora Totem",
    CurrentValue = false,
    Callback = function(Value)
        while Value do

            autoCastEnabled = false;
            task.wait(5)

            -- Check if the "Sundial Totem" exists in the player's backpack
            for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v.Name == "Sundial Totem" then
                    -- Equip the Sundial Totem if found
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                    VirtualInputManager:SendMouseButtonEvent(0, 0, 0, true, LocalPlayer, 0)
                    break
                end
            end

            task.wait(25)

            for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v.Name == "Aurora Totem" then
                    -- Equip the Sundial Totem if found
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                    VirtualInputManager:SendMouseButtonEvent(0, 0, 0, true, LocalPlayer, 0)
                    break
                end
            end

            task.wait(5)

            local RodName = ReplicatedStorage.playerstats[LocalPlayer.Name].Stats.rod.Value
            autoCastEnabled = true
            if LocalPlayer.Backpack:FindFirstChild(RodName) then
                LocalPlayer.Character.Humanoid:EquipTool(LocalPlayer.Backpack:FindFirstChild(RodName))
            end
            if LocalCharacter then
                local tool = LocalCharacter:FindFirstChildOfClass("Tool")
                if tool then
                    local hasBobber = tool:FindFirstChild("bobber")
                    if not hasBobber then
                        local rod = LocalCharacter and LocalCharacter:FindFirstChildOfClass("Tool")
                        if rod and rod:FindFirstChild("values") and string.find(rod.Name, "Rod") then
                            task.wait(0.5)
                            local Random = math.random(90, 99)
                            rod.events.cast:FireServer(Random)
                        end
                    end
                end
                task.wait(1)
            end
            
            while not isTimeBetween("06:00:00", "07:00:00") do
                task.wait(1) -- Check every second
            end

            autoCastEnabled = false;

        end
        autoCastEnabled = false;
    end,
 })




  -- // // // TELEPORT SECTION // // // --
Teleports:CreateSection("Quick Teleports")
Teleports:CreateButton({
    Name = "Teleport Grand Reef",
    Callback = function()
        HumanoidRootPart.CFrame = CFrame.new(-3576.1, 151.2, 525.8)
    end,
})

 Teleports:CreateButton({
    Name = "Teleport Cryogenic Canal",
    Callback = function()
        HumanoidRootPart.CFrame = CFrame.new(20023.6,512.4,5431)
    end,
 })


 Teleports:CreateSection("Teleport zones")
 local Dropdown = Main:CreateDropdown({
    Name = "Auto Shake Mode",
    Options = {"Navigation", "Mouse"},
    CurrentOption = {ShakeMode},
    MultipleOptions = false, -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(CurrentOption)
        ShakeMode = CurrentOption[1]
     end,
 })

local setTPSpot = nil
local IslandTPDropdownUI = Teleports:CreateDropdown({
    Name = "Teleport Spawns",
    Options = teleportSpots,
    CurrentOption = nil,
    MultipleOptions = false,
    Callback = function(CurrentOption)
        setTPSpot = CurrentOption[1]
     end,
})

Teleports:CreateButton({
    Name = "Teleport",
    Callback = function()
        HumanoidRootPart.CFrame = TpSpotsFolder:FindFirstChild(setTPSpot).CFrame + Vector3.new(0, 5, 0)
        IslandTPDropdownUI:SetValue(nil)
    end,
 })

Teleports:CreateSection("Totem Teleports")
Teleports:CreateDropdown({
    Name = "Select Totem",
    Options = {"Aurora", "Sundial", "Windset", "Smokescreen", "Tempest"},
    CurrentOption = nil,
    MultipleOptions = false,
    Callback = function(CurrentOption)
        SelectedTotem = CurrentOption[1]
     end,
})
Teleports:CreateButton({
    Name = "Teleport",
    Callback = function()
    if SelectedTotem == "Aurora" then
        HumanoidRootPart.CFrame = CFrame.new(-1811, -137, -3282)
        TotemTPDropdownUI:SetValue(nil)
    elseif SelectedTotem == "Sundial" then
        HumanoidRootPart.CFrame = CFrame.new(-1148, 135, -1075)
        TotemTPDropdownUI:SetValue(nil)
    elseif SelectedTotem == "Windset" then
        HumanoidRootPart.CFrame = CFrame.new(2849, 178, 2702)
        TotemTPDropdownUI:SetValue(nil)
    elseif SelectedTotem == "Smokescreen" then
        HumanoidRootPart.CFrame = CFrame.new(2789, 140, -625)
        TotemTPDropdownUI:SetValue(nil)
    elseif SelectedTotem == "Tempest" then
        HumanoidRootPart.CFrame = CFrame.new(35, 133, 1943)
        TotemTPDropdownUI:SetValue(nil)
    end
    end,
 })

Teleports:CreateSection("Event Teleports")
Teleports:CreateDropdown({
    Name = "Select Event",
    Options = {"Strange Whirlpool", "Great Hammerhead Shark", "Great White Shark", "Whale Shark", "The Depths - Serpent","Golden Tide","Ancient Algae"},
    CurrentOption = nil,
    MultipleOptions = false,
    Callback = function(CurrentOption)
        SelectedWorldEvent = CurrentOption[1]
     end,
})
Teleports:CreateButton({
    Name = "Teleport",
    Callback = function()
        if SelectedWorldEvent == "Strange Whirlpool" then
            local offset = Vector3.new(25, 135, 25)
            local WorldEvent = game.Workspace.zones.fishing:FindFirstChild("Isonade")
            if not WorldEvent then WorldEventTPDropdownUI:SetValue(nil) return ShowNotification("Not found Strange Whirlpool") end
            HumanoidRootPart.CFrame = CFrame.new(game.Workspace.zones.fishing.Isonade.Position + offset)                           -- Strange Whirlpool
            WorldEventTPDropdownUI:SetValue(nil)
        elseif SelectedWorldEvent == "Great Hammerhead Shark" then
            local offset = Vector3.new(0, 135, 0)
            local WorldEvent = game.Workspace.zones.fishing:FindFirstChild("Great Hammerhead Shark")
            if not WorldEvent then WorldEventTPDropdownUI:SetValue(nil) return ShowNotification("Not found Great Hammerhead Shark") end
            HumanoidRootPart.CFrame = CFrame.new(game.Workspace.zones.fishing["Great Hammerhead Shark"].Position + offset)         -- Great Hammerhead Shark
            WorldEventTPDropdownUI:SetValue(nil)
        elseif SelectedWorldEvent == "Great White Shark" then
            local offset = Vector3.new(0, 135, 0)
            local WorldEvent = game.Workspace.zones.fishing:FindFirstChild("Great White Shark")
            if not WorldEvent then WorldEventTPDropdownUI:SetValue(nil) return ShowNotification("Not found Great White Shark") end
            HumanoidRootPart.CFrame = CFrame.new(game.Workspace.zones.fishing["Great White Shark"].Position + offset)               -- Great White Shark
            WorldEventTPDropdownUI:SetValue(nil)
        elseif SelectedWorldEvent == "Whale Shark" then
            local offset = Vector3.new(0, 135, 0)
            local WorldEvent = game.Workspace.zones.fishing:FindFirstChild("Whale Shark")
            if not WorldEvent then WorldEventTPDropdownUI:SetValue(nil) return ShowNotification("Not found Whale Shark") end
            HumanoidRootPart.CFrame = CFrame.new(game.Workspace.zones.fishing["Whale Shark"].Position + offset)                     -- Whale Shark
            WorldEventTPDropdownUI:SetValue(nil)
        elseif SelectedWorldEvent == "The Depths - Serpent" then
            local offset = Vector3.new(0, 50, 0)
            local WorldEvent = game.Workspace.zones.fishing:FindFirstChild("The Depths - Serpent")
            if not WorldEvent then WorldEventTPDropdownUI:SetValue(nil) return ShowNotification("Not found The Depths - Serpent") end
            HumanoidRootPart.CFrame = CFrame.new(game.Workspace.zones.fishing["The Depths - Serpent"].Position + offset)            -- The Depths - Serpent
            WorldEventTPDropdownUI:SetValue(nil)
        elseif SelectedWorldEvent == "Golden Tide" then
            local offset = Vector3.new(25, 135, 25)
            local WorldEvent = game.Workspace.zones.fishing:FindFirstChild("Golden Tide")
            if not WorldEvent then WorldEventTPDropdownUI:SetValue(nil) return ShowNotification("Not found Eternal Frostwhale") end
            HumanoidRootPart.CFrame = CFrame.new(game.Workspace.zones.fishing["Golden Tide"].Position + offset)            -- Eternal Frostwhale
            WorldEventTPDropdownUI:SetValue(nil)
        elseif SelectedWorldEvent == "Ancient Algae" then
            local offset = Vector3.new(25, 135, 25)
            local WorldEvent = game.Workspace.zones.fishing:FindFirstChild("Ancient Algae")
            if not WorldEvent then WorldEventTPDropdownUI:SetValue(nil) return ShowNotification("Not found Ancient Algae") end
            HumanoidRootPart.CFrame = CFrame.new(game.Workspace.zones.fishing["Ancient Algae"].Position + offset)            -- Ancient Algae
            WorldEventTPDropdownUI:SetValue(nil)
        end
    end,
 })


 Teleports:CreateSection("Extras")
 Teleports:CreateButton({
    Name = "Create Safe Zone",
    Callback = function()
        local SafeZone = Instance.new("Part")
        SafeZone.Size = Vector3.new(30, 1, 30)
        SafeZone.Position = Vector3.new(math.random(-2000,2000), math.random(50000,90000), math.random(-2000,2000))
        SafeZone.Anchored = true
        SafeZone.BrickColor = BrickColor.new("Bright purple")
        SafeZone.Material = Enum.Material.ForceField
        SafeZone.Parent = game.Workspace
        HumanoidRootPart.CFrame = SafeZone.CFrame + Vector3.new(0, 5, 0)
    end
 })



Taiji:CreateSection("Taiji Movement")
Taiji:CreateToggle({
    Name = "Walk On Water",
    CurrentValue = false,
    Callback = function(Value)
        for i,v in pairs(workspace.zones.fishing:GetChildren()) do
            v.CanCollide = Value       
        end
    end,
 })

 Taiji:CreateSlider({
    Name = "Walk Speed",
    Range = {0, 500},
    Increment = 1,
    CurrentValue = 16,
    Callback = function(Value)
        LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end,
 })

Taiji:CreateSlider({
    Name = "Jump Height",
    Range = {0, 500},
    Increment = 1,
    CurrentValue = 50,
    Callback = function(Value)
        LocalPlayer.Character.Humanoid.JumpPower = Value
    end,
 })


Taiji:CreateToggle({
    Name = "No Clip", 
    CurrentValue = false,
    Callback = function(Value)
        Noclip = Value
    end,
})

Taiji:CreateSection("Taiji Vitals")
Taiji:CreateToggle({
    Name = "Disable Water Oxygen", 
    CurrentValue = false,
    Callback = function(Value)
        LocalPlayer.Character.client.oxygen.Disabled = Value
    end,
})

Taiji:CreateToggle({
    Name = "Disable Peak Oxygen", 
    CurrentValue = false,
    Callback = function(Value)
        LocalPlayer.Character.client:FindFirstChild("oxygen(peaks)").Disabled = Value
    end,
})

Taiji:CreateToggle({
    Name = "Disable Temperature", 
    CurrentValue = false,
    Callback = function(Value)
        LocalPlayer.Character.client.temperature.Disabled = Value
    end,
})


Shop:CreateSection("Sell Section")
Shop:CreateToggle({
    Name = "Auto sell fisch every 3 minutes",
    CurrentValue = false,
    Callback = function(Value)
        while Value == true do
            SellAll()
            wait(180)
            if not Value then
                return
            end
        end
    end,
 })

 Shop:CreateButton({
    Name = "Sell All",
    Callback = function()
        SellAll()
    end,
 })

 Shop:CreateSection("Treasure Section")
 Shop:CreateButton({
    Name = "Teleport to Jack Marrow",
    Callback = function()
        HumanoidRootPart.CFrame = CFrame.new(256,133,59.6)
    end,
 })

 Shop:CreateButton({
    Name = "Repair Map",
    Callback = function()
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
            if v.Name == "Treasure Map" then
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                workspace:WaitForChild("world"):WaitForChild("npcs"):WaitForChild("Jack Marrow"):WaitForChild("treasure"):WaitForChild("repairmap"):InvokeServer()
            end
        end
    end,
 })

 Shop:CreateButton({
    Name = "Collect Treasure",
    Callback = function()
        for i, v in ipairs(game:GetService("Workspace"):GetDescendants()) do
            if v.ClassName == "ProximityPrompt" then
                v.HoldDuration = 0.2
            end
        end
        for i, v in pairs(workspace.world.chests:GetDescendants()) do
            if v:IsA("Part") and v:FindFirstChild("ChestSetup") then 
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                for _, v in pairs(workspace.world.chests:GetDescendants()) do
                    if v.Name == "ProximityPrompt" then
                        fireproximityprompt(v)
                    end
                end
                task.wait(2)
            end 
        end
    end,
 })

 local relicAmount = 1
 local Input = Shop:CreateInput({
    Name = "Input Amount Of Enchant Relics",
    CurrentValue = "1",
    PlaceholderText = "Enter Here",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        local value = tonumber(Text)
        if value and value > 0 then
            relicAmount = value
        else
            warn("Invalid input! Please enter a positive number.")
        end
    end,
 })
 Shop:CreateButton({
    Name = "Purchase Enchant Relics",
    Callback = function()
        local holder = relicAmount
        while holder > 0 do
            workspace:WaitForChild("world"):WaitForChild("npcs"):WaitForChild("Merlin")
                :WaitForChild("Merlin"):WaitForChild("power"):InvokeServer()
            wait(2) 
            holder -= 1
        end
        print("Finished purchasing relics.")
    end,
 })


while true do
    elapsed_time = os.difftime(os.time(), start_time) -- Calculate elapsed time
    timeLabel:Set("Time Elapsed: " .. elapsed_time .. " seconds", "heart", Color3.fromRGB(255, 255, 255), false)
    wait(1) -- Pause for 1 second
end