-- GaG.lua GUI Version by Sophia 😎

local player = game.Players.LocalPlayer
local rs = game:GetService("ReplicatedStorage")
local coreGui = game:GetService("CoreGui")

local ScreenGui = Instance.new("ScreenGui", coreGui)
ScreenGui.Name = "SophiaHackUI"

local frame = Instance.new("Frame", ScreenGui)
frame.Size = UDim2.new(0, 200, 0, 250)
frame.Position = UDim2.new(0, 20, 0, 100)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 0

local UICorner = Instance.new("UICorner", frame)

local title = Instance.new("TextLabel", frame)
title.Text = "Sophia's Hack 🌚"
title.Size = UDim2.new(1, 0, 0, 30)
title.TextColor3 = Color3.new(1, 1, 1)
title.BackgroundTransparency = 1
title.Font = Enum.Font.GothamBold
title.TextSize = 18

local toggles = { Money = false, Farm = false, Grow = false, Sell = false }

local function createButton(name, posY)
    local btn = Instance.new("TextButton", frame)
    btn.Size = UDim2.new(1, -20, 0, 30)
    btn.Position = UDim2.new(0, 10, 0, posY)
    btn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    btn.TextColor3 = Color3.new(1, 1, 1)
    btn.Font = Enum.Font.Gotham
    btn.TextSize = 14
    btn.Text = name .. ": OFF"
    local corner = Instance.new("UICorner", btn)
    btn.MouseButton1Click:Connect(function()
        toggles[name] = not toggles[name]
        btn.Text = name .. ": " .. (toggles[name] and "ON" or "OFF")
    end)
end

createButton("Money", 40)
createButton("Farm", 80)
createButton("Grow", 120)
createButton("Sell", 160)

spawn(function()
    while true do
        if toggles.Money then
            local remote = rs:FindFirstChild("AddMoney")
            if remote then remote:FireServer(9999999) end
        end
        wait(0.3)
    end
end)

spawn(function()
    while true do
        if toggles.Farm then
            for _,plot in pairs(workspace.Plants:GetChildren()) do
                if plot:FindFirstChild("PlantSeed") then
                    plot.PlantSeed:FireServer("CandyBlossom")
                end
            end
        end
        wait(1)
    end
end)

spawn(function()
    while true do
        if toggles.Grow then
            for _,plant in pairs(workspace.Plants:GetChildren()) do
                if plant:FindFirstChild("Grow") then
                    plant.Grow:FireServer()
                end
            end
        end
        wait(1)
    end
end)

spawn(function()
    while true do
        if toggles.Sell then
            local sellRemote = rs:FindFirstChild("SellAll")
            if sellRemote then sellRemote:FireServer() end
        end
        wait(3)
    end
end)

print("✅ Sophia GUI Hack Loaded.")
