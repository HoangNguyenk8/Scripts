local player = game.Players and game.Players.LocalPlayer
local tweenservice = game:GetService("TweenService")
local Mouse = player:GetMouse()
local UserInputService = game:GetService("UserInputService")
local Library = {}
local function Adddraggable(top, Object)
	local Dragging = nil
	local DragInput = nil
	local DragStart = nil
	local StartPosition = nil
	local function UpdatePos(input)
		local Delta = input.Position - DragStart
		local newPos = UDim2.new(
			StartPosition.X.Scale,
			StartPosition.X.Offset + Delta.X,
			StartPosition.Y.Scale,
			StartPosition.Y.Offset + Delta.Y
		)
		Object.Position = newPos
	end
	top.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			Dragging = true
			DragStart = input.Position
			StartPosition = Object.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					Dragging = false
				end
			end)
		end
	end)
	top.InputChanged:Connect(function(input)
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
if not getgenv().WhitelistedByNam then return end
local function AddCustomSized(Touched, Object)
	local Dragging = false
	local DragInput = nil
	local DragStart = nil
	local StartSize = nil
	local maxSizeX = Object.Size.X.Offset
	local maxSizeY = Object.Size.Y.Offset
	Object.Size = UDim2.new(0, maxSizeX, 0, maxSizeY)
	local changesizeobject = Instance.new("Frame");
	changesizeobject.AnchorPoint = Vector2.new(1, 1)
	changesizeobject.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	changesizeobject.BackgroundTransparency = 0.9990000128746033
	changesizeobject.BorderColor3 = Color3.fromRGB(0, 0, 0)
	changesizeobject.BorderSizePixel = 0
	changesizeobject.Position = UDim2.new(1, 20, 1, 20)
	changesizeobject.Size = UDim2.new(0, 40, 0, 40)
	changesizeobject.Name = "changesizeobject"
	changesizeobject.Parent = Touched
	local function UpdateSize(input)
		local Delta = input.Position - DragStart
		local newWidth = StartSize.X.Offset + Delta.X
		local newHeight = StartSize.Y.Offset + Delta.Y
		newWidth = math.max(newWidth, maxSizeX)
		newHeight = math.max(newHeight, maxSizeY)
		Object.Size = UDim2.new(0, newWidth, 0, newHeight)
	end
	changesizeobject.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			Dragging = true
			DragStart = input.Position
			StartSize = Object.Size
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					Dragging = false
				end
			end)
		end
	end)
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
local function UpSize(Scroll)
    local OffsetY = 0
    for _, child in Scroll:GetChildren() do
        if child.Name ~= "UIListLayout" and child.Name ~= "UIPadding" then
            OffsetY = OffsetY + Scroll.UIListLayout.Padding.Offset + child.Size.Y.Offset
        end
    end
    Scroll.CanvasSize = UDim2.new(0, 0, 0, OffsetY)
end
local function AutoUp(Scroll)
    Scroll.ChildAdded:Connect(function()
        UpSize(Scroll)
    end)
    Scroll.ChildRemoved:Connect(function()
        UpSize(Scroll)
    end)
end
local function MouseTo(part)
	part.MouseEnter:Connect(function()
		tweenservice:Create(part, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.920}):Play()
	end)
	part.MouseLeave:Connect(function()
		tweenservice:Create(part, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.960}):Play()
	end)
end
local function CircleClick(Button, X, Y)
	spawn(function()
		Button.ClipsDescendants = true
		local Circle = Instance.new("ImageLabel")
		Circle.Image = "rbxassetid://266543268"
		Circle.ImageColor3 = Color3.fromRGB(80, 80, 80)
		Circle.ImageTransparency = 0.8999999761581421
		Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Circle.BackgroundTransparency = 1
		Circle.ZIndex = 10
		Circle.Name = "Circle"
		Circle.Parent = Button

		local NewX = X - Circle.AbsolutePosition.X
		local NewY = Y - Circle.AbsolutePosition.Y
		Circle.Position = UDim2.new(0, NewX, 0, NewY)
		local Size = 0
		if Button.AbsoluteSize.X > Button.AbsoluteSize.Y then
			Size = Button.AbsoluteSize.X*1.5
		elseif Button.AbsoluteSize.X < Button.AbsoluteSize.Y then
			Size = Button.AbsoluteSize.Y*1.5
		elseif Button.AbsoluteSize.X == Button.AbsoluteSize.Y then
			Size = Button.AbsoluteSize.X*1.5
		end

		local Time = 0.5
		Circle:TweenSizeAndPosition(UDim2.new(0, Size, 0, Size), UDim2.new(0.5, -Size/2, 0.5, -Size/2), "Out", "Quad", Time, false, nil)
		for i=1,10 do
			Circle.ImageTransparency = Circle.ImageTransparency + 0.01
			wait(Time/10)
		end
		Circle:Destroy()
	end)
end
--------------------------------------------------------------------------------------------------------------------------------------------
local GUIPath = game.CoreGui
function Library:AddNotify(confignotify)
	confignotify = confignotify or {}
	confignotify.Title = confignotify.Title or "Notification"
	confignotify.Content = confignotify.Content or ""
	confignotify.Time = confignotify.Time or 5
	spawn(function()
		if not GUIPath:FindFirstChild("ZinnerNotify") then
			local ZinnerNotify = Instance.new("ScreenGui")
			ZinnerNotify.Name = "ZinnerNotify"
			ZinnerNotify.Parent = GUIPath
			ZinnerNotify.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		end
		if not GUIPath:WaitForChild("ZinnerNotify"):FindFirstChild("NotifyLayout") then
			local NotifyLayout = Instance.new("Frame")
			NotifyLayout.Name = "NotifyLayout"
			NotifyLayout.Parent = GUIPath:FindFirstChild("ZinnerNotify")
			NotifyLayout.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			NotifyLayout.BackgroundTransparency = 1.000
			NotifyLayout.BorderColor3 = Color3.fromRGB(0, 0, 0)
			NotifyLayout.BorderSizePixel = 0
			NotifyLayout.Position = UDim2.new(1, 350, 1, -131)
			NotifyLayout.Size = UDim2.new(0, 200, 0, 65)
			local Count = 0
			GUIPath:WaitForChild("ZinnerNotify").NotifyLayout.ChildRemoved:Connect(function()
				for r, v in next, GUIPath:WaitForChild("ZinnerNotify"):FindFirstChild("NotifyLayout"):GetChildren() do
					tweenservice:Create(v, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(0, 0, 1, -((v.Size.Y.Offset + 12) * Count))}):Play()
					Count = Count + 1
				end
			end)
		end
		local NotifyHeighst = 0
		for i, v in GUIPath:WaitForChild("ZinnerNotify").NotifyLayout:GetChildren() do
			NotifyHeighst = -(v.Position.Y.Offset) + v.Size.Y.Offset + 45
		end
		local NotifyFrame = Instance.new("Frame")
		local RealNotify = Instance.new("Frame")
		local UICorner = Instance.new("UICorner")
		local Title = Instance.new("TextLabel")
		local UIPadding = Instance.new("UIPadding")
		local IconFrame = Instance.new("Frame")
		local LogoHub = Instance.new("ImageLabel")
		local UIStroke = Instance.new("UIStroke")
		local UICorner_2 = Instance.new("UICorner")
		local CloseFrame = Instance.new("Frame")
		local Icon = Instance.new("ImageLabel")
		local Click = Instance.new("TextButton")
		local Desc = Instance.new("TextLabel")
		local UIPadding_2 = Instance.new("UIPadding")
		local DropShadowHolder = Instance.new("Frame")
		local DropShadow = Instance.new("ImageLabel")

		NotifyFrame.Name = "NotifyFrame"
		NotifyFrame.Parent = GUIPath:FindFirstChild("ZinnerNotify"):WaitForChild("NotifyLayout")
		NotifyFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		NotifyFrame.BackgroundTransparency = 1.000
		NotifyFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
		NotifyFrame.Position = UDim2.new(0, 0, 0 , -(NotifyHeighst) + 10)
		NotifyFrame.BorderSizePixel = 0
		NotifyFrame.Size = UDim2.new(1, 0, 1, 0)

		RealNotify.Name = "RealNotify"
		RealNotify.Parent = NotifyFrame
		RealNotify.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
		RealNotify.BorderColor3 = Color3.fromRGB(0, 0, 0)
		RealNotify.BorderSizePixel = 0
		RealNotify.Position = UDim2.new(0, 0, 0, 0)
		RealNotify.Size = UDim2.new(1, 0, 1, 0)

		UICorner.Parent = RealNotify

		Title.Name = "Title"
		Title.Parent = RealNotify
		Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title.BackgroundTransparency = 1.000
		Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Title.BorderSizePixel = 0
		Title.Position = UDim2.new(0, 0, 0, 4)
		Title.Size = UDim2.new(1, 0, 0, 18)
		Title.Font = Enum.Font.GothamBold
		Title.Text = confignotify.Title
		Title.TextColor3 = Color3.fromRGB(235, 46, 54)
		Title.TextSize = 13.000
		Title.TextWrapped = true
		Title.TextXAlignment = Enum.TextXAlignment.Left

		UIPadding.Parent = Title
		UIPadding.PaddingLeft = UDim.new(0, 28)
		UIPadding.PaddingTop = UDim.new(0, 6)

		IconFrame.Name = "IconFrame"
		IconFrame.Parent = RealNotify
		IconFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		IconFrame.BackgroundTransparency = 1.000
		IconFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
		IconFrame.BorderSizePixel = 0
		IconFrame.Position = UDim2.new(0, 3, 0, 5)
		IconFrame.Size = UDim2.new(0, 22, 0, 22)

		LogoHub.Name = "Logo Hub"
		LogoHub.Parent = IconFrame
		LogoHub.AnchorPoint = Vector2.new(0.5, 0.5)
		LogoHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		LogoHub.BackgroundTransparency = 1.000
		LogoHub.BorderColor3 = Color3.fromRGB(0, 0, 0)
		LogoHub.BorderSizePixel = 0
		LogoHub.Position = UDim2.new(0.5, 0, 0.5, 0)
		LogoHub.Size = UDim2.new(0, 35, 0, 35)
		LogoHub.Image = "http://www.roblox.com/asset/?id=105749610531578"

		UIStroke.Parent = IconFrame
		UIStroke.Color = Color3.fromRGB(255, 255, 255)
		UIStroke.Transparency = 0.960
		UIStroke.Thickness = 0.700

		UICorner_2.CornerRadius = UDim.new(1, 0)
		UICorner_2.Parent = IconFrame

		CloseFrame.Name = "CloseFrame"
		CloseFrame.Parent = RealNotify
		CloseFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		CloseFrame.BackgroundTransparency = 1.000
		CloseFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
		CloseFrame.BorderSizePixel = 0
		CloseFrame.Position = UDim2.new(1, -20, 0, 3)
		CloseFrame.Size = UDim2.new(0, 18, 0, 18)

		Icon.Name = "Icon"
		Icon.Parent = CloseFrame
		Icon.AnchorPoint = Vector2.new(0.5, 0.5)
		Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Icon.BackgroundTransparency = 1.000
		Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Icon.BorderSizePixel = 0
		Icon.Position = UDim2.new(0.5, 0, 0.5, 0)
		Icon.Size = UDim2.new(1, -8, 1, -8)
		Icon.Image = "rbxassetid://126213315718012"

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
		Desc.Parent = RealNotify
		Desc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Desc.BackgroundTransparency = 1.000
		Desc.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Desc.BorderSizePixel = 0
		Desc.Position = UDim2.new(0, 0, 0, 25)
		Desc.Size = UDim2.new(1, 0, 1, -25)
		Desc.Font = Enum.Font.GothamBold
		Desc.Text = confignotify.Content
		Desc.TextColor3 = Color3.fromRGB(100, 100, 100)
		Desc.TextSize = 12.000
		Desc.TextWrapped = true
		Desc.TextXAlignment = Enum.TextXAlignment.Left
		Desc.TextYAlignment = Enum.TextYAlignment.Top

		UIPadding_2.Parent = Desc
		UIPadding_2.PaddingLeft = UDim.new(0, 7)
		UIPadding_2.PaddingRight = UDim.new(0, 7)
		UIPadding_2.PaddingTop = UDim.new(0, 1)

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
		DropShadow.Size = UDim2.new(1, 46, 1, 46)
		DropShadow.ZIndex = 0
		DropShadow.Image = "rbxassetid://6015897843"
		DropShadow.ImageColor3 = Color3.fromRGB(200, 61, 60)
		DropShadow.ImageTransparency = 0.670
		DropShadow.ScaleType = Enum.ScaleType.Slice
		DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)
		local wait = false
		function Close()
			if wait then return end
			wait = true
			tweenservice:Create(RealNotify, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(0, 0, 0, -(NotifyHeighst) - 12)}):Play()
			task.wait(tonumber(confignotify.Time) / 1.2)
			GUIPath:WaitForChild("ZinnerNotify").NotifyLayout:Destroy()
		end
		tweenservice:Create(RealNotify, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(0, -600, 0, -(NotifyHeighst) - 12)}):Play()
		Click.Activated:Connect(function()
			Close()
		end)
	end)
