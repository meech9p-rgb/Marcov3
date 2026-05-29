local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local LoadingBarBG = Instance.new("Frame")
local LoadingBar = Instance.new("Frame")
local LoadingText = Instance.new("TextLabel")
local UIGradient = Instance.new("UIGradient")

ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "MobileMarcoGUI"

MainFrame.Parent = ScreenGui
MainFrame.Size = UDim2.new(0, 350, 0, 180)
MainFrame.Position = UDim2.new(0.5, -175, 0.5, -90)
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)

UICorner.Parent = MainFrame
UICorner.CornerRadius = UDim.new(0, 18)

UIGradient.Parent = MainFrame
UIGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 170, 255)),
	ColorSequenceKeypoint.new(0.5, Color3.fromRGB(170, 0, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 85, 127))
}
UIGradient.Rotation = 45

Title.Parent = MainFrame
Title.Size = UDim2.new(1, 0, 0, 70)
Title.BackgroundTransparency = 1
Title.Text = "MOBLIE MARCO BY CHRIS"
Title.TextColor3 = Color3.fromRGB(255,255,255)
Title.Font = Enum.Font.GothamBold
Title.TextScaled = true

LoadingBarBG.Parent = MainFrame
LoadingBarBG.Size = UDim2.new(0.8, 0, 0, 25)
LoadingBarBG.Position = UDim2.new(0.1, 0, 0.62, 0)
LoadingBarBG.BackgroundColor3 = Color3.fromRGB(40,40,40)

local UICorner2 = Instance.new("UICorner")
UICorner2.Parent = LoadingBarBG
UICorner2.CornerRadius = UDim.new(0, 12)

LoadingBar.Parent = LoadingBarBG
LoadingBar.Size = UDim2.new(0, 0, 1, 0)
LoadingBar.BackgroundColor3 = Color3.fromRGB(0, 255, 170)

local UICorner3 = Instance.new("UICorner")
UICorner3.Parent = LoadingBar
UICorner3.CornerRadius = UDim.new(0, 12)

LoadingText.Parent = MainFrame
LoadingText.Size = UDim2.new(1, 0, 0, 30)
LoadingText.Position = UDim2.new(0, 0, 0.8, 0)
LoadingText.BackgroundTransparency = 1
LoadingText.Text = "Loading... 0%"
LoadingText.TextColor3 = Color3.fromRGB(255,255,255)
LoadingText.Font = Enum.Font.Gotham
LoadingText.TextScaled = true

for i = 1, 100 do
	LoadingBar.Size = UDim2.new(i/100, 0, 1, 0)
	LoadingText.Text = "Loading... "..i.."%"
	wait(0.6)
end

LoadingText.Text = "Loaded Successfully!"
wait(2)

ScreenGui:Destroy()
