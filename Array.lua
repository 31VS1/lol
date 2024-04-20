local ArrayList = Instance.new("ScreenGui")
local Invis = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
ArrayList.Name = "ArrayList"
ArrayList.Parent = game:GetService("CoreGui")
Invis.Name = "Invis"
Invis.Parent = ArrayList
Invis.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Invis.BackgroundTransparency = 1.000
Invis.Position = UDim2.new(0.854881287, 0, 0, 0)
Invis.Size = UDim2.new(0, 220, 0, 627)
UIListLayout.Parent = Invis
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right

function AddModule(name)
    local Module = Instance.new("TextLabel")
    Module.Name = name
    Module.Parent = Invis
    Module.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Module.BackgroundTransparency = 1.000
    Module.Position = UDim2.new(0.0181818176, 0, 0, 0)
    Module.Size = UDim2.new(0, 200, 0, 50)
    Module.Font = Enum.Font.SourceSans
    Module.Text = name
    Module.TextColor3 = Color3.fromRGB(255, 128, 16)
    Module.TextSize = 29.000
end
function RemoveModule(name)
    if Invis:FindFirstChild(name) then
        Invis:FindFirstChild(name):Remove()
    end
end
