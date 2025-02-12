local player = game.Players and game.Players.LocalPlayer
local tweenservice = game:GetService("TweenService")
local Mouse = player:GetMouse()
local UserInputService = game:GetService("UserInputService")
local Library = {}
local function MakeDraggable(topbarobject, object)
	local function CustomPos(topbarobject, object)
		local Dragging = nil
		local DragInput = nil
		local DragStart = nil
		local StartPosition = nil

		local function UpdatePos(input)
			local Delta = input.Position - DragStart
			local pos = UDim2.new(StartPosition.X.Scale, StartPosition.X.Offset + Delta.X, StartPosition.Y.Scale, StartPosition.Y.Offset + Delta.Y)
			object.Position = pos
		end

		topbarobject.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				Dragging = true
				DragStart = input.Position
				StartPosition = object.Position

				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						Dragging = false
					end
				end)
			end
		end)

		topbarobject.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				DragInput = input
			end
		end)

		UserInputService.InputChanged:Connect(function(input)
			if input == DragInput and Dragging then
				UpdatePos(input)
			end
		end)
	end
	local function CustomSize(object)
		local Dragging = false
		local DragInput = nil
		local DragStart = nil
		local StartSize = nil
		local maxSizeX = object.Size.X.Offset
		if maxSizeX < 400 then
			maxSizeX = 400
		end
		local maxSizeY = maxSizeX - 100
		object.Size = UDim2.new(0, maxSizeX, 0, maxSizeY)
		local changesizeobject = Instance.new("Frame");

		changesizeobject.AnchorPoint = Vector2.new(1, 1)
		changesizeobject.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		changesizeobject.BackgroundTransparency = 0.9990000128746033
		changesizeobject.BorderColor3 = Color3.fromRGB(0, 0, 0)
		changesizeobject.BorderSizePixel = 0
		changesizeobject.Position = UDim2.new(1, 20, 1, 20)
		changesizeobject.Size = UDim2.new(0, 40, 0, 40)
		changesizeobject.Name = "changesizeobject"
		changesizeobject.Parent = object

		local function UpdateSize(input)
			local Delta = input.Position - DragStart
			local newWidth = StartSize.X.Offset + Delta.X
			local newHeight = StartSize.Y.Offset + Delta.Y
			newWidth = math.max(newWidth, maxSizeX)
			newHeight = math.max(newHeight, maxSizeY)
			object.Size = UDim2.new(0, newWidth, 0, newHeight)
		end

		changesizeobject.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				Dragging = true
				DragStart = input.Position
				StartSize = object.Size
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						Dragging = false
					end
				end)
			end
		end)
		function setMidPos(screenGui, mainFrame)
			mainFrame.Position = UDim2.new(0, (screenGui.AbsoluteSize.X // 2 - mainFrame.Size.X.Offset // 2), 0, (screenGui.AbsoluteSize.Y // 2 - mainFrame.Size.Y.Offset // 2))
			return mainFrame.Position
		end
		
		changesizeobject.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				DragInput = input
			end
		end)

		UserInputService.InputChanged:Connect(function(input)
			if input == DragInput and Dragging then
				UpdateSize(input)
			end
		end)
	end
	CustomSize(object)
	CustomPos(topbarobject, object)
end
local function MouseTo(part)
	part.MouseEnter:Connect(function()
		tweenservice:Create(part, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.960}):Play()
	end)
	part.MouseLeave:Connect(function()
		tweenservice:Create(part, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.950}):Play()
	end)
end
local GUIPath = game.Players.LocalPlayer.PlayerGui
function Library:AddNotify(confignotify)
	confignotify = confignotify or {}
	confignotify.Title = confignotify.Title or "Notification"
	confignotify.Content = confignotify.Content or ""
	confignotify.Time = confignotify.Time or 5
	local NotifyFunc = {}
	spawn(function()
		if not GUIPath:FindFirstChild("Zinnerbeo") then
			local Zinnerbeo = Instance.new("ScreenGui")
			Zinnerbeo.Name = "Zinnerbeo"
			Zinnerbeo.Parent = GUIPath
			Zinnerbeo.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		end
		if not GUIPath.Zinnerbeo:FindFirstChild("NotifyLayout") then
			local NotifyLayout = Instance.new("Frame")
			NotifyLayout.Name = "NotifyLayout"
			NotifyLayout.Parent = GUIPath.Zinnerbeo
			NotifyLayout.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			NotifyLayout.BackgroundTransparency = 1.000
			NotifyLayout.BorderColor3 = Color3.fromRGB(0, 0, 0)
			NotifyLayout.BorderSizePixel = 0
			NotifyLayout.Position = UDim2.new(1, 300, 1, -90)
			NotifyLayout.Size = UDim2.new(0, 220, 0, 70)
			local Count = 0
			GUIPath.Zinnerbeo.NotifyLayout.ChildRemoved:Connect(function()
				for r, v in next, GUIPath.Zinnerbeo.NotifyLayout:GetChildren() do
					tweenservice:Create(v, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(0, 0, 1, -((v.Size.Y.Offset + 12) * Count))}):Play()
					Count = Count + 1
				end
			end)
		end
		local NotifyHeighst = 0
		for i, v in GUIPath.Zinnerbeo.NotifyLayout:GetChildren() do
			NotifyHeighst = -(v.Position.Y.Offset) + v.Size.Y.Offset + 45
		end

		local NotifyFrame = Instance.new("Frame")
		local NotifyReal = Instance.new("Frame")
		local UICorner = Instance.new("UICorner")
		local Title = Instance.new("TextLabel")
		local CloseFrame = Instance.new("Frame")
		local Logo = Instance.new("ImageLabel")
		local Click = Instance.new("TextButton")
		local Desc = Instance.new("TextLabel")
		local DropShadowHolder = Instance.new("Frame")
		local DropShadow = Instance.new("ImageLabel")

		NotifyFrame.Name = "NotifyFrame"
		NotifyFrame.Parent = GUIPath.Zinnerbeo.NotifyLayout
		NotifyFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		NotifyFrame.BackgroundTransparency = 1.000
		NotifyFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
		NotifyFrame.BorderSizePixel = 0
		NotifyFrame.Position = UDim2.new(0, 0, 0 , -(NotifyHeighst) + 5)
		NotifyFrame.Size = UDim2.new(1, 0, 1, 0)

		NotifyReal.Name = "NotifyReal"
		NotifyReal.Parent = NotifyFrame
		NotifyReal.BackgroundColor3 = Color3.fromRGB(20, 22, 23)
		NotifyReal.BackgroundTransparency = 0.030
		NotifyReal.BorderColor3 = Color3.fromRGB(0, 0, 0)
		NotifyReal.BorderSizePixel = 0
		NotifyReal.Size = UDim2.new(1, 0, 1, 0)

		UICorner.CornerRadius = UDim.new(0, 4)
		UICorner.Parent = NotifyReal

		Title.Name = "Title"
		Title.Parent = NotifyReal
		Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title.BackgroundTransparency = 1.000
		Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Title.BorderSizePixel = 0
		Title.Position = UDim2.new(0, 10, 0, 6)
		Title.Size = UDim2.new(1, -15, 0, 20)
		Title.Font = Enum.Font.GothamBold
		Title.Text = confignotify.Title
		Title.TextColor3 = Color3.fromRGB(200, 200, 200)
		Title.TextSize = 13.000
		Title.TextXAlignment = Enum.TextXAlignment.Left

		CloseFrame.Name = "CloseFrame"
		CloseFrame.Parent = NotifyReal
		CloseFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		CloseFrame.BackgroundTransparency = 1.000
		CloseFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
		CloseFrame.BorderSizePixel = 0
		CloseFrame.Position = UDim2.new(1, -20, 0, 0)
		CloseFrame.Size = UDim2.new(0, 20, 0, 20)

		Logo.Name = "Logo"
		Logo.Parent = CloseFrame
		Logo.AnchorPoint = Vector2.new(0.5, 0.5)
		Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Logo.BackgroundTransparency = 1.000
		Logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Logo.BorderSizePixel = 0
		Logo.Position = UDim2.new(0.5, 0, 0.5, 0)
		Logo.Size = UDim2.new(1, -12, 1, -12)
		Logo.Image = "rbxassetid://108547657654861"

		Click.Name = "Click"
		Click.Parent = CloseFrame
		Click.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Click.BackgroundTransparency = 1.000
		Click.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Click.BorderSizePixel = 0
		Click.Size = UDim2.new(1, 0, 1, 0)
		Click.Font = Enum.Font.SourceSans
		Click.Text = ""
		Click.TextColor3 = Color3.fromRGB(0, 0, 0)
		Click.TextSize = 14.000

		Desc.Name = "Desc"
		Desc.Parent = NotifyReal
		Desc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Desc.BackgroundTransparency = 1.000
		Desc.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Desc.BorderSizePixel = 0
		Desc.Position = UDim2.new(0, 10, 0, 22)
		Desc.Size = UDim2.new(1, -15, 1, -25)
		Desc.Font = Enum.Font.GothamBold
		Desc.Text = confignotify.Content
		Desc.TextColor3 = Color3.fromRGB(144, 144, 144)
		Desc.TextSize = 12.000
		Desc.TextWrapped = true
		Desc.TextXAlignment = Enum.TextXAlignment.Left
		Desc.TextYAlignment = Enum.TextYAlignment.Top

		DropShadowHolder.Name = "DropShadowHolder"
		DropShadowHolder.Parent = NotifyLayout
		DropShadowHolder.BackgroundTransparency = 1.000
		DropShadowHolder.BorderSizePixel = 0
		DropShadowHolder.Size = UDim2.new(1, 0, 1, 0)
		DropShadowHolder.ZIndex = 0

		DropShadow.Name = "DropShadow"
		DropShadow.Parent = DropShadowHolder
		DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
		DropShadow.BackgroundTransparency = 1.000
		DropShadow.BorderSizePixel = 0
		DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
		DropShadow.Size = UDim2.new(1, 47, 1, 47)
		DropShadow.ZIndex = 0
		DropShadow.Image = "rbxassetid://6015897843"
		DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
		DropShadow.ImageTransparency = 0.500
		DropShadow.ScaleType = Enum.ScaleType.Slice
		DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)
		function NotifyFunc:Close()
			tweenservice:Create(NotifyReal, TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(0, 0, 0, -(NotifyHeighst) - 49)}):Play()
			task.wait(tonumber(confignotify.Time) / 1.2)
			NotifyFrame:Destroy()
		end
		tweenservice:Create(NotifyReal, TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(0, -570, 0, -(NotifyHeighst) - 49)}):Play()
		Click.Activated:Connect(function()
			NotifyFunc:Close()
		end)
		task.wait(tonumber(confignotify.Time))
		NotifyFunc:Close()
	end)
	return NotifyFunc
