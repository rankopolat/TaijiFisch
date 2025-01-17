local rodsConst = loadstring(game:HttpGet("https://raw.githubusercontent.com/rankopolat/TaijiFisch/refs/heads/main/rodsConst.lua"))()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Taiji v1.1",
    Icon = 0,
    LoadingTitle = "Taiji v1.1 interfacce",
    LoadingSubtitle = "by Taijitu",
    Theme = "Default",
 
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
local Taijitu_Additions = Window:CreateTab("Taiji","heart")
local Items = Window:CreateTab("Items","box")
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