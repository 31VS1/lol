local ScreenGui = Instance.new("ScreenGui", game:GetService("CoreGui"))
local arrayFrame = Instance.new("Frame", ScreenGui) 

arrayFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
arrayFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
arrayFrame.BorderSizePixel = 0
arrayFrame.Position = UDim2.new(0.87, 0, 0, 0)
arrayFrame.Size = UDim2.new(0, 452, 0, 452)

local Grid = Instance.new("UIGridLayout", arrayFrame)
Grid.CellPadding = UDim2.new(0, 0, 0.0001, 0)
Grid.SortOrder = Enum.SortOrder.LayoutOrder
Grid.CellSize = UDim2.new(1, 0, 0.0275, 0)
Grid.HorizontalAlignment = Enum.HorizontalAlignment.Left

local Arraylist = {
    Add = function(Name, Suffix)
        local Text = Instance.new("TextLabel", arrayFrame)
        local newName = Suffix and (Name .. " | " .. Suffix) or Name
        
        Text.Name = Name
        Text.BackgroundTransparency = 1
        Text.Size = UDim2.new(1, 0, 0.0275, 0)
        Text.Font = Enum.Font.Gotham
        Text.TextSize = 14 
        Text.Text = newName
        Text.TextXAlignment = Enum.TextXAlignment.Left 
        Text.TextColor3 = Color3.fromRGB(255, 65, 65)
        Text.TextStrokeTransparency = 0.75
        
        local size = game:GetService("TextService"):GetTextSize(newName, Text.TextSize, Text.Font, Vector2.new(1000000, 1000000))
        Text.LayoutOrder = -size.X
        
        Text.Destroying:Connect(function()
            Text = nil
        end)
    end,
    Remove = function(Name)
        local child = arrayFrame:FindFirstChild(Name)
        if child then
            child:Destroy()
        end
    end,
}