end
function Library:AddWindow()
	local ZinnerScreen = Instance.new("ScreenGui")
	local Main = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local DropShadowHolder = Instance.new("Frame")
	local DropShadow = Instance.new("ImageLabel")
	local Top = Instance.new("Frame")
	local TitleHub = Instance.new("TextLabel")
	local IconFrame = Instance.new("Frame")
	local LogoHub = Instance.new("ImageLabel")
	local UIStroke = Instance.new("UIStroke")
	local UICorner_2 = Instance.new("UICorner")
	local Description = Instance.new("TextLabel")
	local UIContoller = Instance.new("Frame")
	local Minized = Instance.new("Frame")
	local Icon1 = Instance.new("ImageLabel")
	local Click = Instance.new("TextButton")
	local Closed = Instance.new("Frame")
	local Icon2 = Instance.new("ImageLabel")
	local Click_2 = Instance.new("TextButton")
	local TabFrame = Instance.new("Frame")
	local TabHolder = Instance.new("ScrollingFrame")
	local UIListLayout = Instance.new("UIListLayout")
	local UIPadding = Instance.new("UIPadding")
	local Layout = Instance.new("Frame")
	local UICorner_7 = Instance.new("UICorner")
	local Hide = Instance.new("Frame")
	local Hide1 = Instance.new("Frame")
	local RealLayout = Instance.new("Frame")
	local ChannelFolder = Instance.new("Folder")
	local NiGo = Instance.new("UIPageLayout")
	local LoadFrame = Instance.new("Frame")
	local ZINNERICON = Instance.new("ImageLabel")
	local Up = Instance.new("ImageLabel")
	local UICorner_30 = Instance.new("UICorner")
	local Down = Instance.new("ImageLabel")
	local UICorner_31 = Instance.new("UICorner")
	local Wife = Instance.new("ImageLabel")
	local IntroTEXT = Instance.new("TextLabel")
	local MinizedUi = Instance.new("Frame")
	local UICorner_32 = Instance.new("UICorner")
	local Logozinner = Instance.new("ImageLabel")
	local CLICKED = Instance.new("TextButton")

	ZinnerScreen.Name = "ZinnerScreen"
	ZinnerScreen.Parent = GUIPath

	Main.Name = "Main"
	Main.Parent = ZinnerScreen
	Main.AnchorPoint = Vector2.new(0.5, 0.5)
	Main.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Main.BorderSizePixel = 0
	Main.Position = UDim2.new(0.5, 0, 0.5, 0)
	Main.Size = UDim2.new(0, 445, 0, 333)
	Main.ClipsDescendants = true

	LoadFrame.Name = "LoadFrame"
	LoadFrame.Parent = Main
	LoadFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LoadFrame.BackgroundTransparency = 1.000
	LoadFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	LoadFrame.BorderSizePixel = 0
	LoadFrame.ClipsDescendants = true
	LoadFrame.Size = UDim2.new(1, 0, 1, 0)

	ZINNERICON.Name = "ZINNER ICON"
	ZINNERICON.Parent = LoadFrame
	ZINNERICON.AnchorPoint = Vector2.new(0.5, 0.5)
	ZINNERICON.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ZINNERICON.BackgroundTransparency = 1.000
	ZINNERICON.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ZINNERICON.BorderSizePixel = 0
	ZINNERICON.ImageTransparency = 1.000
	ZINNERICON.Position = UDim2.new(0.5, 0, 0.439999998, 0)
	ZINNERICON.Size = UDim2.new(0, 353, 0, 173)
	ZINNERICON.Image = "rbxassetid://111796180446551"

	Up.Name = "Up"
	Up.Parent = LoadFrame
	Up.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Up.BackgroundTransparency = 1.000
	Up.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Up.BorderSizePixel = 0
	Up.Position = UDim2.new(1.442696631, 0, -0.0360360369, 0)
	Up.Size = UDim2.new(0, 260, 0, 167)
	Up.Image = "rbxassetid://73877455473469"
	Up.ImageColor3 = Color3.fromRGB(255, 0, 0)

	UICorner_30.CornerRadius = UDim.new(0, 45)
	UICorner_30.Parent = Up

	Down.Name = "Down"
	Down.Parent = LoadFrame
	Down.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Down.BackgroundTransparency = 1.000
	Down.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Down.BorderSizePixel = 0
	Down.Position = UDim2.new(-1.0224719103, 0, 0.510510504, 0)
	Down.Size = UDim2.new(0, 283, 0, 174)
	Down.Image = "rbxassetid://103295481546738"

	UICorner_31.CornerRadius = UDim.new(0, 45)
	UICorner_31.Parent = Down

	Wife.Name = "Wife"
	Wife.Parent = LoadFrame
	Wife.AnchorPoint = Vector2.new(0.5, 0.5)
	Wife.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Wife.BackgroundTransparency = 1.000
	Wife.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Wife.BorderSizePixel = 0
	Wife.Position = UDim2.new(0.5, 0, 0.400000006, 0)
	Wife.Size = UDim2.new(0, 154, 0, 154)
	Wife.ImageTransparency = 1.000
	Wife.Image = "rbxassetid://122610124614709"

	IntroTEXT.Name = "IntroTEXT"
	IntroTEXT.Parent = LoadFrame
	IntroTEXT.AnchorPoint = Vector2.new(0.5, 0.5)
	IntroTEXT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	IntroTEXT.BackgroundTransparency = 1.000
	IntroTEXT.BorderColor3 = Color3.fromRGB(0, 0, 0)
	IntroTEXT.BorderSizePixel = 0
	IntroTEXT.Position = UDim2.new(0.5, 0, 0.720000029, 0)
	IntroTEXT.Size = UDim2.new(0, 200, 0, 201)
	IntroTEXT.TextTransparency = 1.000
	IntroTEXT.Font = Enum.Font.GothamBold
	IntroTEXT.Text = "THANKS FOR USE.\nUSE SWIFT, WAVE OR ARGON TO GET BEST PERFORMANCE"
	IntroTEXT.TextColor3 = Color3.fromRGB(250, 224, 228)
	IntroTEXT.TextSize = 13.000

	UICorner.CornerRadius = UDim.new(0, 12)
	UICorner.Parent = Main
	Top.Position = UDim2.new(0, 500, 0, 0)
	TabFrame.Position = UDim2.new(0, -300, 0, 50)
	Layout.Position = UDim2.new(0, 500, 0, 50)
	tweenservice:Create(Up, TweenInfo.new(3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(0.442696631, 0, -0.0360360369, 0)}):Play()
	tweenservice:Create(Down, TweenInfo.new(3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(-0.0224719103, 0, 0.510510504, 0)}):Play()
	tweenservice:Create(ZINNERICON, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {ImageTransparency = 0}):Play()
	wait(5)
	tweenservice:Create(Up, TweenInfo.new(3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(1.447191, 250, -0.0510510504, 0)}):Play()
	tweenservice:Create(Down, TweenInfo.new(3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(-1.0202247184, -250, 0.537537515, 0)}):Play()
	tweenservice:Create(ZINNERICON, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {ImageTransparency = 1.000}):Play()
	wait(2)
	tweenservice:Create(IntroTEXT, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {TextTransparency = 0}):Play()
	tweenservice:Create(Wife, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {ImageTransparency = 0}):Play()
	wait(3)
	tweenservice:Create(IntroTEXT, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {TextTransparency = 1.000}):Play()
	tweenservice:Create(Wife, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {ImageTransparency = 1.000}):Play()
	wait(2)
	local aa = tweenservice:Create(Top, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(0, 0, 0, 0)})
	aa.Completed:Connect(function()
		Main.ClipsDescendants = false
		Up.Visible = false
		Down.Visible = false
	end)
	aa:Play()
	tweenservice:Create(TabFrame, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(0, 0, 0, 50)}):Play()
	tweenservice:Create(Layout, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(0, 145, 0, 50)}):Play()

	MinizedUi.Name = "MinizedUi"
	MinizedUi.Parent = ZinnerScreen
	MinizedUi.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	MinizedUi.BorderColor3 = Color3.fromRGB(0, 0, 0)
	MinizedUi.BorderSizePixel = 0
	MinizedUi.Position = UDim2.new(0.154006243, 0, 0.136178866, 0)
	MinizedUi.Size = UDim2.new(0, 55, 0, 55)

	UICorner_32.Parent = MinizedUi

	Logozinner.Name = "Logo zinner"
	Logozinner.Parent = MinizedUi
	Logozinner.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Logozinner.BackgroundTransparency = 1.000
	Logozinner.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Logozinner.BorderSizePixel = 0
	Logozinner.Size = UDim2.new(1, 0, 1, 0)
	Logozinner.Image = "rbxassetid://121949894624473"

	CLICKED.Name = "CLICKED"
	CLICKED.Parent = MinizedUi
	CLICKED.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	CLICKED.BackgroundTransparency = 1.000
	CLICKED.BorderColor3 = Color3.fromRGB(0, 0, 0)
	CLICKED.BorderSizePixel = 0
	CLICKED.Size = UDim2.new(1, 0, 1, 0)
	CLICKED.Font = Enum.Font.SourceSans
	CLICKED.Text = ""
	CLICKED.TextColor3 = Color3.fromRGB(0, 0, 0)
	CLICKED.TextSize = 14.000
	CLICKED.Activated:Connect(function()
		local MainPos = Main.Position
		if Main.Visible then
			local aa = tweenservice:Create(Top, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(1.3, 0, 0, 0)})
			local aaa = tweenservice:Create(TabFrame, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(-1, 0, 0, 50)})
			local aaaa = tweenservice:Create(Layout, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(1, 500, 0, 50)})
			Main.ClipsDescendants = true
			aa.Completed:Connect(function()
				Up.Visible = true
				Down.Visible = true
			end)
			aa:Play()
			aaa:Play()
			aaaa:Play()
			wait(1.5)
			tweenservice:Create(ZINNERICON, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {ImageTransparency = 0}):Play()
			wait(2)
			local tweenui = tweenservice:Create(Main, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(MainPos.X.Scale, MainPos.X.Offset, 1.5, MainPos.Y.Offset)})
			tweenui:Play()
			tweenui.Completed:Connect(function()
				Main.Visible = false
			end)
			aa:Play()
			aaa:Play()
			aaaa:Play()
		else
			Main.Visible = true
			local tweenui = tweenservice:Create(Main, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(MainPos.X.Scale, MainPos.X.Offset, 0.5, MainPos.Y.Offset)})
			tweenui:Play()
			wait(1)
			tweenservice:Create(ZINNERICON, TweenInfo.new(1.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {ImageTransparency = 1.000}):Play()
			wait(1.5)
			local aa = tweenservice:Create(Top, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(0, 0, 0, 0)})
			local aaa = tweenservice:Create(TabFrame, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(0, 0, 0, 50)})
			local aaaa = tweenservice:Create(Layout, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(0, 145, 0, 50)})
			aa:Play()
			aaa:Play()
			aaaa:Play()
		end
	end)	

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
	DropShadow.Position = UDim2.new(0.508988738, 0, 0.5, 0)
	DropShadow.Size = UDim2.new(1, 46, 1, 46)
	DropShadow.ZIndex = 0
	DropShadow.Image = "rbxassetid://6015897843"
	DropShadow.ImageColor3 = Color3.fromRGB(200, 61, 60)
	DropShadow.ImageTransparency = 0.670
	DropShadow.ScaleType = Enum.ScaleType.Slice
	DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

	Top.Name = "Top"
	Top.Parent = Main
	Top.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Top.BackgroundTransparency = 1.000
	Top.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Top.BorderSizePixel = 0
	Top.Size = UDim2.new(1, 0, 0, 60)

	TitleHub.Name = "Title Hub"
	TitleHub.Parent = Top
	TitleHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TitleHub.BackgroundTransparency = 1.000
	TitleHub.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TitleHub.BorderSizePixel = 0
	TitleHub.Position = UDim2.new(0, 49, 0, 7)
	TitleHub.Size = UDim2.new(0, 200, 0, 40)
	TitleHub.Font = Enum.Font.GothamBold
	TitleHub.Text = "ZINNER HUB"
	TitleHub.TextColor3 = Color3.fromRGB(225, 41, 53)
	TitleHub.TextSize = 13.000
	TitleHub.TextXAlignment = Enum.TextXAlignment.Left

	IconFrame.Name = "IconFrame"
	IconFrame.Parent = Top
	IconFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	IconFrame.BackgroundTransparency = 1.000
	IconFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	IconFrame.BorderSizePixel = 0
	IconFrame.Position = UDim2.new(0, 12, 0, 10)
	IconFrame.Size = UDim2.new(0, 30, 0, 30)

	LogoHub.Name = "Logo Hub"
	LogoHub.Parent = IconFrame
	LogoHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LogoHub.BackgroundTransparency = 1.000
	LogoHub.BorderColor3 = Color3.fromRGB(0, 0, 0)
	LogoHub.BorderSizePixel = 0
	LogoHub.Position = UDim2.new(0, -10, 0, -9)
	LogoHub.Size = UDim2.new(0, 50, 0, 50)
	LogoHub.Image = "http://www.roblox.com/asset/?id=105749610531578"

	UIStroke.Parent = IconFrame
	UIStroke.Color = Color3.fromRGB(255, 255, 255)
	UIStroke.Transparency = 0.960
	UIStroke.Thickness = 0.700

	UICorner_2.CornerRadius = UDim.new(1, 0)
	UICorner_2.Parent = IconFrame

	Description.Name = "Description"
	Description.Parent = Top
	Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Description.BackgroundTransparency = 1.000
	Description.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Description.BorderSizePixel = 0
	Description.Position = UDim2.new(0, 127, 0, 7)
	Description.Size = UDim2.new(0, 200, 0, 40)
	Description.Font = Enum.Font.GothamBold
	Description.Text = "[VERSION 1.0] BY Nam"
	Description.TextColor3 = Color3.fromRGB(100, 100, 100)
	Description.TextSize = 13.000
	Description.TextXAlignment = Enum.TextXAlignment.Left

	UIContoller.Name = "UIContoller"
	UIContoller.Parent = Top
	UIContoller.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	UIContoller.BackgroundTransparency = 1.000
	UIContoller.BorderColor3 = Color3.fromRGB(0, 0, 0)
	UIContoller.BorderSizePixel = 0
	UIContoller.Position = UDim2.new(1, -85, 0, 7)
	UIContoller.Size = UDim2.new(0, 80, 0, 35)

	Minized.Name = "Minized"
	Minized.Parent = UIContoller
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
	Icon1.Image = "http://www.roblox.com/asset/?id=131729320147963"

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

	Closed.Name = "Closed"
	Closed.Parent = UIContoller
	Closed.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Closed.BackgroundTransparency = 1.000
	Closed.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Closed.BorderSizePixel = 0
	Closed.Position = UDim2.new(0, 40, 0, 0)
	Closed.Size = UDim2.new(0, 40, 1, 0)

	Icon2.Name = "Icon2"
	Icon2.Parent = Closed
	Icon2.AnchorPoint = Vector2.new(0.5, 0.5)
	Icon2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Icon2.BackgroundTransparency = 1.000
	Icon2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Icon2.BorderSizePixel = 0
	Icon2.Position = UDim2.new(0.5, 0, 0.5, 0)
	Icon2.Size = UDim2.new(0, 12, 0, 12)
	Icon2.Image = "http://www.roblox.com/asset/?id=134476004377628"
	Icon2.ImageColor3 = Color3.fromRGB(138, 138, 138)

	Click_2.Name = "Click"
	Click_2.Parent = Closed
	Click_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Click_2.BackgroundTransparency = 1.000
	Click_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Click_2.BorderSizePixel = 0
	Click_2.Size = UDim2.new(1, 0, 1, 0)
	Click_2.Font = Enum.Font.SourceSans
	Click_2.Text = ""
	Click_2.TextColor3 = Color3.fromRGB(0, 0, 0)
	Click_2.TextSize = 14.000

	TabFrame.Name = "TabFrame"
	TabFrame.Parent = Main
	TabFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TabFrame.BackgroundTransparency = 1.000
	TabFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TabFrame.BorderSizePixel = 0
	TabFrame.Size = UDim2.new(0, 145, 1, -50)

	TabHolder.Name = "Tab Holder"
	TabHolder.Parent = TabFrame
	TabHolder.AnchorPoint = Vector2.new(0.5, 0.5)
	TabHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TabHolder.BackgroundTransparency = 1.000
	TabHolder.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TabHolder.BorderSizePixel = 0
	TabHolder.Position = UDim2.new(0.5, 0, 0.5, 0)
	TabHolder.Size = UDim2.new(1, -5, 1, -5)
	TabHolder.ScrollBarThickness = 0

	UIListLayout.Parent = TabHolder
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 7)

	UIPadding.Parent = TabHolder
	UIPadding.PaddingBottom = UDim.new(0, 2)
	UIPadding.PaddingLeft = UDim.new(0, 2)
	UIPadding.PaddingRight = UDim.new(0, 2)
	UIPadding.PaddingTop = UDim.new(0, 2)

	Layout.Name = "Layout"
	Layout.Parent = Main
	Layout.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	Layout.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Layout.BorderSizePixel = 0
	Layout.Size = UDim2.new(1, -145, 1, -50)

	UICorner_7.CornerRadius = UDim.new(0, 12)
	UICorner_7.Parent = Layout

	Hide.Name = "Hide"
	Hide.Parent = Layout
	Hide.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	Hide.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Hide.BorderSizePixel = 0
	Hide.Size = UDim2.new(1, 0, 0, 20)

	Hide1.Name = "Hide1"
	Hide1.Parent = Layout
	Hide1.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	Hide1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Hide1.BorderSizePixel = 0
	Hide1.Size = UDim2.new(0, 20, 1, 0)

	RealLayout.Name = "RealLayout"
	RealLayout.Parent = Layout
	RealLayout.AnchorPoint = Vector2.new(0.5, 0.5)
	RealLayout.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	RealLayout.BackgroundTransparency = 1.000
	RealLayout.BorderColor3 = Color3.fromRGB(0, 0, 0)
	RealLayout.BorderSizePixel = 0
	RealLayout.Position = UDim2.new(0.5, 0, 0.5, 0)
	RealLayout.Size = UDim2.new(1, -5, 1, -5)
	RealLayout.ClipsDescendants = true

	ChannelFolder.Name = "Channel Folder"
	ChannelFolder.Parent = RealLayout

	NiGo.Name = "Ni Go"
	NiGo.Parent = ChannelFolder
	NiGo.SortOrder = Enum.SortOrder.LayoutOrder
	NiGo.EasingStyle = Enum.EasingStyle.Quart
	NiGo.GamepadInputEnabled = false
	NiGo.TouchInputEnabled = false
	NiGo.ScrollWheelInputEnabled = false
	NiGo.TweenTime = 0.400

	AutoUp(TabHolder)
	Adddraggable(Top, Main)
	Adddraggable(CLICKED, MinizedUi)
	AddCustomSized(Main, Main)
	local Counts = 0
	local Tabs = {}
	function Tabs:AddTab(configtab)
		configtab = configtab or {}
		configtab.Name = configtab.Name or "Tab 1"
		configtab.Icon = configtab.Icon or ""

		local TabDisable = Instance.new("Frame")
		local UICorner_5 = Instance.new("UICorner")
		local IconTab_2 = Instance.new("ImageLabel")
		local NameTab_2 = Instance.new("TextLabel")
		local UIPadding_3 = Instance.new("UIPadding")
		local Circle_2 = Instance.new("Frame")
		local UICorner_6 = Instance.new("UICorner")
		local Click_4 = Instance.new("TextButton")
		local Channel = Instance.new("ScrollingFrame")
		local UIPadding_4 = Instance.new("UIPadding")
		local UIListLayout_2 = Instance.new("UIListLayout")

		Channel.Name = "Channel"
		Channel.Parent = ChannelFolder
		Channel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Channel.BackgroundTransparency = 1.000
		Channel.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Channel.BorderSizePixel = 0
		Channel.Size = UDim2.new(1, 0, 1, 0)
		Channel.ScrollBarThickness = 0
		Channel.LayoutOrder = Counts

		UIPadding_4.Parent = Channel
		UIPadding_4.PaddingBottom = UDim.new(0, 3)
		UIPadding_4.PaddingLeft = UDim.new(0, 3)
		UIPadding_4.PaddingRight = UDim.new(0, 3)
		UIPadding_4.PaddingTop = UDim.new(0, 3)

		UIListLayout_2.Parent = Channel
		UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_2.Padding = UDim.new(0, 5)

		TabDisable.Name = "Tab Disable"
		TabDisable.Parent = TabHolder
		TabDisable.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabDisable.BackgroundTransparency = 1.000
		TabDisable.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TabDisable.BorderSizePixel = 0
		TabDisable.Size = UDim2.new(1, 0, 0, 35)
		if Counts == 0 then
			TabDisable.BackgroundTransparency = 0.930
		else
			TabDisable.BackgroundTransparency = 1.000
		end

		UICorner_5.CornerRadius = UDim.new(0, 4)
		UICorner_5.Parent = TabDisable

		IconTab_2.Name = "IconTab"
		IconTab_2.Parent = TabDisable
		IconTab_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		IconTab_2.BackgroundTransparency = 1.000
		IconTab_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
		IconTab_2.BorderSizePixel = 0
		IconTab_2.Position = UDim2.new(0, 14, 0, 7)
		IconTab_2.Size = UDim2.new(0, 20, 0, 20)
		IconTab_2.Image = configtab.Icon
		IconTab_2.ImageColor3 = Color3.fromRGB(122, 122, 122)

		NameTab_2.Name = "NameTab"
		NameTab_2.Parent = TabDisable
		NameTab_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		NameTab_2.BackgroundTransparency = 1.000
		NameTab_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
		NameTab_2.BorderSizePixel = 0
		NameTab_2.Position = UDim2.new(0, 30, 0, 0)
		NameTab_2.Size = UDim2.new(1, -30, 1, 0)
		NameTab_2.Font = Enum.Font.GothamBold
		NameTab_2.Text = configtab.Name
		NameTab_2.TextColor3 = Color3.fromRGB(122, 122, 122)
		NameTab_2.TextSize = 14.000
		NameTab_2.TextXAlignment = Enum.TextXAlignment.Left

		UIPadding_3.Parent = NameTab_2
		UIPadding_3.PaddingLeft = UDim.new(0, 12)

		Click_4.Name = "Click"
		Click_4.Parent = TabDisable
		Click_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Click_4.BackgroundTransparency = 1.000
		Click_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Click_4.BorderSizePixel = 0
		Click_4.Size = UDim2.new(1, 0, 1, 0)
		Click_4.Font = Enum.Font.SourceSans
		Click_4.Text = ""
		Click_4.TextColor3 = Color3.fromRGB(0, 0, 0)
		Click_4.TextSize = 14.000
		if Counts == 0 then
			NiGo:JumpToIndex(0)
			IconTab_2.ImageColor3 = Color3.fromRGB(255, 255, 255)
			NameTab_2.TextColor3 = Color3.fromRGB(255, 255, 255)
			Circle_2.Name = "Circle"
			Circle_2.Parent = TabDisable
			Circle_2.BackgroundColor3 = Color3.fromRGB(200, 61, 60)
			Circle_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Circle_2.BorderSizePixel = 0
			Circle_2.Position = UDim2.new(0, 2, 0, 6)
			Circle_2.Size = UDim2.new(0, 5, 0, 23)
		else
			NameTab_2.TextColor3 = Color3.fromRGB(144, 144, 144)
			IconTab_2.ImageColor3 = Color3.fromRGB(122, 122, 122)
			Circle_2.Name = "Circle"
			Circle_2.Parent = TabDisable
			Circle_2.BackgroundColor3 = Color3.fromRGB(200, 61, 60)
			Circle_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Circle_2.BorderSizePixel = 0
			Circle_2.Position = UDim2.new(0, -10, 0, 6)
			Circle_2.Size = UDim2.new(0, 5, 0, 23)
		end
		UICorner_6.Parent = Circle_2
		Click_4.Activated:Connect(function()
			CircleClick(Click_4, Mouse.X, Mouse.Y)
			for r, v in pairs(TabHolder:GetChildren()) do
				if v:IsA("Frame") then
					tweenservice:Create(v, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundTransparency = 1.000}):Play()
				end
			end
			for r, v in pairs(TabHolder:GetChildren()) do
				for r1, v1 in pairs(v:GetChildren()) do
					if v1:IsA("Frame") then
						tweenservice:Create(v1, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(0, -10, 0, 6)}):Play()
					end
				end
			end
			for r, v in pairs(TabHolder:GetChildren()) do
				for r1, v1 in pairs(v:GetChildren()) do
					if v1:IsA("TextLabel") then
						tweenservice:Create(v1, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {TextColor3 = Color3.fromRGB(144, 144, 144)}):Play()
					end
				end
			end
			for r, v in pairs(TabHolder:GetChildren()) do
				for r1, v1 in pairs(v:GetChildren()) do
					if v1:IsA("ImageLabel") then
						tweenservice:Create(v1, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {ImageColor3 = Color3.fromRGB(122, 122, 122)}):Play()
					end
				end
			end
			tweenservice:Create(IconTab_2, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {ImageColor3 = Color3.fromRGB(255, 255, 255)}):Play()
			tweenservice:Create(TabDisable, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.930}):Play()
			tweenservice:Create(Circle_2, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(0, 2, 0, 6)}):Play()
			tweenservice:Create(NameTab_2, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
			NiGo:JumpToIndex(Channel.LayoutOrder)
		end)
		AutoUp(Channel)
		Counts = Counts + 1
		local Features = {}
		function Features:AddSeperator(configsepearator)
			local Seperator = Instance.new("Frame")
			local Title = Instance.new("TextLabel")
			local Left = Instance.new("ImageLabel")
			local Right = Instance.new("ImageLabel")

			Seperator.Name = "Seperator"
			Seperator.Parent = Channel
			Seperator.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			Seperator.BackgroundTransparency = 1.000
			Seperator.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Seperator.BorderSizePixel = 0
			Seperator.Size = UDim2.new(1, 0, 0, 36)

			Title.Name = "Title"
			Title.Parent = Seperator
			Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title.BackgroundTransparency = 1.000
			Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Title.BorderSizePixel = 0
			Title.Size = UDim2.new(1, 0, 1, 0)
			Title.Font = Enum.Font.GothamBold
			Title.Text = configsepearator
			Title.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title.TextSize = 13.000

			Left.Name = "Left"
			Left.Parent = Seperator
			Left.BackgroundColor3 = Color3.fromRGB(225, 41, 53)
			Left.BackgroundTransparency = 1.000
			Left.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Left.BorderSizePixel = 0
			Left.Position = UDim2.new(0, 4, 0, 8)
			Left.Rotation = 180.000
			Left.Size = UDim2.new(0, 20, 0, 20)
			Left.Image = "http://www.roblox.com/asset/?id=110651762258859"
			Left.ImageColor3 = Color3.fromRGB(225, 41, 53)

			Right.Name = "Right"
			Right.Parent = Seperator
			Right.BackgroundColor3 = Color3.fromRGB(225, 41, 53)
			Right.BackgroundTransparency = 1.000
			Right.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Right.BorderSizePixel = 0
			Right.Position = UDim2.new(1, -24, 0, 8)
			Right.Size = UDim2.new(0, 20, 0, 20)
			Right.Image = "http://www.roblox.com/asset/?id=110651762258859"
			Right.ImageColor3 = Color3.fromRGB(225, 41, 53)
		end
		function Features:AddParagraph(configparagraph)
			configparagraph = configparagraph or {}
			configparagraph.Name = configparagraph.Name or {}
			configparagraph.Description = configparagraph.Description or ""
			configparagraph.Icon = configparagraph.Icon or "http://www.roblox.com/asset/?id=107282791510689"

			local Paragraph = Instance.new("Frame")
			local Icon = Instance.new("Frame")
			local IconReal = Instance.new("ImageLabel")
			local Title_2 = Instance.new("TextLabel")
			local UIPadding_5 = Instance.new("UIPadding")
			local Descr = Instance.new("TextLabel")
			local UIPadding_6 = Instance.new("UIPadding")
			local UICorner_8 = Instance.new("UICorner")
			local ParagraphFunc = {}

			Paragraph.Name = "Paragraph"
			Paragraph.Parent = Channel
			Paragraph.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Paragraph.BackgroundTransparency = 0.960
			Paragraph.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Paragraph.BorderSizePixel = 0
			Paragraph.Size = UDim2.new(1, 0, 0, 45)

			Icon.Name = "Icon"
			Icon.Parent = Paragraph
			Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Icon.BackgroundTransparency = 1.000
			Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Icon.BorderSizePixel = 0
			Icon.Position = UDim2.new(0, 8, 0, 7)
			Icon.Size = UDim2.new(0, 30, 0, 30)

			IconReal.Name = "IconReal"
			IconReal.Parent = Icon
			IconReal.AnchorPoint = Vector2.new(0.5, 0.5)
			IconReal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			IconReal.BackgroundTransparency = 1.000
			IconReal.BorderColor3 = Color3.fromRGB(0, 0, 0)
			IconReal.BorderSizePixel = 0
			IconReal.Position = UDim2.new(0.5, 0, 0.5, 0)
			IconReal.Size = UDim2.new(1, -5, 1, -5)
			IconReal.Image = configparagraph.Icon

			Title_2.Name = "Title"
			Title_2.Parent = Paragraph
			Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title_2.BackgroundTransparency = 1.000
			Title_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Title_2.BorderSizePixel = 0
			Title_2.Position = UDim2.new(0, 50, 0, 0)
			Title_2.Size = UDim2.new(1, -50, 0, 20)
			Title_2.Font = Enum.Font.GothamBold
			Title_2.Text = configparagraph.Name
			Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title_2.TextSize = 13.000
			Title_2.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding_5.Parent = Title_2
			UIPadding_5.PaddingTop = UDim.new(0, 3)

			Descr.Name = "Descr"
			Descr.Parent = Paragraph
			Descr.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Descr.BackgroundTransparency = 1.000
			Descr.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Descr.BorderSizePixel = 0
			Descr.Position = UDim2.new(0, 50, 0, 20)
			Descr.Size = UDim2.new(1, -50, 0, 25)
			Descr.Font = Enum.Font.GothamBold
			Descr.Text = configparagraph.Description
			Descr.TextColor3 = Color3.fromRGB(100, 100, 100)
			Descr.TextSize = 12.000
			Descr.TextWrapped = true
			Descr.TextXAlignment = Enum.TextXAlignment.Left
			Descr.TextYAlignment = Enum.TextYAlignment.Top
			Paragraph.Size = UDim2.new(1, 0, 0, Descr.TextBounds.Y + 38)
			Descr:GetPropertyChangedSignal("Text"):Connect(function()
				Paragraph.Size = UDim2.new(1, 0, 0, Descr.TextBounds.Y + 38)
			end)
			UIPadding_6.Parent = Descr

			UICorner_8.CornerRadius = UDim.new(0, 3)
			UICorner_8.Parent = Paragraph
			function ParagraphFunc:SetName(args)
				Title_2.Text = args
			end
			function ParagraphFunc:SetDesc(args)
				Descr.Text = args
			end
			return ParagraphFunc
		end
		function Features:AddToggle(configtoggle)
			configtoggle = configtoggle or {}
			configtoggle.Name = configtoggle.Name or "Toggle"
			configtoggle.Description = configtoggle.Description or ""
			configtoggle.Default = configtoggle.Default or false
			configtoggle.Callback = configtoggle.Callback or function() end

			local ToggleDisable = Instance.new("Frame")
			local UICorner_12 = Instance.new("UICorner")
			local Title_4 = Instance.new("TextLabel")
			local UIPadding_9 = Instance.new("UIPadding")
			local Descr_3 = Instance.new("TextLabel")
			local UIPadding_10 = Instance.new("UIPadding")
			local Check_2 = Instance.new("Frame")
			local UICorner_13 = Instance.new("UICorner")
			local UIStroke_3 = Instance.new("UIStroke")
			local Circle_4 = Instance.new("Frame")
			local UICorner_14 = Instance.new("UICorner")
			local Click_6 = Instance.new("TextButton")
			local ToggleFunc = {}

			ToggleDisable.Name = "Toggle Disable"
			ToggleDisable.Parent = Channel
			ToggleDisable.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ToggleDisable.BackgroundTransparency = 0.960
			ToggleDisable.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ToggleDisable.BorderSizePixel = 0
			ToggleDisable.Size = UDim2.new(1, 0, 0, 45)
			MouseTo(ToggleDisable)
			UICorner_12.CornerRadius = UDim.new(0, 3)
			UICorner_12.Parent = ToggleDisable

			Title_4.Name = "Title"
			Title_4.Parent = ToggleDisable
			Title_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title_4.BackgroundTransparency = 1.000
			Title_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Title_4.BorderSizePixel = 0
			Title_4.Size = UDim2.new(1, 0, 0, 20)
			Title_4.Font = Enum.Font.GothamBold
			Title_4.Text = configtoggle.Name
			Title_4.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title_4.TextSize = 13.000
			Title_4.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding_9.Parent = Title_4
			UIPadding_9.PaddingLeft = UDim.new(0, 9)
			UIPadding_9.PaddingTop = UDim.new(0, 3)

			Descr_3.Name = "Descr"
			Descr_3.Parent = ToggleDisable
			Descr_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Descr_3.BackgroundTransparency = 1.000
			Descr_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Descr_3.BorderSizePixel = 0
			Descr_3.Position = UDim2.new(0, 0, 0, 20)
			Descr_3.Size = UDim2.new(1, -70, 1, -23)
			Descr_3.Font = Enum.Font.GothamBold
			Descr_3.Text = configtoggle.Description
			Descr_3.TextColor3 = Color3.fromRGB(100, 100, 100)
			Descr_3.TextSize = 12.000
			Descr_3.TextWrapped = true
			Descr_3.TextXAlignment = Enum.TextXAlignment.Left
			Descr_3.TextYAlignment = Enum.TextYAlignment.Top

			UIPadding_10.Parent = Descr_3
			UIPadding_10.PaddingLeft = UDim.new(0, 9)

			Check_2.Name = "Check"
			Check_2.Parent = ToggleDisable
			Check_2.BackgroundColor3 = Color3.fromRGB(255, 5, 9)
			Check_2.BackgroundTransparency = 1.000
			Check_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Check_2.BorderSizePixel = 0
			Check_2.Position = UDim2.new(1, -55, 1, -32)
			Check_2.Size = UDim2.new(0, 45, 0, 20)

			UICorner_13.CornerRadius = UDim.new(1, 0)
			UICorner_13.Parent = Check_2

			UIStroke_3.Parent = Check_2
			UIStroke_3.Color = Color3.fromRGB(100, 100, 100)
			UIStroke_3.Transparency = 0.290
			UIStroke_3.Thickness = 1.700

			Circle_4.Name = "Circle"
			Circle_4.Parent = Check_2
			Circle_4.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
			Circle_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Circle_4.BorderSizePixel = 0
			Circle_4.Position = UDim2.new(0, 2, 0, 1)
			Circle_4.Size = UDim2.new(0, 18, 0, 18)

			UICorner_14.CornerRadius = UDim.new(1, 0)
			UICorner_14.Parent = Circle_4

			Click_6.Name = "Click"
			Click_6.Parent = ToggleDisable
			Click_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Click_6.BackgroundTransparency = 1.000
			Click_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Click_6.BorderSizePixel = 0
			Click_6.Size = UDim2.new(1, 0, 1, 0)
			Click_6.Font = Enum.Font.SourceSans
			Click_6.Text = ""
			Click_6.TextColor3 = Color3.fromRGB(0, 0, 0)
			Click_6.TextSize = 14.000
			ToggleDisable.Size = UDim2.new(1, 0, 0, Descr_3.TextBounds.Y + 38)
			Descr_3:GetPropertyChangedSignal("Text"):Connect(function()
				ToggleDisable.Size = UDim2.new(1, 0, 0, Descr_3.TextBounds.Y + 38)
			end)
			local Tg = false
			Click_6.Activated:Connect(function()
				CircleClick(Click_6, Mouse.X, Mouse.Y)
				Tg = not Tg
				ToggleFunc:Set(Tg)
			end)
			function ToggleFunc:Set(value)
				if value then
					tweenservice:Create(Check_2, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundTransparency = 0}):Play()
					tweenservice:Create(Circle_4, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(0, 26, 0, 1)}):Play()
					tweenservice:Create(Circle_4, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(255 ,255, 255)}):Play()
					tweenservice:Create(UIStroke_3, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Transparency = 0}):Play()
					tweenservice:Create(UIStroke_3, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Color = Color3.fromRGB(255, 5, 9)}):Play()
				else
					tweenservice:Create(UIStroke_3, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Transparency = 0.290}):Play()
					tweenservice:Create(Circle_4, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(0, 2, 0, 1)}):Play()
					tweenservice:Create(Check_2, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundTransparency = 1.000}):Play()
					tweenservice:Create(Circle_4, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(100 ,100, 100)}):Play()
					tweenservice:Create(UIStroke_3, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Color = Color3.fromRGB(100, 100, 100)}):Play()
				end
				Tg = value
				configtoggle.Callback(Tg)
			end
			ToggleFunc:Set(configtoggle.Default)
			return ToggleFunc
		end
		function Features:AddButton(configbutton)
			configbutton = configbutton or {}
			configbutton.Name = configbutton.Name or "Button"
			configbutton.Description = configbutton.Description or ""
			configbutton.Callback = configbutton.Callback or function() end

			local Button = Instance.new("Frame")
			local UICorner_15 = Instance.new("UICorner")
			local Title_5 = Instance.new("TextLabel")
			local UIPadding_11 = Instance.new("UIPadding")
			local Descr_4 = Instance.new("TextLabel")
			local UIPadding_12 = Instance.new("UIPadding")
			local Click_7 = Instance.new("TextButton")
			local ImageLabel = Instance.new("ImageLabel")

			Button.Name = "Button"
			Button.Parent = Channel
			Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Button.BackgroundTransparency = 0.960
			Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Button.BorderSizePixel = 0
			Button.Size = UDim2.new(1, 0, 0, 45)
			MouseTo(Button)
			UICorner_15.CornerRadius = UDim.new(0, 3)
			UICorner_15.Parent = Button

			Title_5.Name = "Title"
			Title_5.Parent = Button
			Title_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title_5.BackgroundTransparency = 1.000
			Title_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Title_5.BorderSizePixel = 0
			Title_5.Size = UDim2.new(1, 0, 0, 20)
			Title_5.Font = Enum.Font.GothamBold
			Title_5.Text = configbutton.Name
			Title_5.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title_5.TextSize = 13.000
			Title_5.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding_11.Parent = Title_5
			UIPadding_11.PaddingLeft = UDim.new(0, 9)
			UIPadding_11.PaddingTop = UDim.new(0, 3)

			Descr_4.Name = "Descr"
			Descr_4.Parent = Button
			Descr_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Descr_4.BackgroundTransparency = 1.000
			Descr_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Descr_4.BorderSizePixel = 0
			Descr_4.Position = UDim2.new(0, 0, 0, 20)
			Descr_4.Size = UDim2.new(1, -75, 1, -23)
			Descr_4.Font = Enum.Font.GothamBold
			Descr_4.Text = configbutton.Description
			Descr_4.TextColor3 = Color3.fromRGB(100, 100, 100)
			Descr_4.TextSize = 12.000
			Descr_4.TextWrapped = true
			Descr_4.TextXAlignment = Enum.TextXAlignment.Left
			Descr_4.TextYAlignment = Enum.TextYAlignment.Top

			UIPadding_12.Parent = Descr_4
			UIPadding_12.PaddingLeft = UDim.new(0, 9)

			Click_7.Name = "Click"
			Click_7.Parent = Button
			Click_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Click_7.BackgroundTransparency = 1.000
			Click_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Click_7.BorderSizePixel = 0
			Click_7.Size = UDim2.new(1, 0, 1, 0)
			Click_7.Font = Enum.Font.SourceSans
			Click_7.Text = ""
			Click_7.TextColor3 = Color3.fromRGB(0, 0, 0)
			Click_7.TextSize = 14.000

			ImageLabel.Parent = Button
			ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ImageLabel.BackgroundTransparency = 1.000
			ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ImageLabel.BorderSizePixel = 0
			ImageLabel.Position = UDim2.new(1, -42, 1, -40)
			ImageLabel.Size = UDim2.new(0, 30, 0, 30)
			ImageLabel.Image = "http://www.roblox.com/asset/?id=106860184392725"
			Button.Size = UDim2.new(1, 0, 0, Descr_4.TextBounds.Y + 38)
			Descr_4:GetPropertyChangedSignal("Text"):Connect(function()
				Button.Size = UDim2.new(1, 0, 0, Descr_4.TextBounds.Y + 38)
			end)
			Click_7.Activated:Connect(function()
				CircleClick(Click_7, Mouse.X, Mouse.Y)
				configbutton.Callback()
			end)
		end
		function Features:AddDropdown(configdropdown)
			configdropdown = configdropdown or {}
			configdropdown.Name = configdropdown.Name or "Dropdown"
			configdropdown.Multi = configdropdown.Multi or false
			configdropdown.Options = configdropdown.Options or {}
			configdropdown.Default = configdropdown.Default or ""
			configdropdown.Callback = configdropdown.Callback or function() end

			local Dropdown = Instance.new("Frame")
			local UICorner_16 = Instance.new("UICorner")
			local Click_8 = Instance.new("TextButton")
			local Title_6 = Instance.new("TextLabel")
			local UIPadding_13 = Instance.new("UIPadding")
			local Selected = Instance.new("Frame")
			local UICorner_17 = Instance.new("UICorner")
			local Selected_2 = Instance.new("TextLabel")
			local UIPadding_14 = Instance.new("UIPadding")
			local IconDrop = Instance.new("ImageLabel")
			local UIStroke_4 = Instance.new("UIStroke")
			local Listed = Instance.new("ScrollingFrame")
			local UICorner_18 = Instance.new("UICorner")
			local UIListLayout_3 = Instance.new("UIListLayout")
			local UIPadding_15 = Instance.new("UIPadding")
			local DropFunc = {Value = configdropdown.Default, Options = configdropdown.Options}

			Dropdown.Name = "Dropdown"
			Dropdown.Parent = Channel
			Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Dropdown.BackgroundTransparency = 0.960
			Dropdown.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Dropdown.BorderSizePixel = 0
			Dropdown.Size = UDim2.new(1, 0, 0, 55)
			MouseTo(Dropdown)
			UICorner_16.CornerRadius = UDim.new(0, 3)
			UICorner_16.Parent = Dropdown

			Click_8.Name = "Click"
			Click_8.Parent = Dropdown
			Click_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Click_8.BackgroundTransparency = 1.000
			Click_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Click_8.BorderSizePixel = 0
			Click_8.Size = UDim2.new(1, 0, 0, 50)
			Click_8.Font = Enum.Font.SourceSans
			Click_8.Text = ""
			Click_8.TextColor3 = Color3.fromRGB(0, 0, 0)
			Click_8.TextSize = 14.000

			Title_6.Name = "Title"
			Title_6.Parent = Dropdown
			Title_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title_6.BackgroundTransparency = 1.000
			Title_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Title_6.BorderSizePixel = 0
			Title_6.Size = UDim2.new(1, 0, 0, 20)
			Title_6.Font = Enum.Font.GothamBold
			Title_6.Text = configdropdown.Name
			Title_6.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title_6.TextSize = 13.000
			Title_6.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding_13.Parent = Title_6
			UIPadding_13.PaddingLeft = UDim.new(0, 9)
			UIPadding_13.PaddingTop = UDim.new(0, 3)

			Selected.Name = "Selected"
			Selected.Parent = Dropdown
			Selected.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
			Selected.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Selected.BorderSizePixel = 0
			Selected.ClipsDescendants = true
			Selected.Position = UDim2.new(0, 7, 0, 26)
			Selected.Size = UDim2.new(1, -14, 0, 22)

			UICorner_17.CornerRadius = UDim.new(0, 3)
			UICorner_17.Parent = Selected

			Selected_2.Name = "Selected"
			Selected_2.Parent = Selected
			Selected_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Selected_2.BackgroundTransparency = 1.000
			Selected_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Selected_2.BorderSizePixel = 0
			Selected_2.Position = UDim2.new(0, 0, 0, 2)
			Selected_2.Size = UDim2.new(1, 0, 0, 19)
			Selected_2.Font = Enum.Font.GothamBold
			Selected_2.Text = "Selected : "
			Selected_2.TextColor3 = Color3.fromRGB(100, 100, 100)
			Selected_2.TextSize = 13.000
			Selected_2.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding_14.Parent = Selected_2
			UIPadding_14.PaddingLeft = UDim.new(0, 7)

			IconDrop.Name = "IconDrop"
			IconDrop.Parent = Selected
			IconDrop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			IconDrop.BackgroundTransparency = 1.000
			IconDrop.BorderColor3 = Color3.fromRGB(0, 0, 0)
			IconDrop.BorderSizePixel = 0
			IconDrop.Position = UDim2.new(1, -22, 0, 1)
			IconDrop.Size = UDim2.new(0, 20, 0, 20)
			IconDrop.Image = "http://www.roblox.com/asset/?id=78151819614640"
			UIStroke_4.Parent = Selected
			UIStroke_4.Color = Color3.fromRGB(100, 100, 100)
			UIStroke_4.Transparency = 0.700
			Listed.Name = "Listed"
			Listed.Parent = Selected
			Listed.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
			Listed.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Listed.BorderSizePixel = 0
			Listed.Position = UDim2.new(0, 0, 0, 25)
			Listed.Size = UDim2.new(1, 0, 1, -25)
			Listed.ScrollBarThickness = 0
			UICorner_18.Parent = Listed
			UIListLayout_3.Parent = Listed
			UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout_3.Padding = UDim.new(0, 5)
			UIPadding_15.Parent = Listed
			UIPadding_15.PaddingBottom = UDim.new(0, 3)
			UIPadding_15.PaddingLeft = UDim.new(0, 5)
			UIPadding_15.PaddingRight = UDim.new(0, 5)
			UIPadding_15.PaddingTop = UDim.new(0, 8)
			
			Click_8.Activated:Connect(function()
				CircleClick(Click_8, Mouse.X, Mouse.Y)
				if Dropdown.Size.Y.Offset <= 55 then
					Dropdown:TweenSize(UDim2.new(1, 0, 0, 175), "Out", "Quad", 0.35, true)
					Selected:TweenSize(UDim2.new(1, -14, 0, 140), "Out", "Quad", 0.35, true)
					tweenservice:Create(IconDrop, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Rotation = 180.000}):Play()
				else
					Dropdown:TweenSize(UDim2.new(1, 0, 0, 55), "Out", "Quad", 0.35, true)
					Selected:TweenSize(UDim2.new(1, -14, 0, 22), "Out", "Quad", 0.35, true)
					tweenservice:Create(IconDrop, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Rotation = 0}):Play()
				end
			end)
			function DropFunc:Set(acc)
				DropFunc.Value = acc
				for _, Drop in Listed:GetChildren() do
					if Drop.Name ~= "UICorner" and Drop.Name ~= "UIPadding" and Drop.Name ~= "UIListLayout" then
                        if typeof(DropFunc.Value) == "table" then
                            if not table.find(DropFunc.Value, Drop.Selected.Text) then
                                tweenservice:Create(Drop.Circle, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(0, -12, 0, 2)}):Play()
                                tweenservice:Create(Drop.Selected, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {TextColor3 = Color3.fromRGB(100, 100, 100)}):Play()
                                tweenservice:Create(Drop, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.999}):Play()
                            elseif table.find(DropFunc.Value, Drop.Selected.Text) then
                                tweenservice:Create(Drop.Circle, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(0, 2, 0, 2)}):Play()
                                tweenservice:Create(Drop.Selected, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
                                tweenservice:Create(Drop, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.930}):Play()
                            end
                        else
                            if not string.find(Drop.Selected.Text, DropFunc.Value) then
                                tweenservice:Create(Drop.Circle, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(0, -12, 0, 2)}):Play()
                                tweenservice:Create(Drop.Selected, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {TextColor3 = Color3.fromRGB(100, 100, 100)}):Play()
                                tweenservice:Create(Drop, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.999}):Play()
                            elseif string.find(Drop.Selected.Text, DropFunc.Value) then
                                tweenservice:Create(Drop.Circle, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(0, 2, 0, 2)}):Play()
                                tweenservice:Create(Drop.Selected, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
                                tweenservice:Create(Drop, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.930}):Play()
                            end
                        end
					end
				end
                if configdropdown.Multi and typeof(DropFunc.Value) == "table" then
					local DropdownValueTable = table.concat(DropFunc.Value, ", ")
					if DropdownValueTable == "" then
						Selected_2.Text = "Selected : nil"
					else
						Selected_2.Text = "Selected : " .. tostring(DropdownValueTable)
					end
					configdropdown.Callback(DropFunc.Value)
				elseif not configdropdown.Multi or typeof(DropFunc.Value) == "string" then
					Selected_2.Text = "Selected : " .. tostring(DropFunc.Value)
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
                                    tweenservice:Create(a.Circle, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(0, -12, 0, 2)}):Play()
                                end
                            end
                            tweenservice:Create(v.Circle, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(0, 2, 0, 2)}):Play()
                            tweenservice:Create(v.Selected, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
                            tweenservice:Create(v, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.930}):Play()
                            Selected_2.Text = "Selected : " .. tostring(DropFunc.Value)
					        configdropdown.Callback(DropFunc.Value)
                        end
                    end
                end
            end
			function DropFunc:Add(Value)
                Value = Value or ""
                local Options_2 = Instance.new("Frame")
                local UICorner_21 = Instance.new("UICorner")
                local Click_10 = Instance.new("TextButton")
                local Selected_4 = Instance.new("TextLabel")
                local UIPadding_17 = Instance.new("UIPadding")
                local Circle_6 = Instance.new("Frame")
                local UICorner_22 = Instance.new("UICorner")
            
                Options_2.Name = "Options"
                Options_2.Parent = Listed
                Options_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Options_2.BackgroundTransparency = 1.000
                Options_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Options_2.BorderSizePixel = 0
                Options_2.Size = UDim2.new(1, 0, 0, 20)
                Options_2.ClipsDescendants = true
            
                UICorner_21.CornerRadius = UDim.new(0, 3)
                UICorner_21.Parent = Options_2
            
                Click_10.Name = "Click"
                Click_10.Parent = Options_2
                Click_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Click_10.BackgroundTransparency = 1.000
                Click_10.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Click_10.BorderSizePixel = 0
                Click_10.Size = UDim2.new(1, 0, 0, 50)
                Click_10.Font = Enum.Font.SourceSans
                Click_10.Text = ""
                Click_10.TextColor3 = Color3.fromRGB(0, 0, 0)
                Click_10.TextSize = 14.000
            
                Selected_4.Name = "Selected"
                Selected_4.Parent = Options_2
                Selected_4.BackgroundColor3 = Color3.fromRGB(225, 41, 53)
                Selected_4.BackgroundTransparency = 1.000
                Selected_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Selected_4.BorderSizePixel = 0
                Selected_4.Size = UDim2.new(1, 0, 1, 0)
                Selected_4.Font = Enum.Font.GothamBold
                Selected_4.Text = Value
                Selected_4.TextColor3 = Color3.fromRGB(100, 100, 100)
                Selected_4.TextSize = 13.000
                Selected_4.TextTransparency = 0.300
                Selected_4.TextXAlignment = Enum.TextXAlignment.Left
            
                UIPadding_17.Parent = Selected_4
                UIPadding_17.PaddingLeft = UDim.new(0, 16)
            
                Circle_6.Name = "Circle"
                Circle_6.Parent = Options_2
                Circle_6.BackgroundColor3 = Color3.fromRGB(247, 53, 55)
                Circle_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Circle_6.BorderSizePixel = 0
                Circle_6.Position = UDim2.new(0, -12, 0, 2)
                Circle_6.Size = UDim2.new(0, 5, 0, 15)
            
                UICorner_22.CornerRadius = UDim.new(0, 3)
                UICorner_22.Parent = Circle_6
            
                Click_10.Activated:Connect(function()
                    CircleClick(Click_10, Mouse.X, Mouse.Y)
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
			AutoUp(Listed)
			DropFunc:Refresh(DropFunc.Options)
            if typeof(DropFunc.Value) == "table" then
                DropFunc:Set(configdropdown.Default)
            else
                DropFunc:Set1(configdropdown.Default)
            end
			return DropFunc
		end
		function Features:AddSlider(configslider)
			configslider = configslider or {}
			configslider.Name = configslider.Name or "Slider"
			configslider.Max = configslider.Max or 100
			configslider.Min = configslider.Min or 1
			configslider.Default = configslider.Default or 50
			configslider.Callback = configslider.Callback or function() end

			local Slider = Instance.new("Frame")
			local UICorner_23 = Instance.new("UICorner")
			local Title_7 = Instance.new("TextLabel")
			local UIPadding_18 = Instance.new("UIPadding")
			local SliderFrame = Instance.new("Frame")
			local UICorner_24 = Instance.new("UICorner")
			local UIStroke_5 = Instance.new("UIStroke")
			local SliderDraggable = Instance.new("Frame")
			local UICorner_25 = Instance.new("UICorner")
			local Circle_7 = Instance.new("Frame")
			local UICorner_26 = Instance.new("UICorner")
			local SliderFunc = {Value = configslider.Default}

			Slider.Name = "Slider"
			Slider.Parent = Channel
			Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Slider.BackgroundTransparency = 0.960
			Slider.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Slider.BorderSizePixel = 0
			Slider.Size = UDim2.new(1, 0, 0, 30)
			MouseTo(Slider)

			UICorner_23.CornerRadius = UDim.new(0, 3)
			UICorner_23.Parent = Slider

			Title_7.Name = "Title"
			Title_7.Parent = Slider
			Title_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title_7.BackgroundTransparency = 1.000
			Title_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Title_7.BorderSizePixel = 0
			Title_7.Size = UDim2.new(1, 0, 1, 0)
			Title_7.Font = Enum.Font.GothamBold
			Title_7.Text = configslider.Name.. " / " .. configslider.Default
			Title_7.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title_7.TextSize = 13.000
			Title_7.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding_18.Parent = Title_7
			UIPadding_18.PaddingLeft = UDim.new(0, 9)

			SliderFrame.Name = "SliderFrame"
			SliderFrame.Parent = Slider
			SliderFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
			SliderFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
			SliderFrame.BorderSizePixel = 0
			SliderFrame.Position = UDim2.new(1, -135, 0, 11)
			SliderFrame.Size = UDim2.new(0, 125, 0, 8)

			UICorner_24.CornerRadius = UDim.new(0, 3)
			UICorner_24.Parent = SliderFrame

			UIStroke_5.Parent = SliderFrame
			UIStroke_5.Color = Color3.fromRGB(100, 100, 100)
			UIStroke_5.Transparency = 0.800
			UIStroke_5.Thickness = 2.000

			SliderDraggable.Name = "SliderDraggable"
			SliderDraggable.Parent = SliderFrame
			SliderDraggable.BackgroundColor3 = Color3.fromRGB(242, 58, 63)
			SliderDraggable.BorderColor3 = Color3.fromRGB(0, 0, 0)
			SliderDraggable.BorderSizePixel = 0
			SliderDraggable.Size = UDim2.new(0, 100, 1, 0)

			UICorner_25.CornerRadius = UDim.new(0, 3)
			UICorner_25.Parent = SliderDraggable

			Circle_7.Name = "Circle"
			Circle_7.Parent = SliderDraggable
			Circle_7.BackgroundColor3 = Color3.fromRGB(242, 58, 63)
			Circle_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Circle_7.BorderSizePixel = 0
			Circle_7.Position = UDim2.new(1, -15, 0, -4)
			Circle_7.Size = UDim2.new(0, 15, 0, 15)

			UICorner_26.CornerRadius = UDim.new(1, 0)
			UICorner_26.Parent = Circle_7
			local dragging = false
			local function Round(Number, Factor)
				local Result = math.floor(Number/Factor + (math.sign(Number) * 0.5)) * Factor
				if Result < 0 then Result = Result + Factor end
				return Result
			end
			function SliderFunc:Set(Value)
				Value = math.clamp(Round(Value, 1), configslider.Min, configslider.Max)
				SliderFunc.Value = Value
				Title_7.Text = configslider.Name .. " / " .. tostring(Value)
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
		function Features:AddInput(configinput)
			configinput = configinput or {}
			configinput.Name = configinput.Name or "Input"
			configinput.PlaceHolderText = configinput.PlaceHolderText or "Input Here"
			configinput.Default = configinput.Default or ""
			configinput.Callback = configinput.Callback or function() end

			local Input = Instance.new("Frame")
			local UICorner_27 = Instance.new("UICorner")
			local Title_8 = Instance.new("TextLabel")
			local UIPadding_19 = Instance.new("UIPadding")
			local InputFrame = Instance.new("Frame")
			local UICorner_28 = Instance.new("UICorner")
			local UIStroke_6 = Instance.new("UIStroke")
			local InputReal = Instance.new("TextBox")

			Input.Name = "Input"
			Input.Parent = Channel
			Input.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Input.BackgroundTransparency = 0.960
			Input.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Input.BorderSizePixel = 0
			Input.Size = UDim2.new(1, 0, 0, 30)

			UICorner_27.CornerRadius = UDim.new(0, 3)
			UICorner_27.Parent = Input

			Title_8.Name = "Title"
			Title_8.Parent = Input
			Title_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title_8.BackgroundTransparency = 1.000
			Title_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Title_8.BorderSizePixel = 0
			Title_8.Size = UDim2.new(1, 0, 1, 0)
			Title_8.Font = Enum.Font.GothamBold
			Title_8.Text = configinput.Name
			Title_8.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title_8.TextSize = 13.000
			Title_8.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding_19.Parent = Title_8
			UIPadding_19.PaddingLeft = UDim.new(0, 9)

			InputFrame.Name = "InputFrame"
			InputFrame.Parent = Input
			InputFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
			InputFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
			InputFrame.BorderSizePixel = 0
			InputFrame.Position = UDim2.new(1, -110, 0, 4)
			InputFrame.Size = UDim2.new(0, 100, 0, 22)

			UICorner_28.CornerRadius = UDim.new(0, 3)
			UICorner_28.Parent = InputFrame

			UIStroke_6.Parent = InputFrame
			UIStroke_6.Color = Color3.fromRGB(100, 100, 100)
			UIStroke_6.Transparency = 0.680

			InputReal.Name = "InputReal"
			InputReal.Parent = InputFrame
			InputReal.AnchorPoint = Vector2.new(0.5, 0.5)
			InputReal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			InputReal.BackgroundTransparency = 1.000
			InputReal.BorderColor3 = Color3.fromRGB(0, 0, 0)
			InputReal.BorderSizePixel = 0
			InputReal.ClipsDescendants = true
			InputReal.Position = UDim2.new(0.5, 0, 0.5, 0)
			InputReal.Size = UDim2.new(1, -5, 1, -5)
			InputReal.Font = Enum.Font.GothamBold
			InputReal.PlaceholderText = configinput.PlaceHolderText
			InputReal.Text = configinput.Default
			InputReal.TextColor3 = Color3.fromRGB(255, 255, 255)
			InputReal.TextSize = 12.000
			InputReal.FocusLost:Connect(function()
				configinput.Callback(InputReal.Text)
			end)
		end
		return Features
	end
	return Tabs
end
return Library
