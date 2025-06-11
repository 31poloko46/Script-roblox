local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Toggle = Instance.new("TextButton")
local MoneyBox = Instance.new("TextBox")
local MoneyBtn = Instance.new("TextButton")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.Name = "SpeedHubGUI"

Main.Name = "Main"
Main.Parent = ScreenGui
Main.Size = UDim2.new(0, 300, 0, 250)
Main.Position = UDim2.new(0.3, 0, 0.3, 0)
Main.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Main.Active = true
Main.Draggable = true

Toggle.Name = "Toggle"
Toggle.Parent = ScreenGui
Toggle.Size = UDim2.new(0, 100, 0, 30)
Toggle.Position = UDim2.new(0, 10, 0, 10)
Toggle.Text = "Show/Hide"
Toggle.BackgroundColor3 = Color3.fromRGB(60, 60, 60)

Toggle.MouseButton1Click:Connect(function()
	Main.Visible = not Main.Visible
end)

MoneyBox.Parent = Main
MoneyBox.Size = UDim2.new(0, 180, 0, 30)
MoneyBox.Position = UDim2.new(0, 10, 0, 40)
MoneyBox.PlaceholderText = "Enter amount"
MoneyBox.Text = ""

MoneyBtn.Parent = Main
MoneyBtn.Size = UDim2.new(0, 180, 0, 30)
MoneyBtn.Position = UDim2.new(0, 10, 0, 80)
MoneyBtn.Text = "Add Money"

MoneyBtn.MouseButton1Click:Connect(function()
	local amount = tonumber(MoneyBox.Text)
	if amount then
		-- Example: replace with actual remote call
		print("Adding money:", amount)
	end
end)
