-- Speed Hub X Extended by Sophia (with Add Money + Toggle + Draggable UI)

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Create GUI elements
local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Toggle = Instance.new("TextButton")
local MoneyBox = Instance.new("TextBox")
local MoneyBtn = Instance.new("TextButton")

-- Parent the GUI
ScreenGui.Parent = Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.Name = "SpeedHubExtended"

-- Main frame (draggable)
Main.Name = "Main"
Main.Parent = ScreenGui
Main.Size = UDim2.new(0, 300, 0, 300)
Main.Position = UDim2.new(0.3, 0, 0.3, 0)
Main.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Main.Active = true
Main.Draggable = true
Main.Visible = true

-- Toggle button (show/hide)
Toggle.Name = "Toggle"
Toggle.Parent = ScreenGui
Toggle.Size = UDim2.new(0, 100, 0, 30)
Toggle.Position = UDim2.new(0, 10, 0, 10)
Toggle.Text = "Show/Hide"
Toggle.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)

Toggle.MouseButton1Click:Connect(function()
    Main.Visible = not Main.Visible
end)

-- Money input box
MoneyBox.Parent = Main
MoneyBox.Size = UDim2.new(0, 180, 0, 30)
MoneyBox.Position = UDim2.new(0, 10, 0, 40)
MoneyBox.PlaceholderText = "Enter amount"
MoneyBox.Text = ""
MoneyBox.TextColor3 = Color3.new(1, 1, 1)
MoneyBox.BackgroundColor3 = Color3.fromRGB(60, 60, 60)

-- Add Money button
MoneyBtn.Parent = Main
MoneyBtn.Size = UDim2.new(0, 180, 0, 30)
MoneyBtn.Position = UDim2.new(0, 10, 0, 80)
MoneyBtn.Text = "Add Money"
MoneyBtn.TextColor3 = Color3.new(1, 1, 1)
MoneyBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)

-- Button functionality
MoneyBtn.MouseButton1Click:Connect(function()
    local amount = tonumber(MoneyBox.Text)
    if amount and amount > 0 then
        -- Replace the next line with your game Money-adding remote/function
        -- Example:
        -- local addMoneyRem = ReplicatedStorage:FindFirstChild("AddMoney")
        -- if addMoneyRem then addMoneyRem:FireServer(amount) end
        
        print("[SpeedHubExtended] Adding money:", amount)
    end
end)
