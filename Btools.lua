local player = game.Players.LocalPlayer
local mouse = player:GetMouse()

 -- Objects

local ScreenGui = Instance.new("ScreenGui")
local TextButton = Instance.new("TextButton")
local On = Instance.new("StringValue")

-- Properties

ScreenGui.Parent = player.PlayerGui

TextButton.Parent = ScreenGui
TextButton.BackgroundColor3 = Color3.new(0.784314, 0.784314, 0.784314)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0, 0, 0.455743879, 0)
TextButton.Size = UDim2.new(0, 186, 0, 35)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Btools (Off)"
TextButton.TextColor3 = Color3.new(0.27451, 0.27451, 0.27451)
TextButton.TextScaled = true
TextButton.TextSize = 14
TextButton.TextWrapped = true


On.Parent = TextButton
On.Value = "Off"

-- Scripts 

TextButton.MouseButton1Up:Connect(function()
    if On.Value == "Off" then
        On.Value = "On"
        TextButton.Text = "Btools (On)"
    else
        On.Value = "Off"
        TextButton.Text = "Btools (Off)"
    end
end)

mouse.Button1Up:Connect(function()
    if On.Value == "Off" then
        print('btools off')
    else
        if mouse.Target.Locked == true then
            mouse.Target:Destroy()
        else
            mouse.Target:Destroy()
        end
    end
end)