end
function Library:AddWindow()
	local ZinnerBeos = Instance.new("ScreenGui")
	local Main = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local DropShadowHolder = Instance.new("Frame")
	local DropShadow = Instance.new("ImageLabel")
	local Top = Instance.new("Frame")
	local NameHub = Instance.new("TextLabel")
	local Line = Instance.new("Frame")
	local UIToggle = Instance.new("Frame")
	local Minized = Instance.new("Frame")
	local Icon1 = Instance.new("ImageLabel")
	local Click = Instance.new("TextButton")
	local Larged = Instance.new("Frame")
	local Icon2 = Instance.new("ImageLabel")
	local Click_2 = Instance.new("TextButton")
	local Closed = Instance.new("Frame")
	local Icon3 = Instance.new("ImageLabel")
	local Click_3 = Instance.new("TextButton")
	local Description = Instance.new("TextLabel")
	local TabFrame = Instance.new("Frame")
	local TabHolder = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local UIPadding = Instance.new("UIPadding")
	local Layout = Instance.new("Frame")
	local RealLayout = Instance.new("Frame")
	local ChannelList = Instance.new("Folder")
	local UIPageLayout = Instance.new("UIPageLayout")
	local MinizedUI = Instance.new("Frame")
	local UICorner_37 = Instance.new("UICorner")
	local TextButton_2 = Instance.new("TextButton")
	local ImageLabel_3 = Instance.new("ImageLabel")
	local UIStroke_6 = Instance.new("UIStroke")

	ZinnerBeos.Name = "ZinnerBeos"
	ZinnerBeos.Parent = GUIPath

	MinizedUI.Name = "MinizedUI"
	MinizedUI.Parent = ZinnerBeos
	MinizedUI.BackgroundColor3 = Color3.fromRGB(16, 17, 18)
	MinizedUI.BackgroundTransparency = 0.040
	MinizedUI.BorderColor3 = Color3.fromRGB(0, 0, 0)
	MinizedUI.BorderSizePixel = 0
	MinizedUI.Position = UDim2.new(0.0284789652, 0, 0.054862842, 0)
	MinizedUI.Size = UDim2.new(0, 40, 0, 40)

	UICorner_37.CornerRadius = UDim.new(1, 0)
	UICorner_37.Parent = MinizedUI

	TextButton_2.Parent = MinizedUI
	TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_2.BackgroundTransparency = 1.000
	TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextButton_2.BorderSizePixel = 0
	TextButton_2.Size = UDim2.new(1, 0, 1, 0)
	TextButton_2.Font = Enum.Font.SourceSans
	TextButton_2.Text = ""
	TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextButton_2.TextSize = 14.000
	TextButton_2.Activated:Connect(function()
		Main.Visible = not Main.Visible
	end)

	ImageLabel_3.Parent = MinizedUI
	ImageLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel_3.BackgroundTransparency = 1.000
	ImageLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ImageLabel_3.BorderSizePixel = 0
	ImageLabel_3.Size = UDim2.new(1, 0, 1, 0)
	ImageLabel_3.Image = "rbxassetid://135102227248834"

	UIStroke_6.Parent = MinizedUI
	UIStroke_6.Color = Color3.fromRGB(255, 0, 4)
	UIStroke_6.Thickness = 1.200

	Main.Name = "Main"
	Main.Parent = ZinnerBeos
	Main.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
	Main.BackgroundTransparency = 0.100
	Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Main.BorderSizePixel = 0
	Main.Position = UDim2.new(0.4, 0, 0.4, 0)
	Main.Size = UDim2.new(0, 522, 0, 390)
	setMidPos(ZinnerBeos, Main)
	UICorner.Parent = Main

	DropShadowHolder.Name = "DropShadowHolder"
	DropShadowHolder.Parent = Main
	DropShadowHolder.BackgroundTransparency = 1.000
	DropShadowHolder.BorderSizePixel = 0
	DropShadowHolder.Size = UDim2.new(1, 0, 1, 0)
	DropShadowHolder.ZIndex = 0

	DropShadow.Name = "DropShadow"
	DropShadow.Parent = DropShadowHolder
	DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	DropShadow.BackgroundTransparency = 1.000
	DropShadow.BorderSizePixel = 0
	DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
	DropShadow.Size = UDim2.new(1, 47, 1, 47)
	DropShadow.ZIndex = 0
	DropShadow.Image = "rbxassetid://6015897843"
	DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	DropShadow.ImageTransparency = 0.500
	DropShadow.ScaleType = Enum.ScaleType.Slice
	DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

	Top.Name = "Top"
	Top.Parent = Main
	Top.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Top.BackgroundTransparency = 1.000
	Top.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Top.BorderSizePixel = 0
	Top.Size = UDim2.new(1, 0, 0, 40)

	NameHub.Name = "Name Hub"
	NameHub.Parent = Top
	NameHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	NameHub.BackgroundTransparency = 1.000
	NameHub.BorderColor3 = Color3.fromRGB(0, 0, 0)
	NameHub.BorderSizePixel = 0
	NameHub.Position = UDim2.new(0, 4, 0, 7)
	NameHub.Size = UDim2.new(0, 100, 0, 30)
	NameHub.Font = Enum.Font.GothamBold
	NameHub.Text = "Zinner Hub"
	NameHub.TextColor3 = Color3.fromRGB(255, 0, 4)
	NameHub.TextSize = 14.000

	Line.Name = "Line"
	Line.Parent = Top
	Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Line.BackgroundTransparency = 0.900
	Line.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Line.BorderSizePixel = 0
	Line.Position = UDim2.new(0, 0, 1, 0)
	Line.Size = UDim2.new(1, 0, 0, 1)

	UIToggle.Name = "UIToggle"
	UIToggle.Parent = Top
	UIToggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	UIToggle.BackgroundTransparency = 1.000
	UIToggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
	UIToggle.BorderSizePixel = 0
	UIToggle.Position = UDim2.new(1, -120, 0, 0)
	UIToggle.Size = UDim2.new(0, 120, 1, 0)

	Minized.Name = "Minized"
	Minized.Parent = UIToggle
	Minized.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Minized.BackgroundTransparency = 1.000
	Minized.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Minized.BorderSizePixel = 0
	Minized.Size = UDim2.new(0, 40, 1, 0)

	Icon1.Name = "Icon1"
	Icon1.Parent = Minized
	Icon1.AnchorPoint = Vector2.new(0.5, 0.5)
	Icon1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Icon1.BackgroundTransparency = 1.000
	Icon1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Icon1.BorderSizePixel = 0
	Icon1.Position = UDim2.new(0.5, 0, 0.5, 0)
	Icon1.Size = UDim2.new(0, 20, 0, 20)
	Icon1.Image = "http://www.roblox.com/asset/?id=129303496186108"

	Click.Name = "Click"
	Click.Parent = Minized
	Click.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Click.BackgroundTransparency = 1.000
	Click.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Click.BorderSizePixel = 0
	Click.Size = UDim2.new(1, 0, 1, 0)
	Click.Font = Enum.Font.SourceSans
	Click.Text = ""
	Click.TextColor3 = Color3.fromRGB(0, 0, 0)
	Click.TextSize = 14.000
	Click.Activated:Connect(function()
		Main.Visible = false
	end)

	Larged.Name = "Larged"
	Larged.Parent = UIToggle
	Larged.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Larged.BackgroundTransparency = 1.000
	Larged.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Larged.BorderSizePixel = 0
	Larged.Position = UDim2.new(0, 40, 0, 0)
	Larged.Size = UDim2.new(0, 40, 1, 0)

	Icon2.Name = "Icon2"
	Icon2.Parent = Larged
	Icon2.AnchorPoint = Vector2.new(0.5, 0.5)
	Icon2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Icon2.BackgroundTransparency = 1.000
	Icon2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Icon2.BorderSizePixel = 0
	Icon2.Position = UDim2.new(0.5, 0, 0.5, 0)
	Icon2.Size = UDim2.new(0, 10, 0, 10)
	Icon2.Image = "http://www.roblox.com/asset/?id=83807798158212"
	Icon2.ImageColor3 = Color3.fromRGB(200, 200, 200)

	Click_2.Name = "Click"
	Click_2.Parent = Larged
	Click_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Click_2.BackgroundTransparency = 1.000
	Click_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Click_2.BorderSizePixel = 0
	Click_2.Size = UDim2.new(1, 0, 1, 0)
	Click_2.Font = Enum.Font.SourceSans
	Click_2.Text = ""
	Click_2.TextColor3 = Color3.fromRGB(0, 0, 0)
	Click_2.TextSize = 14.000
	local a = true
	Click_2.Activated:Connect(function()
		if a then
			OldSize = Main.Size
			OldPos = Main.Position
			tweenservice:Create(Main, TweenInfo.new(0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(0.5, 0, 0.5, 0)}):Play()
			tweenservice:Create(Main, TweenInfo.new(0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(1, 0, 1, 0)}):Play()
			a = false
		else
			tweenservice:Create(Main, TweenInfo.new(0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = OldPos}):Play()
			tweenservice:Create(Main, TweenInfo.new(0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = OldSize}):Play()
			a = true
		end
	end)

	Closed.Name = "Closed"
	Closed.Parent = UIToggle
	Closed.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Closed.BackgroundTransparency = 1.000
	Closed.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Closed.BorderSizePixel = 0
	Closed.Position = UDim2.new(0, 80, 0, 0)
	Closed.Size = UDim2.new(0, 40, 1, 0)

	Icon3.Name = "Icon3"
	Icon3.Parent = Closed
	Icon3.AnchorPoint = Vector2.new(0.5, 0.5)
	Icon3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Icon3.BackgroundTransparency = 1.000
	Icon3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Icon3.BorderSizePixel = 0
	Icon3.Position = UDim2.new(0.5, 0, 0.5, 0)
	Icon3.Size = UDim2.new(0, 20, 0, 20)
	Icon3.Image = "http://www.roblox.com/asset/?id=134358179538931"

	Click_3.Name = "Click"
	Click_3.Parent = Closed
	Click_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Click_3.BackgroundTransparency = 1.000
	Click_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Click_3.BorderSizePixel = 0
	Click_3.Size = UDim2.new(1, 0, 1, 0)
	Click_3.Font = Enum.Font.SourceSans
	Click_3.Text = ""
	Click_3.TextColor3 = Color3.fromRGB(0, 0, 0)
	Click_3.TextSize = 14.000
	Click_3.Activated:Connect(function()
		Library:AddNotify({
			Title = "Interface",
			Content = "Zinner Screen Gui Has Deleted!!",
			Time = 7
		})
		ZinnerBeos:Destroy()
	end)

	Description.Name = "Description"
	Description.Parent = Top
	Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Description.BackgroundTransparency = 1.000
	Description.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Description.BorderSizePixel = 0
	Description.Position = UDim2.new(0, 92, 0, 6)
	Description.Size = UDim2.new(0, 100, 0, 30)
	Description.Font = Enum.Font.GothamBold
	Description.Text = "By HoangNam"
	Description.TextColor3 = Color3.fromRGB(78, 78, 78)
	Description.TextSize = 13.000
	Description.TextXAlignment = Enum.TextXAlignment.Left

	TabFrame.Name = "TabFrame"
	TabFrame.Parent = Main
	TabFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TabFrame.BackgroundTransparency = 1.000
	TabFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TabFrame.BorderSizePixel = 0
	TabFrame.Position = UDim2.new(0, 0, 0, 40)
	TabFrame.Size = UDim2.new(0, 150, 1, -40)

	TabHolder.Name = "TabHolder"
	TabHolder.Parent = TabFrame
	TabHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TabHolder.BackgroundTransparency = 1.000
	TabHolder.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TabHolder.BorderSizePixel = 0
	TabHolder.Size = UDim2.new(1, 0, 1, 0)
	TabHolder.ClipsDescendants = true
	UIListLayout.Parent = TabHolder
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 8)

	UIPadding.Parent = TabHolder
	UIPadding.PaddingBottom = UDim.new(0, 8)
	UIPadding.PaddingLeft = UDim.new(0, 9)
	UIPadding.PaddingTop = UDim.new(0, 8)

	Layout.Name = "Layout"
	Layout.Parent = Main
	Layout.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Layout.BackgroundTransparency = 1.000
	Layout.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Layout.BorderSizePixel = 0
	Layout.ClipsDescendants = true
	Layout.Position = UDim2.new(0, 155, 0, 40)
	Layout.Size = UDim2.new(1, -155, 1, -40)

	RealLayout.Name = "RealLayout"
	RealLayout.Parent = Layout
	RealLayout.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	RealLayout.BackgroundTransparency = 1.000
	RealLayout.BorderColor3 = Color3.fromRGB(0, 0, 0)
	RealLayout.BorderSizePixel = 0
	RealLayout.Size = UDim2.new(1, 0, 1, 0)

	ChannelList.Name = "Channel List"
	ChannelList.Parent = RealLayout

	UIPageLayout.Name = "UIPageLayout"
	UIPageLayout.Parent = ChannelList
	UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIPageLayout.EasingStyle = Enum.EasingStyle.Quart
	UIPageLayout.GamepadInputEnabled = false
	UIPageLayout.TouchInputEnabled = false
	UIPageLayout.ScrollWheelInputEnabled = false
	UIPageLayout.TweenTime = 0.400

	MakeDraggable(Top, Main)
	local Counts = 0
	local Tabs = {}
	function Tabs:CreateTab(configtab)
		configtab = configtab or {}
		configtab.Name = configtab.Name or "Tab 1"
		configtab.Icon = configtab.Icon or "rbxassetid://116553145413929"

		local TabDisable = Instance.new("Frame")
		local UICorner_4 = Instance.new("UICorner")
		local Circle_2 = Instance.new("Frame")
		local UICorner_5 = Instance.new("UICorner")
		local NameTab_2 = Instance.new("TextLabel")
		local ImageLabel_2 = Instance.new("ImageLabel")
		local Click_5 = Instance.new("TextButton")
		local Channel = Instance.new("ScrollingFrame")
		local UIPadding_2 = Instance.new("UIPadding")
		local UIListLayout_2 = Instance.new("UIListLayout")
		local NameTab_3 = Instance.new("TextLabel")

		Channel.Name = "Channel"
		Channel.Parent = ChannelList
		Channel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Channel.BackgroundTransparency = 1.000
		Channel.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Channel.BorderSizePixel = 0
		Channel.Size = UDim2.new(1, 0, 1, 0)
		Channel.ScrollBarThickness = 0
		Channel.LayoutOrder = Counts

		UIPadding_2.Parent = Channel
		UIPadding_2.PaddingBottom = UDim.new(0, 3)
		UIPadding_2.PaddingLeft = UDim.new(0, 7)
		UIPadding_2.PaddingRight = UDim.new(0, 7)
		UIPadding_2.PaddingTop = UDim.new(0, 3)

		UIListLayout_2.Parent = Channel
		UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_2.Padding = UDim.new(0, 6)
		game:GetService("RunService").Stepped:Connect(function()
			if Channel and UIListLayout_2 then
				Channel.CanvasSize = UDim2.new(0, 0, 0, UIListLayout_2.AbsoluteContentSize.Y + 15)
			end
		end)

		NameTab_3.Name = "Name Tab"
		NameTab_3.Parent = Channel
		NameTab_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		NameTab_3.BackgroundTransparency = 1.000
		NameTab_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
		NameTab_3.BorderSizePixel = 0
		NameTab_3.Size = UDim2.new(1, 0, 0, 50)
		NameTab_3.Font = Enum.Font.GothamBold
		NameTab_3.Text = configtab.Name
		NameTab_3.TextColor3 = Color3.fromRGB(255, 255, 255)
		NameTab_3.TextSize = 25.000
		NameTab_3.TextXAlignment = Enum.TextXAlignment.Left

		TabDisable.Name = "TabDisable"
		TabDisable.Parent = TabHolder
		TabDisable.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabDisable.BackgroundTransparency = 1.000
		TabDisable.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TabDisable.BorderSizePixel = 0
		TabDisable.Size = UDim2.new(1, 0, 0, 32)

		UICorner_4.CornerRadius = UDim.new(0, 4)
		UICorner_4.Parent = TabDisable

		Circle_2.Name = "Circle"
		Circle_2.Parent = TabDisable
		Circle_2.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
		Circle_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Circle_2.BorderSizePixel = 0
		Circle_2.Position = UDim2.new(0, -15, 0, 8)
		Circle_2.Size = UDim2.new(0, 4, 0, 16)

		UICorner_5.CornerRadius = UDim.new(0, 6)
		UICorner_5.Parent = Circle_2

		NameTab_2.Name = "NameTab"
		NameTab_2.Parent = TabDisable
		NameTab_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		NameTab_2.BackgroundTransparency = 1.000
		NameTab_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
		NameTab_2.BorderSizePixel = 0
		NameTab_2.Position = UDim2.new(0, 43, 0, 1)
		NameTab_2.Size = UDim2.new(1, -40, 1, 0)
		NameTab_2.Font = Enum.Font.GothamBold
		NameTab_2.Text = configtab.Name
		NameTab_2.TextColor3 = Color3.fromRGB(144, 144, 144)
		NameTab_2.TextSize = 13.000
		NameTab_2.TextXAlignment = Enum.TextXAlignment.Left

		ImageLabel_2.Parent = TabDisable
		ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ImageLabel_2.BackgroundTransparency = 1.000
		ImageLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
		ImageLabel_2.BorderSizePixel = 0
		ImageLabel_2.Position = UDim2.new(0, 15, 0, 5)
		ImageLabel_2.Size = UDim2.new(0, 20, 0, 20)
		ImageLabel_2.Image = configtab.Icon
		ImageLabel_2.ImageColor3 = Color3.fromRGB(144, 144, 144)

		Click_5.Name = "Click"
		Click_5.Parent = TabDisable
		Click_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Click_5.BackgroundTransparency = 1.000
		Click_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Click_5.BorderSizePixel = 0
		Click_5.Size = UDim2.new(1, 0, 1, 0)
		Click_5.Font = Enum.Font.SourceSans
		Click_5.Text = ""
		Click_5.TextColor3 = Color3.fromRGB(0, 0, 0)
		Click_5.TextSize = 14.000
		if Counts == 0 then
			NameTab_2.TextColor3 = Color3.fromRGB(255, 255, 255)
			ImageLabel_2.ImageColor3 = Color3.fromRGB(255, 255, 255)
			TabDisable.BackgroundTransparency = 0.960
			Circle_2.Position = UDim2.new(0, 2, 0, 8)
		end
		Click_5.Activated:Connect(function()
			for r, v in pairs(TabHolder:GetChildren()) do
				if v:IsA("Frame") then
					tweenservice:Create(v, 
						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
							BackgroundTransparency = 1.000
						}):Play()
				end
			end
			for r, v in pairs(TabHolder:GetChildren()) do
				if v:IsA("Frame") then
					if v:FindFirstChild("Circle") then
						tweenservice:Create(v.Circle, 
							TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
								Position = UDim2.new(0, -15, 0, 8)
							}):Play()
					end
				end
			end
			for r, v in pairs(TabHolder:GetChildren()) do
				if v:IsA("Frame") then
					if v:FindFirstChild("NameTab") then
						tweenservice:Create(v.NameTab, 
							TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
								TextColor3 = Color3.fromRGB(144, 144 ,144)
							}):Play()
					end
				end
			end
			for r, v in pairs(TabHolder:GetChildren()) do
				if v:IsA("Frame") then
					if v:FindFirstChild("ImageLabel") then
						tweenservice:Create(v.ImageLabel, 
							TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
								ImageColor3 = Color3.fromRGB(144, 144, 144)
							}):Play()
					end
				end
			end
			tweenservice:Create(ImageLabel_2, 
				TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
					ImageColor3 = Color3.fromRGB(255, 255, 255)
				}):Play()
			tweenservice:Create(NameTab_2, 
				TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
					TextColor3 = Color3.fromRGB(255, 255, 255)
				}):Play()
			tweenservice:Create(Circle_2, 
				TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
					Position = UDim2.new(0, 2, 0, 8)
				}):Play()
			tweenservice:Create(TabDisable, 
				TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
					BackgroundTransparency = 0.960
				}):Play()
			UIPageLayout:JumpToIndex(Channel.LayoutOrder)
		end)
		Counts = Counts + 1
		local Feature = {}
		function Feature:AddButton(configbutton)
			configbutton = configbutton or {}
			configbutton.Name = configbutton.Name or "Button"
			configbutton.Description = configbutton.Description or ""
			configbutton.Callback = configbutton.Callback or function() end

			local Button_2 = Instance.new("Frame")
			local UICorner_7 = Instance.new("UICorner")
			local Title_2 = Instance.new("TextLabel")
			local UIPadding_4 = Instance.new("UIPadding")
			local Logo_2 = Instance.new("ImageLabel")
			local Click_7 = Instance.new("TextButton")
			local Desc = Instance.new("TextLabel")
			local UIPadding_5 = Instance.new("UIPadding")

			Button_2.Name = "Button"
			Button_2.Parent = Channel
			Button_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Button_2.BackgroundTransparency = 0.950
			Button_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Button_2.BorderSizePixel = 0
			Button_2.Size = UDim2.new(1, 0, 0, 36)
			MouseTo(Button_2)
			UICorner_7.CornerRadius = UDim.new(0, 3)
			UICorner_7.Parent = Button_2

			Title_2.Name = "Title"
			Title_2.Parent = Button_2
			Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title_2.BackgroundTransparency = 1.000
			Title_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Title_2.BorderSizePixel = 0
			Title_2.Size = UDim2.new(1, -40, 1, 0)
			Title_2.Font = Enum.Font.GothamBold
			Title_2.Text = configbutton.Name
			Title_2.TextColor3 = Color3.fromRGB(222, 222, 222)
			Title_2.TextSize = 13.000
			Title_2.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding_4.Parent = Title_2
			UIPadding_4.PaddingLeft = UDim.new(0, 12)

			Logo_2.Name = "Logo"
			Logo_2.Parent = Button_2
			Logo_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Logo_2.BackgroundTransparency = 1.000
			Logo_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Logo_2.BorderSizePixel = 0
			Logo_2.Position = UDim2.new(1, -26, 0, 11)
			Logo_2.Size = UDim2.new(0, 12, 0, 12)
			Logo_2.Image = "http://www.roblox.com/asset/?id=89867158038179"
			Logo_2.ImageColor3 = Color3.fromRGB(222, 222, 222)

			Click_7.Name = "Click"
			Click_7.Parent = Button_2
			Click_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Click_7.BackgroundTransparency = 1.000
			Click_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Click_7.BorderSizePixel = 0
			Click_7.Size = UDim2.new(1, 0, 1, 0)
			Click_7.Font = Enum.Font.SourceSans
			Click_7.Text = ""
			Click_7.TextColor3 = Color3.fromRGB(0, 0, 0)
			Click_7.TextSize = 14.000

			if configbutton.Description ~= nil and configbutton ~= "" then
				Title_2.Size = UDim2.new(1, -40, 0, 20)
				UIPadding_4.PaddingTop = UDim.new(0, 12)
				Logo_2.Position = UDim2.new(1, -26, 0, 17)
				Desc.Name = "Desc"
				Desc.Parent = Button_2
				Desc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Desc.BackgroundTransparency = 1.000
				Desc.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Desc.BorderSizePixel = 0
				Desc.Position = UDim2.new(0, 0, 0, 22)
				Desc.Size = UDim2.new(1, 0, 1, -22)
				Desc.Font = Enum.Font.GothamBold
				Desc.Text = configbutton.Description
				Desc.TextColor3 = Color3.fromRGB(144, 144, 144)
				Desc.TextSize = 12.000
				Desc.TextXAlignment = Enum.TextXAlignment.Left
				Button_2.Size = UDim2.new(1, 0, 0, 36 + Desc.TextBounds.Y + 2)
				Desc:GetPropertyChangedSignal("Text"):Connect(function()
					Button_2.Size = UDim2.new(1, 0, 0, 36 + Desc.TextBounds.Y + 2)
				end)

				UIPadding_5.Parent = Desc
				UIPadding_5.PaddingBottom = UDim.new(0, 12)
				UIPadding_5.PaddingLeft = UDim.new(0, 12)
			end
			Click_7.Activated:Connect(function()
				Button_2.BackgroundTransparency = 0.970
				tweenservice:Create(Button_2, TweenInfo.new(0.26, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.950}):Play()
				configbutton.Callback()
			end)
		end
		function Feature:AddToggle(configtoggle)
			configtoggle = configtoggle or {}
			configtoggle.Name = configtoggle.Name or "Toggle"
			configtoggle.Description = configtoggle.Description or ""
			configtoggle.Default = configtoggle.Default or false
			configtoggle.Callback = configtoggle.Callback or function() end

			local Toggle_2 = Instance.new("Frame")
			local UICorner_11 = Instance.new("UICorner")
			local Title_4 = Instance.new("TextLabel")
			local UIPadding_7 = Instance.new("UIPadding")
			local Click_9 = Instance.new("TextButton")
			local Desc_2 = Instance.new("TextLabel")
			local UIPadding_8 = Instance.new("UIPadding")
			local CheckFrame_2 = Instance.new("Frame")
			local UICorner_12 = Instance.new("UICorner")
			local UIStroke_2 = Instance.new("UIStroke")
			local Circle_4 = Instance.new("Frame")
			local UICorner_13 = Instance.new("UICorner")
			local ToggleFunc = {}

			Toggle_2.Name = "Toggle"
			Toggle_2.Parent = Channel
			Toggle_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Toggle_2.BackgroundTransparency = 0.950
			Toggle_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Toggle_2.BorderSizePixel = 0
			Toggle_2.Size = UDim2.new(1, 0, 0, 36)
			MouseTo(Toggle_2)
			UICorner_11.CornerRadius = UDim.new(0, 3)
			UICorner_11.Parent = Toggle_2

			Title_4.Name = "Title"
			Title_4.Parent = Toggle_2
			Title_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title_4.BackgroundTransparency = 1.000
			Title_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Title_4.BorderSizePixel = 0
			Title_4.Size = UDim2.new(1, -40, 0, 36)
			Title_4.Font = Enum.Font.GothamBold
			Title_4.Text = configtoggle.Name
			Title_4.TextColor3 = Color3.fromRGB(222, 222, 222)
			Title_4.TextSize = 13.000
			Title_4.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding_7.Parent = Title_4
			UIPadding_7.PaddingLeft = UDim.new(0, 12)

			Click_9.Name = "Click"
			Click_9.Parent = Toggle_2
			Click_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Click_9.BackgroundTransparency = 1.000
			Click_9.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Click_9.BorderSizePixel = 0
			Click_9.Size = UDim2.new(1, 0, 1, 0)
			Click_9.Font = Enum.Font.SourceSans
			Click_9.Text = ""
			Click_9.TextColor3 = Color3.fromRGB(0, 0, 0)
			Click_9.TextSize = 14.000

			CheckFrame_2.Name = "CheckFrame"
			CheckFrame_2.Parent = Toggle_2
			CheckFrame_2.BackgroundColor3 = Color3.fromRGB(255, 5, 9)
			CheckFrame_2.BackgroundTransparency = 1.000
			CheckFrame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			CheckFrame_2.BorderSizePixel = 0
			CheckFrame_2.Position = UDim2.new(1, -50, 0, 9)
			CheckFrame_2.Size = UDim2.new(0, 40, 0, 18)

			UICorner_12.CornerRadius = UDim.new(1, 0)
			UICorner_12.Parent = CheckFrame_2

			UIStroke_2.Parent = CheckFrame_2
			UIStroke_2.Color = Color3.fromRGB(93, 93, 93)
			UIStroke_2.Thickness = 1.800

			Circle_4.Name = "Circle"
			Circle_4.Parent = CheckFrame_2
			Circle_4.BackgroundColor3 = Color3.fromRGB(93, 93, 93)
			Circle_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Circle_4.BorderSizePixel = 0
			Circle_4.Position = UDim2.new(0, 1, 0, 1)
			Circle_4.Size = UDim2.new(0, 16, 0, 16)

			UICorner_13.CornerRadius = UDim.new(1, 0)
			UICorner_13.Parent = Circle_4

			if configtoggle.Description ~= nil and configtoggle.Description ~= "" then
				UIPadding_7.PaddingTop = UDim.new(0, 12)
				Title_4.Size = UDim2.new(1, -40, 0, 20)
				CheckFrame_2.Position = UDim2.new(1, -50, 0, 15)
				Desc_2.Name = "Desc"
				Desc_2.Parent = Toggle_2
				Desc_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Desc_2.BackgroundTransparency = 1.000
				Desc_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Desc_2.BorderSizePixel = 0
				Desc_2.Position = UDim2.new(0, 0, 0, 22)
				Desc_2.Size = UDim2.new(1, 0, 1, -22)
				Desc_2.Font = Enum.Font.GothamBold
				Desc_2.Text = configtoggle.Description
				Desc_2.TextColor3 = Color3.fromRGB(144, 144, 144)
				Desc_2.TextSize = 12.000
				Desc_2.TextXAlignment = Enum.TextXAlignment.Left
				Toggle_2.Size = UDim2.new(1, 0, 0, 36 + Desc_2.TextBounds.Y + 2)
				Desc_2:GetPropertyChangedSignal("Text"):Connect(function()
					Toggle_2.Size = UDim2.new(1, 0, 0, 36 + Desc_2.TextBounds.Y + 2)
				end)
				UIPadding_8.Parent = Desc_2
				UIPadding_8.PaddingBottom = UDim.new(0, 12)
				UIPadding_8.PaddingLeft = UDim.new(0, 12)    
			end

			local Tg = false
			Click_9.Activated:Connect(function()
				Toggle_2.BackgroundTransparency = 0.970
				tweenservice:Create(Toggle_2, TweenInfo.new(0.26, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.950}):Play()
				Tg = not Tg
				ToggleFunc:Set(Tg)
			end)
			function ToggleFunc:Set(value)
				if value then
					tweenservice:Create(CheckFrame_2, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundTransparency = 0}):Play()
					tweenservice:Create(Circle_4, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(0, 23, 0, 1)}):Play()
					tweenservice:Create(Circle_4, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(255 ,255, 255)}):Play()
					tweenservice:Create(UIStroke_2, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Transparency = 0}):Play()
					tweenservice:Create(UIStroke_2, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Color = Color3.fromRGB(255, 5, 9)}):Play()
				else
					tweenservice:Create(UIStroke_2, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Transparency = 0.290}):Play()
					tweenservice:Create(Circle_4, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(0, 2, 0, 1)}):Play()
					tweenservice:Create(CheckFrame_2, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundTransparency = 1.000}):Play()
					tweenservice:Create(Circle_4, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(100 ,100, 100)}):Play()
					tweenservice:Create(UIStroke_2, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Color = Color3.fromRGB(100, 100, 100)}):Play()
				end
				Tg = value
				configtoggle.Callback(Tg)
			end
			ToggleFunc:Set(configtoggle.Default)
			return ToggleFunc
		end
		function Feature:AddSlider(configslider)
			configslider = configslider or {}
			configslider.Name = configslider.Name or "Slider"
			configslider.Max = configslider.Max or 100
			configslider.Min = configslider.Min or 1
			configslider.Default = configslider.Default or 50
			configslider.Callback = configslider.Callback or function() end

			local Slider = Instance.new("Frame")
			local UICorner_14 = Instance.new("UICorner")
			local Title_5 = Instance.new("TextLabel")
			local UIPadding_9 = Instance.new("UIPadding")
			local Click_10 = Instance.new("TextButton")
			local Desc_3 = Instance.new("TextLabel")
			local UIPadding_10 = Instance.new("UIPadding")
			local SliderFrame = Instance.new("Frame")
			local UICorner_15 = Instance.new("UICorner")
			local SliderDraggable = Instance.new("Frame")
			local UICorner_16 = Instance.new("UICorner")
			local Circle_5 = Instance.new("Frame")
			local UICorner_17 = Instance.new("UICorner")
			local NumberValue = Instance.new("TextLabel")
			local SliderFunc = {Value = configslider.Default}

			Slider.Name = "Slider"
			Slider.Parent = Channel
			Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Slider.BackgroundTransparency = 0.950
			Slider.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Slider.BorderSizePixel = 0
			Slider.Size = UDim2.new(1, 0, 0, 36)

			UICorner_14.CornerRadius = UDim.new(0, 3)
			UICorner_14.Parent = Slider

			Title_5.Name = "Title"
			Title_5.Parent = Slider
			Title_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title_5.BackgroundTransparency = 1.000
			Title_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Title_5.BorderSizePixel = 0
			Title_5.Size = UDim2.new(1, -40, 0, 20)
			Title_5.Font = Enum.Font.GothamBold
			Title_5.Text = configslider.Name
			Title_5.TextColor3 = Color3.fromRGB(222, 222, 222)
			Title_5.TextSize = 13.000
			Title_5.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding_9.Parent = Title_5
			UIPadding_9.PaddingLeft = UDim.new(0, 12)

			Click_10.Name = "Click"
			Click_10.Parent = Slider
			Click_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Click_10.BackgroundTransparency = 1.000
			Click_10.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Click_10.BorderSizePixel = 0
			Click_10.Size = UDim2.new(1, 0, 1, 0)
			Click_10.Font = Enum.Font.SourceSans
			Click_10.Text = ""
			Click_10.TextColor3 = Color3.fromRGB(0, 0, 0)
			Click_10.TextSize = 14.000

			SliderFrame.Name = "SliderFrame"
			SliderFrame.Parent = Slider
			SliderFrame.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
			SliderFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
			SliderFrame.BorderSizePixel = 0
			SliderFrame.Position = UDim2.new(1, -139, 0, 15)
			SliderFrame.Size = UDim2.new(0, 126, 0, 5)

			UICorner_15.CornerRadius = UDim.new(1, 0)
			UICorner_15.Parent = SliderFrame

			if configslider.Description ~= nil and configslider.Description ~= "" then
				UIPadding_9.PaddingTop = UDim.new(0, 12)
				SliderFrame.Position = UDim2.new(1, -139, 0, 22)
				Desc_3.Name = "Desc"
				Desc_3.Parent = Slider
				Desc_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Desc_3.BackgroundTransparency = 1.000
				Desc_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Desc_3.BorderSizePixel = 0
				Desc_3.Position = UDim2.new(0, 0, 0, 22)
				Desc_3.Size = UDim2.new(1, 0, 1, -22)
				Desc_3.Font = Enum.Font.GothamBold
				Desc_3.Text = configslider.Description
				Desc_3.TextColor3 = Color3.fromRGB(144, 144, 144)
				Desc_3.TextSize = 12.000
				Desc_3.TextXAlignment = Enum.TextXAlignment.Left
				Slider.Size = UDim2.new(1, 0, 0, 36 + Desc_3.TextBounds.Y + 2)
				Desc_3:GetPropertyChangedSignal("Text"):Connect(function()
					Slider.Size = UDim2.new(1, 0, 0, 36 + Desc_3.TextBounds.Y + 2)
				end)
				UIPadding_10.Parent = Desc_3
				UIPadding_10.PaddingBottom = UDim.new(0, 12)
				UIPadding_10.PaddingLeft = UDim.new(0, 12)
			end

			SliderDraggable.Name = "SliderDraggable"
			SliderDraggable.Parent = SliderFrame
			SliderDraggable.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
			SliderDraggable.BorderColor3 = Color3.fromRGB(0, 0, 0)
			SliderDraggable.BorderSizePixel = 0
			SliderDraggable.Size = UDim2.new(0, 100, 1, 0)

			UICorner_16.CornerRadius = UDim.new(1, 0)
			UICorner_16.Parent = SliderDraggable

			Circle_5.Name = "Circle"
			Circle_5.Parent = SliderDraggable
			Circle_5.AnchorPoint = Vector2.new(0.5, 0.5)
			Circle_5.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
			Circle_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Circle_5.BorderSizePixel = 0
			Circle_5.Position = UDim2.new(1, 6, 0, 2)
			Circle_5.Size = UDim2.new(0, 17, 0, 17)

			UICorner_17.CornerRadius = UDim.new(1, 0)
			UICorner_17.Parent = Circle_5

			NumberValue.Name = "NumberValue"
			NumberValue.Parent = Slider
			NumberValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			NumberValue.BackgroundTransparency = 1.000
			NumberValue.BorderColor3 = Color3.fromRGB(0, 0, 0)
			NumberValue.BorderSizePixel = 0
			NumberValue.Position = UDim2.new(1, -180, 0, 13)
			NumberValue.Size = UDim2.new(0, 50, 0, 20)
			NumberValue.Font = Enum.Font.GothamBold
			NumberValue.Text = configslider.Default
			NumberValue.TextColor3 = Color3.fromRGB(200, 200, 200)
			NumberValue.TextSize = 12.000
			NumberValue.TextWrapped = true
			local dragging = false
			local function Round(Number, Factor)
				local Result = math.floor(Number/Factor + (math.sign(Number) * 0.5)) * Factor
				if Result < 0 then Result = Result + Factor end
				return Result
			end
			function SliderFunc:Set(Value)
				Value = math.clamp(Round(Value, 1), configslider.Min, configslider.Max)
				SliderFunc.Value = Value
				NumberValue.Text = tostring(Value)
				configslider.Callback(SliderFunc.Value)
				tweenservice:Create(
					SliderDraggable,
					TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{Size = UDim2.fromScale((Value - configslider.Min) / (configslider.Max - configslider.Min), 1)}
				):Play()
			end
			SliderFrame.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
					dragging = true
				end
			end)
			UserInputService.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
					dragging = false
				end
			end)            
			UserInputService.InputChanged:Connect(function(input)
				if dragging then
					local SizeScale = math.clamp((input.Position.X - SliderFrame.AbsolutePosition.X) / SliderFrame.AbsoluteSize.X, 0, 1)
					SliderFunc:Set(configslider.Min + ((configslider.Max - configslider.Min) * SizeScale)) 
				end
			end)        
			SliderFunc:Set(tonumber(configslider.Default))
			return SliderFunc
		end
		function Feature:AddDropdown(configdropdown)
			configdropdown = configdropdown or {}
			configdropdown.Name = configdropdown.Name or "Dropdown"
			configdropdown.Multi = configdropdown.Multi or false
			configdropdown.Options = configdropdown.Options or {}
			configdropdown.Default = configdropdown.Default or ""
			configdropdown.Callback = configdropdown.Callback or function() end

			local Dropdown_2 = Instance.new("Frame")
			local UICorner_24 = Instance.new("UICorner")
			local Title_8 = Instance.new("TextLabel")
			local UIPadding_14 = Instance.new("UIPadding")
			local Desc_4 = Instance.new("TextLabel")
			local UIPadding_15 = Instance.new("UIPadding")
			local Selected_2 = Instance.new("Frame")
			local UICorner_25 = Instance.new("UICorner")
			local UIStroke_4 = Instance.new("UIStroke")
			local SELECT_2 = Instance.new("TextLabel")
			local UIPadding_16 = Instance.new("UIPadding")
			local Icon_2 = Instance.new("ImageLabel")
			local Click_13 = Instance.new("TextButton")
			local ListDropdown = Instance.new("Frame")
			local UICorner_30 = Instance.new("UICorner")
			local UIStroke_5 = Instance.new("UIStroke")
			local Listed = Instance.new("Frame")
			local UIListLayout_3 = Instance.new("UIListLayout")
			local UIPadding_22 = Instance.new("UIPadding")
			local CancelDrop = Instance.new("Frame")
			local TextButton = Instance.new("TextButton")
			local DropFunc = {Value = configdropdown.Default, Options = configdropdown.Options}

			CancelDrop.Name = "CancelDrop"
			CancelDrop.Parent = Main
			CancelDrop.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			CancelDrop.BackgroundTransparency = 0.650
			CancelDrop.BorderColor3 = Color3.fromRGB(0, 0, 0)
			CancelDrop.BorderSizePixel = 0
			CancelDrop.Size = UDim2.new(1, 0, 1, 0)
			CancelDrop.Visible = false

			TextButton.Parent = CancelDrop
			TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextButton.BackgroundTransparency = 1.000
			TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
			TextButton.BorderSizePixel = 0
			TextButton.Size = UDim2.new(1, 0, 1, 0)
			TextButton.Font = Enum.Font.SourceSans
			TextButton.Text = ""
			TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
			TextButton.TextSize = 14.000

			ListDropdown.Name = "ListDropdown"
			ListDropdown.Parent = Layout
			ListDropdown.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
			ListDropdown.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ListDropdown.BorderSizePixel = 0
			ListDropdown.Position = UDim2.new(1.5, -182, 0, 10)
			ListDropdown.Size = UDim2.new(0, 175, 1, -20)
			ListDropdown.ZIndex = 2

			UICorner_30.CornerRadius = UDim.new(0, 4)
			UICorner_30.Parent = ListDropdown

			UIStroke_5.Parent = ListDropdown
			UIStroke_5.Color = Color3.fromRGB(65, 65, 65)
			UIStroke_5.Thickness = 2.000

			Listed.Name = "Listed"
			Listed.Parent = ListDropdown
			Listed.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Listed.BackgroundTransparency = 1.000
			Listed.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Listed.BorderSizePixel = 0
			Listed.ClipsDescendants = true
			Listed.Size = UDim2.new(1, 0, 1, 0)
			Listed.ZIndex = 2

			UIListLayout_3.Parent = Listed
			UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout_3.Padding = UDim.new(0, 4)

			UIPadding_22.Parent = Listed
			UIPadding_22.PaddingBottom = UDim.new(0, 3)
			UIPadding_22.PaddingLeft = UDim.new(0, 3)
			UIPadding_22.PaddingRight = UDim.new(0, 3)
			UIPadding_22.PaddingTop = UDim.new(0, 7)

			Dropdown_2.Name = "Dropdown"
			Dropdown_2.Parent = Channel
			Dropdown_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Dropdown_2.BackgroundTransparency = 0.950
			Dropdown_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Dropdown_2.BorderSizePixel = 0
			Dropdown_2.Size = UDim2.new(1, 0, 0, 36)

			UICorner_24.CornerRadius = UDim.new(0, 3)
			UICorner_24.Parent = Dropdown_2

			Title_8.Name = "Title"
			Title_8.Parent = Dropdown_2
			Title_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title_8.BackgroundTransparency = 1.000
			Title_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Title_8.BorderSizePixel = 0
			Title_8.Size = UDim2.new(1, -40, 1, 0)
			Title_8.Font = Enum.Font.GothamBold
			Title_8.Text = configdropdown.Name
			Title_8.TextColor3 = Color3.fromRGB(222, 222, 222)
			Title_8.TextSize = 13.000
			Title_8.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding_14.Parent = Title_8
			UIPadding_14.PaddingLeft = UDim.new(0, 12)

			Selected_2.Name = "Selected"
			Selected_2.Parent = Dropdown_2
			Selected_2.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
			Selected_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Selected_2.BorderSizePixel = 0
			Selected_2.Position = UDim2.new(1, -110, 0, 7)
			Selected_2.Size = UDim2.new(0, 100, 0, 22)

			UICorner_25.CornerRadius = UDim.new(0, 5)
			UICorner_25.Parent = Selected_2

			UIStroke_4.Parent = Selected_2
			UIStroke_4.Color = Color3.fromRGB(255, 255, 255)
			UIStroke_4.Transparency = 0.860
			UIStroke_4.Thickness = 1.400

			SELECT_2.Name = "SELECT"
			SELECT_2.Parent = Selected_2
			SELECT_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SELECT_2.BackgroundTransparency = 1.000
			SELECT_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			SELECT_2.BorderSizePixel = 0
			SELECT_2.Size = UDim2.new(1, -20, 1, 0)
			SELECT_2.Font = Enum.Font.GothamBold
			SELECT_2.Text = ""
			SELECT_2.TextColor3 = Color3.fromRGB(222, 222, 222)
			SELECT_2.TextSize = 13.000
			SELECT_2.TextWrapped = true
			SELECT_2.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding_16.Parent = SELECT_2
			UIPadding_16.PaddingLeft = UDim.new(0, 8)

			if configdropdown.Description ~= nil and configdropdown.Description ~= "" then
				UIPadding_14.PaddingTop = UDim.new(0, 12)
				Selected_2.Position = UDim2.new(1, -110, 0, 7)
				Desc_4.Name = "Desc"
				Desc_4.Parent = Dropdown_2
				Desc_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Desc_4.BackgroundTransparency = 1.000
				Desc_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Desc_4.BorderSizePixel = 0
				Desc_4.Position = UDim2.new(0, 0, 0, 22)
				Desc_4.Size = UDim2.new(1, 0, 1, -22)
				Desc_4.Font = Enum.Font.GothamBold
				Desc_4.Text = configdropdown.Description
				Desc_4.TextColor3 = Color3.fromRGB(144, 144, 144)
				Desc_4.TextSize = 12.000
				Desc_4.TextXAlignment = Enum.TextXAlignment.Left
				Dropdown_2.Size = UDim2.new(1, 0, 0, 36 + Desc_4.TextBounds.Y + 2)
				Desc_4:GetPropertyChangedSignal("Text"):Connect(function()
					Dropdown_2.Size = UDim2.new(1, 0, 0, 36 + Desc_4.TextBounds.Y + 2)
				end)
				UIPadding_15.Parent = Desc_4
				UIPadding_15.PaddingBottom = UDim.new(0, 12)
				UIPadding_15.PaddingLeft = UDim.new(0, 12)
			end

			Icon_2.Name = "Icon"
			Icon_2.Parent = Selected_2
			Icon_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Icon_2.BackgroundTransparency = 1.000
			Icon_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Icon_2.BorderSizePixel = 0
			Icon_2.Position = UDim2.new(1, -20, 0, 7)
			Icon_2.Rotation = 90.000
			Icon_2.Size = UDim2.new(0, 9, 0, 9)
			Icon_2.Image = "rbxassetid://70714917134111"

			Click_13.Name = "Click"
			Click_13.Parent = Selected_2
			Click_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Click_13.BackgroundTransparency = 1.000
			Click_13.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Click_13.BorderSizePixel = 0
			Click_13.Size = UDim2.new(1, 0, 1, 0)
			Click_13.Font = Enum.Font.SourceSans
			Click_13.Text = ""
			Click_13.TextColor3 = Color3.fromRGB(0, 0, 0)
			Click_13.TextSize = 14.000

			Click_13.Activated:Connect(function()
				if ListDropdown.Position.X.Scale >= 1.5 then
					tweenservice:Create(
						ListDropdown,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Position = UDim2.new(1, -182, 0, 10)}
					):Play()
					CancelDrop.Visible = true
				end
			end)

			TextButton.Activated:Connect(function()
				if ListDropdown.Position.X.Scale < 1.5 then
					tweenservice:Create(
						ListDropdown,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Position = UDim2.new(1.5, -182, 0, 10)}
					):Play()
					CancelDrop.Visible = false
				end
			end)

			function DropFunc:Set(acc)
				DropFunc.Value = acc
				for _, Drop in Listed:GetChildren() do
					if Drop.Name ~= "UICorner" and Drop.Name ~= "UIPadding" and Drop.Name ~= "UIListLayout" then
						if typeof(DropFunc.Value) == "table" then
							if not table.find(DropFunc.Value, Drop.Selected.Text) then
								tweenservice:Create(Drop.Circle, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(0, -12, 0, 5)}):Play()
								tweenservice:Create(Drop.Selected, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {TextColor3 = Color3.fromRGB(100, 100, 100)}):Play()
								tweenservice:Create(Drop, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.999}):Play()
							elseif table.find(DropFunc.Value, Drop.Selected.Text) then
								tweenservice:Create(Drop.Circle, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(0, 2, 0, 5)}):Play()
								tweenservice:Create(Drop.Selected, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
								tweenservice:Create(Drop, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.930}):Play()
							end
						else
							if not string.find(Drop.Selected.Text, DropFunc.Value) then
								tweenservice:Create(Drop.Circle, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(0, -12, 0, 5)}):Play()
								tweenservice:Create(Drop.Selected, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {TextColor3 = Color3.fromRGB(100, 100, 100)}):Play()
								tweenservice:Create(Drop, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.999}):Play()
							elseif string.find(Drop.Selected.Text, DropFunc.Value) then
								tweenservice:Create(Drop.Circle, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(0, 2, 0, 5)}):Play()
								tweenservice:Create(Drop.Selected, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
								tweenservice:Create(Drop, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.930}):Play()
							end
						end
					end
				end
				if configdropdown.Multi and typeof(DropFunc.Value) == "table" then
					local DropdownValueTable = table.concat(DropFunc.Value, ", ")
					if DropdownValueTable == "" then
						SELECT_2.Text = "Selected : nil"
					else
						SELECT_2.Text = tostring(DropdownValueTable)
					end
					configdropdown.Callback(DropFunc.Value)
				elseif not configdropdown.Multi or typeof(DropFunc.Value) == "string" then
					SELECT_2.Text = tostring(DropFunc.Value)
					configdropdown.Callback(DropFunc.Value)
				end
			end
			function DropFunc:Set1(acc)
				DropFunc.Value = acc
				for i, v in pairs(Listed:GetChildren()) do
					if v.Name == "Options" then
						if v.Selected.Text == acc then
							for r, a in next, Listed:GetChildren() do
								if a.Name == "Options" then
									tweenservice:Create(a, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.999}):Play()
								end
							end
							for r, a in next, Listed:GetChildren() do
								if a.Name == "Options" then
									tweenservice:Create(a.Selected, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {TextColor3 = Color3.fromRGB(100, 100, 100)}):Play()
								end
							end
							for r, a in next, Listed:GetChildren() do
								if a.Name == "Options" then
									tweenservice:Create(a.Circle, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(0, -12, 0, 5)}):Play()
								end
							end
							tweenservice:Create(v.Circle, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(0, 2, 0, 5)}):Play()
							tweenservice:Create(v.Selected, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
							tweenservice:Create(v, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.930}):Play()
							SELECT_2.Text = tostring(DropFunc.Value)
							configdropdown.Callback(DropFunc.Value)
						end
					end
				end
			end
			function DropFunc:Add(Value)
				Value = Value or ""
				local Options_2 = Instance.new("Frame")
				local UICorner_34 = Instance.new("UICorner")
				local UICorner_35 = Instance.new("UICorner")
				local Title_13 = Instance.new("TextLabel")
				local Circle_8 = Instance.new("Frame")
				local UICorner_36 = Instance.new("UICorner")
				local Click_15 = Instance.new("TextButton")

				Options_2.Name = "Options"
				Options_2.Parent = Listed
				Options_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Options_2.BackgroundTransparency = 1.000
				Options_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Options_2.BorderSizePixel = 0
				Options_2.Size = UDim2.new(1, 0, 0, 30)
				Options_2.ZIndex = 2

				UICorner_34.CornerRadius = UDim.new(0, 4)
				UICorner_34.Parent = Options_2

				UICorner_35.CornerRadius = UDim.new(0, 4)
				UICorner_35.Parent = UICorner_34

				Title_13.Name = "Selected"
				Title_13.Parent = Options_2
				Title_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Title_13.BackgroundTransparency = 1.000
				Title_13.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Title_13.BorderSizePixel = 0
				Title_13.Position = UDim2.new(0, 12, 0, 0)
				Title_13.Size = UDim2.new(1, -12, 1, 0)
				Title_13.ZIndex = 2
				Title_13.Font = Enum.Font.GothamBold
				Title_13.Text = Value
				Title_13.TextColor3 = Color3.fromRGB(222, 222, 222)
				Title_13.TextSize = 13.000
				Title_13.TextXAlignment = Enum.TextXAlignment.Left

				Circle_8.Name = "Circle"
				Circle_8.Parent = Options_2
				Circle_8.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
				Circle_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Circle_8.BorderSizePixel = 0
				Circle_8.Position = UDim2.new(0, -12, 0, 5)
				Circle_8.Size = UDim2.new(0, 5, 0, 20)
				Circle_8.ZIndex = 2

				UICorner_36.CornerRadius = UDim.new(0, 4)
				UICorner_36.Parent = Circle_8

				Click_15.Name = "Click"
				Click_15.Parent = Options_2
				Click_15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Click_15.BackgroundTransparency = 1.000
				Click_15.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Click_15.BorderSizePixel = 0
				Click_15.Size = UDim2.new(1, 0, 1, 0)
				Click_15.ZIndex = 2
				Click_15.Font = Enum.Font.SourceSans
				Click_15.Text = ""
				Click_15.TextColor3 = Color3.fromRGB(0, 0, 0)
				Click_15.TextSize = 14.000

				Click_15.Activated:Connect(function()
					if configdropdown.Multi then
						if Options_2.BackgroundTransparency > 0.95 then
							table.insert(DropFunc.Value, Value)
							DropFunc:Set(DropFunc.Value)
						else
							for i, value in pairs(DropFunc.Value) do
								if value == Value then
									table.remove(DropFunc.Value, i)
									break
								end
							end
							DropFunc:Set(DropFunc.Value)
						end
					else
						DropFunc.Value = Value
						DropFunc:Set(DropFunc.Value)
					end
				end)
			end            
			function DropFunc:Refresh(RefreshList)
				RefreshList = RefreshList or {}
				Selecting = Selecting or {}
				for i, v in pairs(Listed:GetChildren()) do
					if v.Name == "Options" then
						v:Destroy()
					end
				end
				for _,v in pairs(RefreshList) do
					DropFunc:Add(v)
					wait()
				end
			end
			DropFunc:Refresh(DropFunc.Options)
			if typeof(DropFunc.Value) == "table" then
				DropFunc:Set(configdropdown.Default)
			else
				DropFunc:Set1(configdropdown.Default)
			end
			return DropFunc
		end
		function Feature:AddInput(configinput)
            configinput = configinput or {}
			configinput.Name = configinput.Name or "Input"
            configinput.Description = configinput.Description or ""
			configinput.PlaceHolderText = configinput.PlaceHolderText or "Input Here"
			configinput.Default = configinput.Default or ""
			configinput.Callback = configinput.Callback or function() end

			local Input = Instance.new("Frame")
			local Title_11 = Instance.new("TextLabel")
			local UIPadding_20 = Instance.new("UIPadding")
			local Desc_6 = Instance.new("TextLabel")
			local UIPadding_21 = Instance.new("UIPadding")
			local InputFrame = Instance.new("Frame")
			local UICorner_28 = Instance.new("UICorner")
			local TextBox = Instance.new("TextBox")
			local UICorner_29 = Instance.new("UICorner")

			Input.Name = "Input"
			Input.Parent = Channel
			Input.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Input.BackgroundTransparency = 0.950
			Input.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Input.BorderSizePixel = 0
			Input.Size = UDim2.new(1, 0, 0, 47)

			Title_11.Name = "Title"
			Title_11.Parent = Input
			Title_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title_11.BackgroundTransparency = 1.000
			Title_11.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Title_11.BorderSizePixel = 0
			Title_11.Size = UDim2.new(1, -40, 0, 20)
			Title_11.Font = Enum.Font.GothamBold
			Title_11.Text = configinput.Name
			Title_11.TextColor3 = Color3.fromRGB(222, 222, 222)
			Title_11.TextSize = 13.000
			Title_11.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding_20.Parent = Title_11
			UIPadding_20.PaddingLeft = UDim.new(0, 12)
			UIPadding_20.PaddingTop = UDim.new(0, 12)

			Desc_6.Name = "Desc"
			Desc_6.Parent = Input
			Desc_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Desc_6.BackgroundTransparency = 1.000
			Desc_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Desc_6.BorderSizePixel = 0
			Desc_6.Position = UDim2.new(0, 0, 0, 22)
			Desc_6.Size = UDim2.new(1, -150, 1, -22)
			Desc_6.Font = Enum.Font.GothamBold
			Desc_6.Text = configinput.Description
			Desc_6.TextColor3 = Color3.fromRGB(144, 144, 144)
			Desc_6.TextSize = 12.000
			Desc_6.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding_21.Parent = Desc_6
			UIPadding_21.PaddingBottom = UDim.new(0, 12)
			UIPadding_21.PaddingLeft = UDim.new(0, 12)

			InputFrame.Name = "InputFrame"
			InputFrame.Parent = Input
			InputFrame.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
			InputFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
			InputFrame.BorderSizePixel = 0
			InputFrame.Position = UDim2.new(1, -110, 0, 8)
			InputFrame.Size = UDim2.new(0, 90, 0, 30)

			UICorner_28.CornerRadius = UDim.new(0, 3)
			UICorner_28.Parent = InputFrame

			TextBox.Parent = InputFrame
			TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextBox.BackgroundTransparency = 1.000
			TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
			TextBox.BorderSizePixel = 0
			TextBox.ClipsDescendants = true
			TextBox.Size = UDim2.new(1, 0, 1, 0)
			TextBox.Font = Enum.Font.GothamBold
			TextBox.PlaceholderColor3 = Color3.fromRGB(110, 110, 110)
			TextBox.PlaceholderText = configinput.PlaceHolderText
			TextBox.Text = configinput.Default
			TextBox.TextColor3 = Color3.fromRGB(200, 200, 200)
			TextBox.TextSize = 12.000
			UICorner_29.Parent = Input
			TextBox.FocusLost:Connect(function()
				configinput.Callback(TextBox.Text)
			end)
		end
		function Feature:AddParagraph(configparagraph)
            configparagraph = configparagraph or {}
            configparagraph.Name = configparagraph.Name or "Paragraph"
            configparagraph.Description = configparagraph.Description or ""
            local Paragraph = Instance.new("Frame")
            local UICorner_26 = Instance.new("UICorner")
            local Title_9 = Instance.new("TextLabel")
            local UIPadding_17 = Instance.new("UIPadding")
            local Desc_6 = Instance.new("TextLabel")
            local UIPadding_18 = Instance.new("UIPadding")
            local ParagraphFunc = {}
            Paragraph.Name = "Paragraph"
            Paragraph.Parent = Channel
            Paragraph.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Paragraph.BackgroundTransparency = 0.950
            Paragraph.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Paragraph.BorderSizePixel = 0
            Paragraph.Size = UDim2.new(1, 0, 0, 36)
            
            UICorner_26.CornerRadius = UDim.new(0, 3)
            UICorner_26.Parent = Paragraph
            
            Title_9.Name = "Title"
            Title_9.Parent = Paragraph
            Title_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Title_9.BackgroundTransparency = 1.000
            Title_9.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Title_9.BorderSizePixel = 0
            Title_9.Size = UDim2.new(1, -40, 1, 0)
            Title_9.Font = Enum.Font.GothamBold
            Title_9.Text = configparagraph.Name
            Title_9.TextColor3 = Color3.fromRGB(222, 222, 222)
            Title_9.TextSize = 13.000
            Title_9.TextXAlignment = Enum.TextXAlignment.Left
            
            UIPadding_17.Parent = Title_9
            UIPadding_17.PaddingLeft = UDim.new(0, 12)
            
            if configparagraph.Description ~= nil and configparagraph.Description ~= "" then
                Title_9.Size = UDim2.new(1, -40, 0, 20)
                UIPadding_17.PaddingTop = UDim.new(0, 12)
                Desc_6.Name = "Desc"
                Desc_6.Parent = Paragraph
                Desc_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Desc_6.BackgroundTransparency = 1.000
                Desc_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Desc_6.BorderSizePixel = 0
                Desc_6.Position = UDim2.new(0, 0, 0, 22)
                Desc_6.Size = UDim2.new(1, 0, 1, -22)
                Desc_6.Font = Enum.Font.GothamBold
                Desc_6.Text = configparagraph.Description
                Desc_6.TextColor3 = Color3.fromRGB(144, 144, 144)
                Desc_6.TextSize = 12.000
                Desc_6.TextXAlignment = Enum.TextXAlignment.Left
                Paragraph.Size = UDim2.new(1, 0, 0, 36 + Desc_6.TextBounds.Y + 2)
                Desc_6:GetPropertyChangedSignal("Text"):Connect(function()
                    Paragraph.Size = UDim2.new(1, 0, 0, 36 + Desc_6.TextBounds.Y + 2)
                end)
                UIPadding_18.Parent = Desc_6
                UIPadding_18.PaddingBottom = UDim.new(0, 12)
                UIPadding_18.PaddingLeft = UDim.new(0, 12)
                function ParagraphFunc:SetDesc(args)
                    Desc_6.Text = args
                end
            end
            function ParagraphFunc:SetTitle(args)
                Title_9.Text = args
            end
            return ParagraphFunc
        end
        function Feature:AddSeperator(Te)
            local Seperator = Instance.new("TextLabel")
            Seperator.Name = "Seperator"
            Seperator.Parent = Channel
            Seperator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Seperator.BackgroundTransparency = 1.000
            Seperator.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Seperator.BorderSizePixel = 0
            Seperator.Size = UDim2.new(0, 200, 0, 30)
            Seperator.Font = Enum.Font.GothamBold
            Seperator.Text = Te
            Seperator.TextColor3 = Color3.fromRGB(200, 200, 200)
            Seperator.TextSize = 16.000
            Seperator.TextXAlignment = Enum.TextXAlignment.Left
        end
        return Feature
	end
	return Tabs
end
return Library
