local Players = game:GetService("Players")
local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "FREE_54"
gui.ResetOnSpawn = false
gui.Parent = game:GetService("CoreGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 240, 0, 250)
frame.Position = UDim2.new(0.5, -120, 0.5, -125)
frame.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
frame.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 15)
corner.Parent = frame

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(255, 0, 0)
stroke.Thickness = 2
stroke.Parent = frame

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 45)
title.BackgroundTransparency = 1
title.Text = "FREE_54"
title.TextColor3 = Color3.fromRGB(255, 0, 0)
title.TextSize = 25
title.Parent = frame

local coins = 0
local running = false

local counter = Instance.new("TextLabel")
counter.Position = UDim2.new(0, 0, 0, 65)
counter.Size = UDim2.new(1, 0, 0, 35)
counter.BackgroundTransparency = 1
counter.Text = "Coins: 0"
counter.TextColor3 = Color3.new(1, 1, 1)
counter.TextSize = 18
counter.Parent = frame

local function makeButton(name, y, callback)
    local b = Instance.new("TextButton")
    b.Size = UDim2.new(0.8, 0, 0, 40)
    b.Position = UDim2.new(0.1, 0, 0, y)
    b.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
    b.Text = name
    b.TextColor3 = Color3.new(1, 1, 1)
    b.TextSize = 17
    b.Parent = frame

    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, 10)
    c.Parent = b

    b.MouseButton1Click:Connect(callback)
end

makeButton("START", 115, function()
    running = true
    counter.Text = "FARMING..."
end)

makeButton("STOP", 165, function()
    running = false
    counter.Text = "STOPPED"
end)

print("FREE_54 loaded")
