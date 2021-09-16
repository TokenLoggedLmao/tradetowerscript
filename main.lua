-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Main")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local TextButton_3 = Instance.new("TextButton")
local TextBox = Instance.new("TextBox")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
Main.Position = UDim2.new(0.277361333, 0, 0.258895695, 0)
Main.Size = UDim2.new(0, 543, 0, 285)

Frame.Parent = Main
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.Position = UDim2.new(0.0389598086, 0, 0.177440539, 0)
Frame.Size = UDim2.new(0, 500, 0, 218)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
TextButton.Position = UDim2.new(0.0693493113, 0, 0.304086208, 0)
TextButton.Size = UDim2.new(0, 200, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "AutoFarm"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 14.000

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
TextButton_2.Position = UDim2.new(0.562500775, 0, 0.304086238, 0)
TextButton_2.Size = UDim2.new(0, 200, 0, 50)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "AutoUpgrade"
TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.TextSize = 14.000

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Position = UDim2.new(0.0011034552, 0, -0.182056636, 0)
TextLabel.Size = UDim2.new(0, 500, 0, 31)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Trade Tower AutoFarm"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextButton_3.Parent = ScreenGui
TextButton_3.BackgroundColor3 = Color3.fromRGB(68, 68, 68)
TextButton_3.Position = UDim2.new(0.350824594, 0, 0.501840472, 0)
TextButton_3.Size = UDim2.new(0, 347, 0, 50)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "ChatSpammer"
TextButton_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.TextScaled = true
TextButton_3.TextSize = 14.000
TextButton_3.TextWrapped = true

TextBox.Parent = ScreenGui
TextBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
TextBox.Position = UDim2.new(0.318590701, 0, 0.332515329, 0)
TextBox.Size = UDim2.new(0, 427, 0, 40)
TextBox.Font = Enum.Font.SourceSans
TextBox.Text = "This Script Was Developed By Tacs#0009"
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 14.000

AutoFarm.MouseButton1Down:connect(function()
		getgenv().autofarm = true

		while getgenv().autofarm do wait()
			game:GetService("ReplicatedStorage").Events.Click:FireServer("Click")
		end)

AutoUpgrade.MouseButton1Down:connect(function()
		getgenv().autoupgrade = true

		while getgenv().autoupgrade do wait()
			game:GetService("ReplicatedStorage").Events.StoreActions:InvokeServer("Upgrade")
		end)
		
ChatSpammer.MouseButton1Down:connect(function()		

		wait(1)
		local A_1 = "W ME | JOIN gg/dhc!"-----message here
		local A_2 = "All"
		local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
		Event:FireServer(A_1, A_2)

	end)
-- Scripts:

local function VBYD_fake_script() -- ScreenGui.Script 
	local script = Instance.new('Script', ScreenGui)

	frame = script.Parent.Main -- Take out {}s, and put name of frame
	frame.Draggable = true
	frame.Active = true
	frame.Selectable = true
end
coroutine.wrap(VBYD_fake_script)()
