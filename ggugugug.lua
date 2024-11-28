local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Slider = Instance.new("TextButton")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Size = UDim2.new(0.3, 0, 0.2, 0)
Frame.Position = UDim2.new(0.35, 0, 0.4, 0)
Frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Frame.Parent = ScreenGui

Slider.Size = UDim2.new(0.8, 0, 0.3, 0)
Slider.Position = UDim2.new(0.1, 0, 0.35, 0)
Slider.BackgroundColor3 = Color3.fromRGB(100, 100, 255)
Slider.Text = "Убить всех титанов"
Slider.TextColor3 = Color3.fromRGB(255, 255, 255)
Slider.Font = Enum.Font.SourceSans
Slider.TextScaled = true
Slider.Parent = Frame

local function killAllTitans()
    for _, entity in pairs(workspace:GetChildren()) do
        if entity:IsA("Model") and entity.Name == "Titan" then
            local humanoid = entity:FindFirstChildOfClass("Humanoid")
            if humanoid then
                humanoid.Health = 0
            end
        end
    end
end

Slider.MouseButton1Click:Connect(function()
    killAllTitans()
end)
