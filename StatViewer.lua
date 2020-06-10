
-- Gui to Lua
-- Version: 3.2

-- Instances:
local KenOmegaStatViewer = Instance.new("ScreenGui")
local Body = Instance.new("Frame")
local Close = Instance.new("TextButton")
local UIGradient = Instance.new("UIGradient")
local Durability = Instance.new("TextLabel")
local Stamina = Instance.new("TextLabel")
local Speed = Instance.new("TextLabel")
local textDura = Instance.new("TextLabel")
local textStam = Instance.new("TextLabel")
local textSpeed = Instance.new("TextLabel")
local closesound = Instance.new("Sound")

--Properties:

local lChar  = game:GetService("Players").LocalPlayer.Character
local player = game:GetService("Players").LocalPlayer

KenOmegaStatViewer.Name = "KenOmegaStatViewer"
KenOmegaStatViewer.Parent = game:GetService("CoreGui")
KenOmegaStatViewer.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

closesound.Name = "Sound"
closesound.Parent = KenOmegaStatViewer
closesound.SoundId =  "rbxassetid://903267862"

Body.Name = "Body"
Body.Parent = KenOmegaStatViewer
Body.Active = true
Body.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Body.Position = UDim2.new(0.604437649, 0, 0.241776317, 0)
Body.Selectable = true
Body.Size = UDim2.new(0, 154, 0, 235)

Close.Name = "Close"
Close.Parent = Body
Close.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.795918345, 0, 0, 0)
Close.Size = UDim2.new(0, 30, 0, 30)
Close.Style = Enum.ButtonStyle.RobloxRoundButton
Close.Font = Enum.Font.SourceSans
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextSize = 14.000
Close.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(110, 197, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 193, 193))}
UIGradient.Parent = Body

Durability.Name = "Durability"
Durability.Parent = Body
Durability.BackgroundColor3 = Color3.fromRGB(180, 180, 180)
Durability.BorderSizePixel = 5
Durability.Position = UDim2.new(0.10111317, 0, 0.217603996, 0)
Durability.Size = UDim2.new(0, 122, 0, 34)
Durability.Font = Enum.Font.Arial
Durability.Text = "0"
Durability.TextColor3 = Color3.fromRGB(255, 255, 255)
Durability.TextScaled = true
Durability.TextSize = 14.000
Durability.TextWrapped = true

Stamina.Name = "Stamina"
Stamina.Parent = Body
Stamina.BackgroundColor3 = Color3.fromRGB(180, 180, 180)
Stamina.BorderSizePixel = 5
Stamina.Position = UDim2.new(0.100803956, 0, 0.514934242, 0)
Stamina.Size = UDim2.new(0, 122, 0, 34)
Stamina.Font = Enum.Font.Arial
Stamina.Text = "0"
Stamina.TextColor3 = Color3.fromRGB(255, 255, 255)
Stamina.TextScaled = true
Stamina.TextSize = 14.000
Stamina.TextWrapped = true

Speed.Name = "Speed"
Speed.Parent = Body
Speed.BackgroundColor3 = Color3.fromRGB(180, 180, 180)
Speed.BorderSizePixel = 5
Speed.Position = UDim2.new(0.10111317, 0, 0.800000012, 0)
Speed.Size = UDim2.new(0, 122, 0, 34)
Speed.Font = Enum.Font.Arial
Speed.Text = "0"
Speed.TextColor3 = Color3.fromRGB(255, 255, 255)
Speed.TextScaled = true
Speed.TextSize = 14.000
Speed.TextWrapped = true

textDura.Name = "textDura"
textDura.Parent = Body
textDura.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textDura.BackgroundTransparency = 1.000
textDura.Position = UDim2.new(0.0812505633, 0, 0.125487208, 0)
textDura.Size = UDim2.new(0, 122, 0, 22)
textDura.Font = Enum.Font.Cartoon
textDura.Text = "Durability"
textDura.TextColor3 = Color3.fromRGB(0, 0, 0)
textDura.TextScaled = true
textDura.TextSize = 14.000
textDura.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
textDura.TextStrokeTransparency = 0.000
textDura.TextWrapped = true

textStam.Name = "textStam"
textStam.Parent = Body
textStam.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textStam.BackgroundTransparency = 1.000
textStam.Position = UDim2.new(0.0815597773, 0, 0.389050603, 0)
textStam.Size = UDim2.new(0, 122, 0, 22)
textStam.Font = Enum.Font.Cartoon
textStam.Text = "Stamina"
textStam.TextColor3 = Color3.fromRGB(0, 0, 0)
textStam.TextScaled = true
textStam.TextSize = 14.000
textStam.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
textStam.TextStrokeTransparency = 0.000
textStam.TextWrapped = true

textSpeed.Name = "textSpeed"
textSpeed.Parent = Body
textSpeed.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textSpeed.BackgroundTransparency = 1.000
textSpeed.Position = UDim2.new(0.0750662684, 0, 0.691067815, 0)
textSpeed.Size = UDim2.new(0, 122, 0, 22)
textSpeed.Font = Enum.Font.Cartoon
textSpeed.Text = "Speed"
textSpeed.TextColor3 = Color3.fromRGB(0, 0, 0)
textSpeed.TextScaled = true
textSpeed.TextSize = 14.000
textSpeed.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
textSpeed.TextStrokeTransparency = 0.000
textSpeed.TextWrapped = true

-- Scripts:

function updateDurability()
    wait()
    Durability.Text = math.floor(lChar.Humanoid.MaxHealth * 1000)/1000
    
end

function updateStamina()
    wait()
Stamina.Text = math.floor(lChar.Stamina.Value * 1000)/1000
end

function updateSpeed()
    wait()
	Speed.Text = math.floor(lChar.Humanoid.WalkSpeed * 1000)/1000
end

local function UEHVG_fake_script() 
	local script = Instance.new('LocalScript', Close)

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Sound:Play()
		wait(.1)
		script.Parent.Parent.Parent:Destroy()
	end)
end
coroutine.wrap(UEHVG_fake_script)()
local function EPEM_fake_script() -- KenOmegaStatViewer.Drag 
	local script = Instance.new('LocalScript', KenOmegaStatViewer)

	script.Parent.Body.Draggable = true
end
coroutine.wrap(EPEM_fake_script)()

while true do
    wait()
    updateStamina()
    updateDurability()
    updateSpeed()
end
