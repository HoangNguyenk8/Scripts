--[[

  ___________ _   _ _   _ ______ _____    _    _ _    _ ____  
 |___  /_   _| \ | | \ | |  ____|  __ \  | |  | | |  | |  _ \ 
    / /  | | |  \| |  \| | |__  | |__) | | |__| | |  | | |_) |
   / /   | | | . ` | . ` |  __| |  _  /  |  __  | |  | |  _ < 
  / /__ _| |_| |\  | |\  | |____| | \ \  | |  | | |__| | |_) |
 /_____|_____|_|_\_|_|_\_|______|_|__\_\ |_|__|_|\____/|____/ 
 |  __ \ / __ \| \ | ( )__   __|  / ____| |/ /_   _|  __ \    
 | |  | | |  | |  \| |/   | |    | (___ | ' /  | | | |  | |   
 | |  | | |  | | . ` |    | |     \___ \|  <   | | | |  | |   
 | |__| | |__| | |\  |    | |     ____) | . \ _| |_| |__| |   
 |_____/ \____/|_| \_|    |_|    |_____/|_|\_\_____|_____/    
                                                              
                                                              

]]--
local Lib = {}
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
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
	CustomPos(topbarobject, object)
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
		TweenService:Create(object, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, newWidth, 0, newHeight)}):Play()
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
function setMidPos(HNDZ, MainFrame)
	MainFrame.Position = UDim2.new(0, (HNDZ.AbsoluteSize.X // 2 - MainFrame.Size.X.Offset // 2), 0, (HNDZ.AbsoluteSize.Y // 2 - MainFrame.Size.Y.Offset // 2))
	return MainFrame.Position
end
local function MouseTo(Frame)
	Frame.MouseEnter:Connect(function()
		TweenService:Create(Frame, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.930}):Play()
	end)
	Frame.MouseLeave:Connect(function()
		TweenService:Create(Frame, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.890}):Play()
	end)
end
function Lib:Notify(cfnotify)
	cfnotify = cfnotify or {}
	cfnotify.Title = cfnotify.Title or "Notification"
	cfnotify.Content = cfnotify.Content or ""
	cfnotify.Duration = cfnotify.Duration or 5
	local NotifyFunc = {}
	spawn(function()
		if not game.Players.LocalPlayer.PlayerGui:FindFirstChild("Troitroi") then
			local Troitroi = Instance.new("ScreenGui")
			Troitroi.Name = "Troitroi"
			Troitroi.Parent = game.Players.LocalPlayer.PlayerGui
			Troitroi.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		end
		if not game.Players.LocalPlayer.PlayerGui.Troitroi:FindFirstChild("NotifyLayout") then
			local NotifyLayout = Instance.new("Frame")
			NotifyLayout.Name = "NotifyLayout"
			NotifyLayout.Parent = game.Players.LocalPlayer.PlayerGui.Troitroi
			NotifyLayout.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			NotifyLayout.BackgroundTransparency = 1.000
			NotifyLayout.BorderColor3 = Color3.fromRGB(0, 0, 0)
			NotifyLayout.BorderSizePixel = 0
			NotifyLayout.Position = UDim2.new(1, 300, 1, -90)
			NotifyLayout.Size = UDim2.new(0, 250, 0, 70)
			local Count = 0
			game.Players.LocalPlayer.PlayerGui.Troitroi.NotifyLayout.ChildRemoved:Connect(function()
				for r, v in next, game.Players.LocalPlayer.PlayerGui.Troitroi.NotifyLayout:GetChildren() do
					TweenService:Create(v, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.InOut), {Position = UDim2.new(0, 0, 1, -((v.Size.Y.Offset + 12) * Count))}):Play()
					Count = Count + 1
				end
			end)
		end
		local NotifyHeighst = 0
		for i, v in game.Players.LocalPlayer.PlayerGui.Troitroi.NotifyLayout:GetChildren() do
			NotifyHeighst = -(v.Position.Y.Offset) + v.Size.Y.Offset + 45
		end
		local NotiFrame = Instance.new("Frame")
		local NotiReal = Instance.new("Frame")
		local UICorner = Instance.new("UICorner")
		local Title = Instance.new("TextLabel")
		local UIPadding = Instance.new("UIPadding")
		local Desc = Instance.new("TextLabel")
		local UIPadding_2 = Instance.new("UIPadding")
		local Close = Instance.new("Frame")
		local ccc = Instance.new("ImageLabel")
		local cc = Instance.new("TextButton")
		NotiFrame.Name = "NotiFrame"
		NotiFrame.Parent = game.Players.LocalPlayer.PlayerGui.Troitroi.NotifyLayout
		NotiFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		NotiFrame.BackgroundTransparency = 1.000
		NotiFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
		NotiFrame.BorderSizePixel = 0
		NotiFrame.Position = UDim2.new(0, 0, 0, -(NotifyHeighst) + 5)
		NotiFrame.Size = UDim2.new(1, 0, 1, 0)
		
		NotiReal.Name = "NotiReal"
		NotiReal.Parent = NotiFrame
		NotiReal.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		NotiReal.BackgroundTransparency = 0.300
		NotiReal.BorderColor3 = Color3.fromRGB(0, 0, 0)
		NotiReal.BorderSizePixel = 0
		NotiReal.Size = UDim2.new(1, 0, 1, 0)
		
		UICorner.Parent = NotiReal
		
		Title.Name = "Title"
		Title.Parent = NotiReal
		Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title.BackgroundTransparency = 1.000
		Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Title.BorderSizePixel = 0
		Title.Size = UDim2.new(1, 0, 0, 20)
		Title.Font = Enum.Font.GothamBold
		Title.Text = cfnotify.Title
		Title.TextColor3 = Color3.fromRGB(255, 255, 255)
		Title.TextSize = 13.000
		Title.TextXAlignment = Enum.TextXAlignment.Left
		
		UIPadding.Parent = Title
		UIPadding.PaddingLeft = UDim.new(0, 9)
		UIPadding.PaddingTop = UDim.new(0, 5)
		
		Desc.Name = "Desc"
		Desc.Parent = NotiReal
		Desc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Desc.BackgroundTransparency = 1.000
		Desc.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Desc.BorderSizePixel = 0
		Desc.Position = UDim2.new(0, 0, 1, -50)
		Desc.Size = UDim2.new(1, -30, 1, -20)
		Desc.Font = Enum.Font.GothamBold
		Desc.Text = cfnotify.Content
		Desc.TextColor3 = Color3.fromRGB(188, 188, 188)
		Desc.TextSize = 11.000
		Desc.TextWrapped = true
		Desc.TextXAlignment = Enum.TextXAlignment.Left
		Desc.TextYAlignment = Enum.TextYAlignment.Top
		
		UIPadding_2.Parent = Desc
		UIPadding_2.PaddingLeft = UDim.new(0, 9)
		UIPadding_2.PaddingTop = UDim.new(0, 5)
		
		Close.Name = "Close"
		Close.Parent = NotiReal
		Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Close.BackgroundTransparency = 1.000
		Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Close.BorderSizePixel = 0
		Close.Position = UDim2.new(1, -20, 0, 0)
		Close.Size = UDim2.new(0, 20, 0, 20)
		
		ccc.Name = "ccc"
		ccc.Parent = Close
		ccc.AnchorPoint = Vector2.new(0.5, 0.5)
		ccc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ccc.BackgroundTransparency = 1.000
		ccc.BorderColor3 = Color3.fromRGB(0, 0, 0)
		ccc.BorderSizePixel = 0
		ccc.Position = UDim2.new(0.5, 0, 0.5, 0)
		ccc.Size = UDim2.new(1, -5, 1, -5)
		ccc.Image = "rbxassetid://92229708563993"
		
		cc.Name = "cc"
		cc.Parent = Close
		cc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		cc.BackgroundTransparency = 1.000
		cc.BorderColor3 = Color3.fromRGB(0, 0, 0)
		cc.BorderSizePixel = 0
		cc.Size = UDim2.new(1, 0, 1, 0)
		cc.Font = Enum.Font.SourceSans
		cc.Text = ""
		cc.TextColor3 = Color3.fromRGB(0, 0, 0)
		cc.TextSize = 14.000
		
		-- Scripts:
		
		local function LFNGRPT_script() -- NotiReal.BlurEffectScript 
			local script = Instance.new('LocalScript', NotiReal)
		
			-- script by: @ImSnox
			local Lighting          = game:GetService("Lighting")
			local camera			= workspace.CurrentCamera
			
			local BLUR_SIZE         = Vector2.new(10, 10)
			local PART_SIZE         = 0.01
			local PART_TRANSPARENCY = 1 - 1e-7
			local START_INTENSITY	= 1
			
			script.Parent:SetAttribute("BlurIntensity", START_INTENSITY)
			
			local BLUR_OBJ          = Instance.new("DepthOfFieldEffect")
			BLUR_OBJ.FarIntensity   = 0
			BLUR_OBJ.NearIntensity  = script.Parent:GetAttribute("BlurIntensity")
			BLUR_OBJ.FocusDistance  = 0.25
			BLUR_OBJ.InFocusRadius  = 0
			BLUR_OBJ.Parent         = Lighting
			
			local PartsList         = {}
			local BlursList         = {}
			local BlurObjects       = {}
			local BlurredGui        = {}
			
			BlurredGui.__index      = BlurredGui
			
			function rayPlaneIntersect(planePos, planeNormal, rayOrigin, rayDirection)
				local n = planeNormal
				local d = rayDirection
				local v = rayOrigin - planePos
			
				local num = n.x*v.x + n.y*v.y + n.z*v.z
				local den = n.x*d.x + n.y*d.y + n.z*d.z
				local a = -num / den
			
				return rayOrigin + a * rayDirection, a
			end
			
			function rebuildPartsList()
				PartsList = {}
				BlursList = {}
				for blurObj, part in pairs(BlurObjects) do
					table.insert(PartsList, part)
					table.insert(BlursList, blurObj)
				end
			end
			
			function BlurredGui.new(frame, shape)
				local blurPart        = Instance.new("Part")
				blurPart.Size         = Vector3.new(1, 1, 1) * 0.01
				blurPart.Anchored     = true
				blurPart.CanCollide   = false
				blurPart.CanTouch     = false
				blurPart.Material     = Enum.Material.Glass
				blurPart.Transparency = PART_TRANSPARENCY
				blurPart.Parent       = workspace.CurrentCamera
			
				local mesh
				if (shape == "Rectangle") then
					mesh        = Instance.new("BlockMesh")
					mesh.Parent = blurPart
				elseif (shape == "Oval") then
					mesh          = Instance.new("SpecialMesh")
					mesh.MeshType = Enum.MeshType.Sphere
					mesh.Parent   = blurPart
				end
				
				local ignoreInset = false
				local currentObj  = frame
				
				while true do
					currentObj = currentObj.Parent
			
					if (currentObj and currentObj:IsA("ScreenGui")) then
						ignoreInset = currentObj.IgnoreGuiInset
						break
					elseif (currentObj == nil) then
						break
					end
				end
			
				local new = setmetatable({
					Frame          = frame;
					Part           = blurPart;
					Mesh           = mesh;
					IgnoreGuiInset = ignoreInset;
				}, BlurredGui)
			
				BlurObjects[new] = blurPart
				rebuildPartsList()
			
				game:GetService("RunService"):BindToRenderStep("...", Enum.RenderPriority.Camera.Value + 1, function()
					blurPart.CFrame = camera.CFrame * CFrame.new(0,0,0)
					BlurredGui.updateAll()
				end)
				return new
			end
			
			function updateGui(blurObj)
				if (not blurObj.Frame.Visible) then
					blurObj.Part.Transparency = 1
					return
				end
				
				local camera = workspace.CurrentCamera
				local frame  = blurObj.Frame
				local part   = blurObj.Part
				local mesh   = blurObj.Mesh
				
				part.Transparency = PART_TRANSPARENCY
				
				local corner0 = frame.AbsolutePosition + BLUR_SIZE
				local corner1 = corner0 + frame.AbsoluteSize - BLUR_SIZE*2
				local ray0, ray1
			
				if (blurObj.IgnoreGuiInset) then
					ray0 = camera:ViewportPointToRay(corner0.X, corner0.Y, 1)
					ray1 = camera:ViewportPointToRay(corner1.X, corner1.Y, 1)
				else
					ray0 = camera:ScreenPointToRay(corner0.X, corner0.Y, 1)
					ray1 = camera:ScreenPointToRay(corner1.X, corner1.Y, 1)
				end
			
				local planeOrigin = camera.CFrame.Position + camera.CFrame.LookVector * (0.05 - camera.NearPlaneZ)
				local planeNormal = camera.CFrame.LookVector
				local pos0 = rayPlaneIntersect(planeOrigin, planeNormal, ray0.Origin, ray0.Direction)
				local pos1 = rayPlaneIntersect(planeOrigin, planeNormal, ray1.Origin, ray1.Direction)
			
				local pos0 = camera.CFrame:PointToObjectSpace(pos0)
				local pos1 = camera.CFrame:PointToObjectSpace(pos1)
			
				local size   = pos1 - pos0
				local center = (pos0 + pos1)/2
			
				mesh.Offset = center
				mesh.Scale  = size / PART_SIZE
			end
			
			function BlurredGui.updateAll()
				BLUR_OBJ.NearIntensity = tonumber(script.Parent:GetAttribute("BlurIntensity"))
				
				for i = 1, #BlursList do
					updateGui(BlursList[i])
				end
			
				local cframes = table.create(#BlursList, workspace.CurrentCamera.CFrame)
				workspace:BulkMoveTo(PartsList, cframes, Enum.BulkMoveMode.FireCFrameChanged)
			
				BLUR_OBJ.FocusDistance = 0.25 - camera.NearPlaneZ
			end
			
			function BlurredGui:Destroy()
				self.Part:Destroy()
				BlurObjects[self] = nil
				rebuildPartsList()
			end
			
			BlurredGui.new(script.Parent, "Rectangle")
			
			BlurredGui.updateAll()
			return BlurredGui
						
		end
		coroutine.wrap(LFNGRPT_script)()		
		function NotifyFunc:Close()
			TweenService:Create(NotiReal, TweenInfo.new(0.6, Enum.EasingStyle.Back, Enum.EasingDirection.InOut), {Position = UDim2.new(0, 0, 0, -(NotifyHeighst) - 49)}):Play()
			task.wait(tonumber(cfnotify.Duration) / 1.2)
			NotiFrame:Destroy()
		end
		TweenService:Create(NotiReal, TweenInfo.new(0.6, Enum.EasingStyle.Back, Enum.EasingDirection.InOut), {Position = UDim2.new(0, -570, 0, -(NotifyHeighst) - 49)}):Play()
		cc.Activated:Connect(function()
			NotifyFunc:Close()
		end)
		task.wait(tonumber(cfnotify.Duration))
		NotifyFunc:Close()
	end)
	return NotifyFunc
end
function Lib:CreateWindow()
	local HNDZ = Instance.new("ScreenGui")
	local MainFrame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local UIStroke = Instance.new("UIStroke")
	local Top = Instance.new("Frame")
	local Line = Instance.new("Frame")
	local NameHub = Instance.new("TextLabel")
	local Desc = Instance.new("TextLabel")
	local ToggleUI = Instance.new("Frame")
	local Minized = Instance.new("Frame")
	local Icon = Instance.new("ImageLabel")
	local Bam = Instance.new("TextButton")
	local Larged = Instance.new("Frame")
	local Icon_2 = Instance.new("ImageLabel")
	local Bam_2 = Instance.new("TextButton")
	local Closed = Instance.new("Frame")
	local Icon_3 = Instance.new("ImageLabel")
	local Bam_3 = Instance.new("TextButton")
	local TabFrame = Instance.new("Frame")
	local ScrollTab = Instance.new("ScrollingFrame")
	local UIPadding = Instance.new("UIPadding")
	local UIListLayout = Instance.new("UIListLayout")
	local Features = Instance.new("Frame")
	local LayoutFrame = Instance.new("Frame")
	local UIPageLayout = Instance.new("UIPageLayout")
	local Eltrul = Instance.new("Folder")
	local MinizedUI = Instance.new("Frame")
	local UICorner_37 = Instance.new("UICorner")
	local TextButton_2 = Instance.new("TextButton")
	local ImageLabel_3 = Instance.new("ImageLabel")
	local UIStroke_6 = Instance.new("UIStroke")
	local UIMinized = false
	HNDZ.Name = "HNDZ"
	HNDZ.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	HNDZ.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	MainFrame.Name = "MainFrame"
	MainFrame.Parent = HNDZ
	MainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	MainFrame.BackgroundTransparency = 0.200
	MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	MainFrame.BorderSizePixel = 0
	MainFrame.Size = UDim2.new(0, 450, 0, 350)
	MainFrame.ClipsDescendants = true
	setMidPos(HNDZ, MainFrame)

	MinizedUI.Name = "MinizedUI"
	MinizedUI.Parent = HNDZ
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
		if not UIMinized then
			OldPos = MainFrame.Position
			OldSize = MainFrame.Size
			MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
			MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
			TweenService:Create(MainFrame, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 0, 0, 0)}):Play()
			wait(0.35)
			MainFrame.Visible = false
			UIMinized = true
		else
			UIMinized = false
			MainFrame.Visible = true
			MainFrame.AnchorPoint = Vector2.new(0, 0)
			MainFrame.Position = UDim2.new(0, 0, 0, 0)
			TweenService:Create(MainFrame, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = OldPos}):Play()
			TweenService:Create(MainFrame, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = OldSize}):Play()
			wait(0.35)
		end
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

	UICorner.Parent = MainFrame

	UIStroke.Parent = MainFrame
	UIStroke.Color = Color3.fromRGB(255, 255, 255)
	UIStroke.Transparency = 0.940
	UIStroke.Thickness = 1.500

	Top.Name = "Top"
	Top.Parent = MainFrame
	Top.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Top.BackgroundTransparency = 1.000
	Top.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Top.BorderSizePixel = 0
	Top.Size = UDim2.new(1, 0, 0, 40)

	Line.Name = "Line"
	Line.Parent = Top
	Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Line.BackgroundTransparency = 0.940
	Line.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Line.BorderSizePixel = 0
	Line.Position = UDim2.new(0, 0, 1, 0)
	Line.Size = UDim2.new(1, 0, 0, 1)

	NameHub.Name = "NameHub"
	NameHub.Parent = Top
	NameHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	NameHub.BackgroundTransparency = 1.000
	NameHub.BorderColor3 = Color3.fromRGB(0, 0, 0)
	NameHub.BorderSizePixel = 0
	NameHub.Position = UDim2.new(0, -2, 0, 0)
	NameHub.Size = UDim2.new(0, 92, 0, 40)
	NameHub.Font = Enum.Font.GothamBold
	NameHub.Text = "Zinner Hub"
	NameHub.TextColor3 = Color3.fromRGB(255, 0, 0)
	NameHub.TextSize = 13.000
	NameHub.TextWrapped = true

	Desc.Name = "Desc"
	Desc.Parent = Top
	Desc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Desc.BackgroundTransparency = 1.000
	Desc.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Desc.BorderSizePixel = 0
	Desc.Position = UDim2.new(0, 81, 0, 0)
	Desc.Size = UDim2.new(0, 200, 0, 38)
	Desc.Font = Enum.Font.SourceSansBold
	Desc.Text = "| discord.gg/vU6jRXpYsZ"
	Desc.TextColor3 = Color3.fromRGB(100, 100, 100)
	Desc.TextSize = 14.000
	Desc.TextXAlignment = Enum.TextXAlignment.Left

	ToggleUI.Name = "ToggleUI"
	ToggleUI.Parent = Top
	ToggleUI.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ToggleUI.BackgroundTransparency = 1.000
	ToggleUI.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ToggleUI.BorderSizePixel = 0
	ToggleUI.Position = UDim2.new(1, -120, 0, 0)
	ToggleUI.Size = UDim2.new(0, 120, 0, 40)

	Minized.Name = "Minized"
	Minized.Parent = ToggleUI
	Minized.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Minized.BackgroundTransparency = 1.000
	Minized.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Minized.BorderSizePixel = 0
	Minized.Size = UDim2.new(0, 40, 0, 40)

	Icon.Name = "Icon"
	Icon.Parent = Minized
	Icon.AnchorPoint = Vector2.new(0.5, 0.5)
	Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Icon.BackgroundTransparency = 1.000
	Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Icon.BorderSizePixel = 0
	Icon.Position = UDim2.new(0.5, 0, 0.5, 0)
	Icon.Size = UDim2.new(0, 18, 0, 18)
	Icon.Image = "http://www.roblox.com/asset/?id=103243803194151"

	Bam.Name = "Bam"
	Bam.Parent = Minized
	Bam.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Bam.BackgroundTransparency = 1.000
	Bam.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Bam.BorderSizePixel = 0
	Bam.Size = UDim2.new(1, 0, 1, 0)
	Bam.Font = Enum.Font.SourceSans
	Bam.Text = ""
	Bam.TextColor3 = Color3.fromRGB(0, 0, 0)
	Bam.TextSize = 14.000
	Bam.Activated:Connect(function()
		MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
		MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
		OldPos = MainFrame.Position
		OldSize = MainFrame.Size
		TweenService:Create(MainFrame, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 0, 0, 0)}):Play()
		wait(0.35)
		UIMinized = true
		MainFrame.Visible = false
	end)

	Larged.Name = "Larged"
	Larged.Parent = ToggleUI
	Larged.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Larged.BackgroundTransparency = 1.000
	Larged.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Larged.BorderSizePixel = 0
	Larged.Position = UDim2.new(0, 40, 0, 0)
	Larged.Size = UDim2.new(0, 40, 0, 40)

	Icon_2.Name = "Icon"
	Icon_2.Parent = Larged
	Icon_2.AnchorPoint = Vector2.new(0.5, 0.5)
	Icon_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Icon_2.BackgroundTransparency = 1.000
	Icon_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Icon_2.BorderSizePixel = 0
	Icon_2.Position = UDim2.new(0.5, 0, 0.49000001, 0)
	Icon_2.Size = UDim2.new(0, 12, 0, 12)
	Icon_2.Image = "http://www.roblox.com/asset/?id=80305890870459"
	Icon_2.ImageColor3 = Color3.fromRGB(200, 200, 200)

	Bam_2.Name = "Bam"
	Bam_2.Parent = Larged
	Bam_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Bam_2.BackgroundTransparency = 1.000
	Bam_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Bam_2.BorderSizePixel = 0
	Bam_2.Size = UDim2.new(1, 0, 1, 0)
	Bam_2.Font = Enum.Font.SourceSans
	Bam_2.Text = ""
	Bam_2.TextColor3 = Color3.fromRGB(0, 0, 0)
	Bam_2.TextSize = 14.000
	local bucutungbeo = false
	Bam_2.Activated:Connect(function()
		if not bucutungbeo then
			OldPos = MainFrame.Position
			OldSize = MainFrame.Size
			MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
			MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
			TweenService:Create(MainFrame, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(1, 0, 1, 0)}):Play()
		else
			MainFrame.AnchorPoint = Vector2.new(0, 0)
			MainFrame.Position = UDim2.new(0, 0, 0, 0)
			TweenService:Create(MainFrame, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = OldSize}):Play()
			TweenService:Create(MainFrame, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = OldPos}):Play()
		end
		bucutungbeo = not bucutungbeo
	end)

	Closed.Name = "Closed"
	Closed.Parent = ToggleUI
	Closed.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Closed.BackgroundTransparency = 1.000
	Closed.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Closed.BorderSizePixel = 0
	Closed.Position = UDim2.new(0, 80, 0, 0)
	Closed.Size = UDim2.new(0, 40, 0, 40)

	Icon_3.Name = "Icon"
	Icon_3.Parent = Closed
	Icon_3.AnchorPoint = Vector2.new(0.5, 0.5)
	Icon_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Icon_3.BackgroundTransparency = 1.000
	Icon_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Icon_3.BorderSizePixel = 0
	Icon_3.Position = UDim2.new(0.5, 0, 0.49000001, 0)
	Icon_3.Size = UDim2.new(0, 18, 0, 18)
	Icon_3.Image = "http://www.roblox.com/asset/?id=81464594502324"
	Icon_3.ImageColor3 = Color3.fromRGB(200, 200, 200)

	Bam_3.Name = "Bam"
	Bam_3.Parent = Closed
	Bam_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Bam_3.BackgroundTransparency = 1.000
	Bam_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Bam_3.BorderSizePixel = 0
	Bam_3.Size = UDim2.new(1, 0, 1, 0)
	Bam_3.Font = Enum.Font.SourceSans
	Bam_3.Text = ""
	Bam_3.TextColor3 = Color3.fromRGB(0, 0, 0)
	Bam_3.TextSize = 14.000
	Bam_3.Activated:Connect(function()
		HNDZ:Destroy()
		for _, v in pairs(workspace.CurrentCamera:GetChildren()) do if v:IsA("Part") then v:Destroy() end end
		Lib:Notify({
			Title = "Interface",
			Content = "Interface : Destroy!",
			Duration = 7
		})
	end)

	TabFrame.Name = "TabFrame"
	TabFrame.Parent = MainFrame
	TabFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TabFrame.BackgroundTransparency = 1.000
	TabFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TabFrame.BorderSizePixel = 0
	TabFrame.Position = UDim2.new(0, 0, 0, 41)
	TabFrame.Size = UDim2.new(0, 142, 1, -40)

	ScrollTab.Name = "ScrollTab"
	ScrollTab.Parent = TabFrame
	ScrollTab.AnchorPoint = Vector2.new(0.5, 0.5)
	ScrollTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ScrollTab.BackgroundTransparency = 1.000
	ScrollTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ScrollTab.BorderSizePixel = 0
	ScrollTab.Position = UDim2.new(0.5, 0, 0.5, 0)
	ScrollTab.Size = UDim2.new(1, -5, 1, -5)
	ScrollTab.ScrollBarThickness = 0	
	game:GetService('RunService').Stepped:Connect(function()
		ScrollTab.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y + 15)
	end)
	UIPadding.Parent = ScrollTab
	UIPadding.PaddingBottom = UDim.new(0, 3)
	UIPadding.PaddingLeft = UDim.new(0, 3)
	UIPadding.PaddingRight = UDim.new(0, 3)
	UIPadding.PaddingTop = UDim.new(0, 8)

	UIListLayout.Parent = ScrollTab
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 4)

	Features.Name = "Features"
	Features.Parent = MainFrame
	Features.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Features.BackgroundTransparency = 1.000
	Features.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Features.BorderSizePixel = 0
	Features.Position = UDim2.new(0, 142, 0, 40)
	Features.Size = UDim2.new(1, -144, 1, -40)
	Features.ClipsDescendants = true

	LayoutFrame.Name = "LayoutFrame"
	LayoutFrame.Parent = Features
	LayoutFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	LayoutFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
	LayoutFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LayoutFrame.BackgroundTransparency = 1.000
	LayoutFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	LayoutFrame.BorderSizePixel = 0
	LayoutFrame.Size = UDim2.new(1, -2, 1, 0)

	Eltrul.Name = "Eltrul"
	Eltrul.Parent = LayoutFrame

	UIPageLayout.Parent = Eltrul
	UIPageLayout.FillDirection = Enum.FillDirection.Vertical
	UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIPageLayout.TweenTime = 0.325

	CustomSize(MainFrame)
	MakeDraggable(Top, MainFrame)
	local function EWBAAU_script() -- MainFrame.BlurEffectScript 
		local script = Instance.new('LocalScript', MainFrame)
	
		-- script by: @ImSnox
		local Lighting          = game:GetService("Lighting")
		local camera			= workspace.CurrentCamera
		
		local BLUR_SIZE         = Vector2.new(10, 10)
		local PART_SIZE         = 0.01
		local PART_TRANSPARENCY = 1 - 1e-7
		local START_INTENSITY	= 1
		
		script.Parent:SetAttribute("BlurIntensity", START_INTENSITY)
		
		local BLUR_OBJ          = Instance.new("DepthOfFieldEffect")
		BLUR_OBJ.FarIntensity   = 0
		BLUR_OBJ.NearIntensity  = script.Parent:GetAttribute("BlurIntensity")
		BLUR_OBJ.FocusDistance  = 0.25
		BLUR_OBJ.InFocusRadius  = 0
		BLUR_OBJ.Parent         = Lighting
		
		local PartsList         = {}
		local BlursList         = {}
		local BlurObjects       = {}
		local BlurredGui        = {}
		
		BlurredGui.__index      = BlurredGui
		
		function rayPlaneIntersect(planePos, planeNormal, rayOrigin, rayDirection)
			local n = planeNormal
			local d = rayDirection
			local v = rayOrigin - planePos
		
			local num = n.x*v.x + n.y*v.y + n.z*v.z
			local den = n.x*d.x + n.y*d.y + n.z*d.z
			local a = -num / den
		
			return rayOrigin + a * rayDirection, a
		end
		
		function rebuildPartsList()
			PartsList = {}
			BlursList = {}
			for blurObj, part in pairs(BlurObjects) do
				table.insert(PartsList, part)
				table.insert(BlursList, blurObj)
			end
		end
		
		function BlurredGui.new(frame, shape)
			local blurPart        = Instance.new("Part")
			blurPart.Size         = Vector3.new(1, 1, 1) * 0.01
			blurPart.Anchored     = true
			blurPart.CanCollide   = false
			blurPart.CanTouch     = false
			blurPart.Material     = Enum.Material.Glass
			blurPart.Transparency = PART_TRANSPARENCY
			blurPart.Parent       = workspace.CurrentCamera
		
			local mesh
			if (shape == "Rectangle") then
				mesh        = Instance.new("BlockMesh")
				mesh.Parent = blurPart
			elseif (shape == "Oval") then
				mesh          = Instance.new("SpecialMesh")
				mesh.MeshType = Enum.MeshType.Sphere
				mesh.Parent   = blurPart
			end
			
			local ignoreInset = false
			local currentObj  = frame
			
			while true do
				currentObj = currentObj.Parent
		
				if (currentObj and currentObj:IsA("ScreenGui")) then
					ignoreInset = currentObj.IgnoreGuiInset
					break
				elseif (currentObj == nil) then
					break
				end
			end
		
			local new = setmetatable({
				Frame          = frame;
				Part           = blurPart;
				Mesh           = mesh;
				IgnoreGuiInset = ignoreInset;
			}, BlurredGui)
		
			BlurObjects[new] = blurPart
			rebuildPartsList()
		
			game:GetService("RunService"):BindToRenderStep("...", Enum.RenderPriority.Camera.Value + 1, function()
				blurPart.CFrame = camera.CFrame * CFrame.new(0,0,0)
				BlurredGui.updateAll()
			end)
			return new
		end
		
		function updateGui(blurObj)
			if (not blurObj.Frame.Visible) then
				blurObj.Part.Transparency = 1
				return
			end
			
			local camera = workspace.CurrentCamera
			local frame  = blurObj.Frame
			local part   = blurObj.Part
			local mesh   = blurObj.Mesh
			
			part.Transparency = PART_TRANSPARENCY
			
			local corner0 = frame.AbsolutePosition + BLUR_SIZE
			local corner1 = corner0 + frame.AbsoluteSize - BLUR_SIZE*2
			local ray0, ray1
		
			if (blurObj.IgnoreGuiInset) then
				ray0 = camera:ViewportPointToRay(corner0.X, corner0.Y, 1)
				ray1 = camera:ViewportPointToRay(corner1.X, corner1.Y, 1)
			else
				ray0 = camera:ScreenPointToRay(corner0.X, corner0.Y, 1)
				ray1 = camera:ScreenPointToRay(corner1.X, corner1.Y, 1)
			end
		
			local planeOrigin = camera.CFrame.Position + camera.CFrame.LookVector * (0.05 - camera.NearPlaneZ)
			local planeNormal = camera.CFrame.LookVector
			local pos0 = rayPlaneIntersect(planeOrigin, planeNormal, ray0.Origin, ray0.Direction)
			local pos1 = rayPlaneIntersect(planeOrigin, planeNormal, ray1.Origin, ray1.Direction)
		
			local pos0 = camera.CFrame:PointToObjectSpace(pos0)
			local pos1 = camera.CFrame:PointToObjectSpace(pos1)
		
			local size   = pos1 - pos0
			local center = (pos0 + pos1)/2
		
			mesh.Offset = center
			mesh.Scale  = size / PART_SIZE
		end
		
		function BlurredGui.updateAll()
			BLUR_OBJ.NearIntensity = tonumber(script.Parent:GetAttribute("BlurIntensity"))
			
			for i = 1, #BlursList do
				updateGui(BlursList[i])
			end
		
			local cframes = table.create(#BlursList, workspace.CurrentCamera.CFrame)
			workspace:BulkMoveTo(PartsList, cframes, Enum.BulkMoveMode.FireCFrameChanged)
		
			BLUR_OBJ.FocusDistance = 0.25 - camera.NearPlaneZ
		end
		
		function BlurredGui:Destroy()
			self.Part:Destroy()
			BlurObjects[self] = nil
			rebuildPartsList()
		end
		
		BlurredGui.new(script.Parent, "Rectangle")
		
		BlurredGui.updateAll()
		return BlurredGui
					
	end
	coroutine.wrap(EWBAAU_script)()	
	local TabFunc = {}
	local Counts = 0
	function TabFunc:CreateTab(configtab)
		configtab = configtab or {}
		configtab.Title = configtab.Title or "Tab 1"
		configtab.Icon = configtab.Icon or ""

		local TabDisable = Instance.new("Frame")
		local UICorner_4 = Instance.new("UICorner")
		local NameTab_2 = Instance.new("TextLabel")
		local UIPadding_3 = Instance.new("UIPadding")
		local IconTab_2 = Instance.new("ImageLabel")
		local Bam_5 = Instance.new("TextButton")
		local RealChannel = Instance.new("ScrollingFrame")
		local UIListLayout_2 = Instance.new("UIListLayout")
		local UIPadding_4 = Instance.new("UIPadding")
		local NameChannel = Instance.new("TextLabel")
		local UIPadding_5 = Instance.new("UIPadding")

		RealChannel.Name = "RealChannel"
		RealChannel.Parent = Eltrul
		RealChannel.AnchorPoint = Vector2.new(0.5, 0.5)
		RealChannel.Position = UDim2.new(0.5, 0, 0.5, 0)
		RealChannel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		RealChannel.BackgroundTransparency = 1.000
		RealChannel.BorderColor3 = Color3.fromRGB(0, 0, 0)
		RealChannel.BorderSizePixel = 0
		RealChannel.Size = UDim2.new(1, 0, 1, -4)
		RealChannel.ScrollBarImageColor3 = Color3.fromRGB(100, 100, 100)
		RealChannel.CanvasSize = UDim2.new(0, 0, 1.5, 0)
		RealChannel.ScrollBarThickness = 2
		RealChannel.LayoutOrder = Counts
		game:GetService('RunService').Stepped:Connect(function()
			RealChannel.CanvasSize = UDim2.new(0, 0, 0, UIListLayout_2.AbsoluteContentSize.Y + 15)
		end)
		UIListLayout_2.Parent = RealChannel
		UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_2.Padding = UDim.new(0, 8)

		UIPadding_4.Parent = RealChannel
		UIPadding_4.PaddingBottom = UDim.new(0, 4)
		UIPadding_4.PaddingLeft = UDim.new(0, 4)
		UIPadding_4.PaddingRight = UDim.new(0, 6)
		UIPadding_4.PaddingTop = UDim.new(0, 4)

		NameChannel.Name = "NameChannel"
		NameChannel.Parent = RealChannel
		NameChannel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		NameChannel.BackgroundTransparency = 1.000
		NameChannel.BorderColor3 = Color3.fromRGB(0, 0, 0)
		NameChannel.BorderSizePixel = 0
		NameChannel.Size = UDim2.new(1, 0, 0, 42)
		NameChannel.Font = Enum.Font.GothamBold
		NameChannel.Text = configtab.Title
		NameChannel.TextColor3 = Color3.fromRGB(255, 255, 255)
		NameChannel.TextSize = 28.000
		NameChannel.TextXAlignment = Enum.TextXAlignment.Left

		UIPadding_5.Parent = NameChannel

		TabDisable.Name = "TabDisable"
		TabDisable.Parent = ScrollTab
		TabDisable.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabDisable.BackgroundTransparency = 1.000
		TabDisable.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TabDisable.BorderSizePixel = 0
		TabDisable.Size = UDim2.new(1, 0, 0, 28)

		UICorner_4.CornerRadius = UDim.new(0, 3)
		UICorner_4.Parent = TabDisable

		NameTab_2.Name = "NameTab"
		NameTab_2.Parent = TabDisable
		NameTab_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		NameTab_2.BackgroundTransparency = 1.000
		NameTab_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
		NameTab_2.BorderSizePixel = 0
		NameTab_2.Position = UDim2.new(0, 30, 0, 0)
		NameTab_2.Size = UDim2.new(1, -30, 1, 0)
		NameTab_2.Font = Enum.Font.GothamBold
		NameTab_2.Text = configtab.Title
		NameTab_2.TextColor3 = Color3.fromRGB(200, 200, 200)
		NameTab_2.TextSize = 13.000
		NameTab_2.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
		NameTab_2.TextXAlignment = Enum.TextXAlignment.Left

		UIPadding_3.Parent = NameTab_2
		UIPadding_3.PaddingLeft = UDim.new(0, 5)

		IconTab_2.Name = "IconTab"
		IconTab_2.Parent = TabDisable
		IconTab_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		IconTab_2.BackgroundTransparency = 1.000
		IconTab_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
		IconTab_2.BorderSizePixel = 0
		IconTab_2.Position = UDim2.new(0, 12, 0, 6)
		IconTab_2.Size = UDim2.new(0, 15, 0, 15)
		IconTab_2.Image = configtab.Icon

		Bam_5.Name = "Bam"
		Bam_5.Parent = TabDisable
		Bam_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Bam_5.BackgroundTransparency = 1.000
		Bam_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Bam_5.BorderSizePixel = 0
		Bam_5.Size = UDim2.new(1, 0, 1, 0)
		Bam_5.Font = Enum.Font.SourceSans
		Bam_5.Text = ""
		Bam_5.TextColor3 = Color3.fromRGB(0, 0, 0)
		Bam_5.TextSize = 14.000
		if Counts == 0 then
			local Circle = Instance.new("Frame")
			local UICorner_3 = Instance.new("UICorner")
			Circle.Name = "Circle"
			Circle.Parent = TabDisable
			Circle.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
			Circle.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Circle.BorderSizePixel = 0
			Circle.Position = UDim2.new(0, 0, 0, 7)
			Circle.Size = UDim2.new(0, 4, 0, 14)
			UICorner_3.CornerRadius = UDim.new(0, 6)
			UICorner_3.Parent = Circle
		end
		Bam_5.Activated:Connect(function()
			local FrameChoose
			for _, v in pairs(ScrollTab:GetChildren()) do
				for c, frame in pairs(v:GetChildren()) do
					if frame.Name == "Circle" then
						FrameChoose = frame
						break
					end
				end
			end
			if FrameChoose ~= nil then
				for _, v in pairs(TabFrame:GetChildren()) do
					for c, frame in pairs(v:GetChildren()) do
						if frame:IsA('Frame') then
							TweenService:Create(frame, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 1.000}):Play()
						end
					end
				end
				TweenService:Create(FrameChoose, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(0, 0, 0, 7 + (32 * RealChannel.LayoutOrder))}):Play()
				TweenService:Create(TabDisable, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 0.960}):Play()
				UIPageLayout:JumpToIndex(RealChannel.LayoutOrder)
			end
		end)
		Counts = Counts + 1
		local Fe = {}
		function Fe:AddButton(configbutton)
			configbutton = configbutton or {}
			configbutton.Title = configbutton.Title or "Button"
			configbutton.Description = configbutton.Description or ""
			configbutton.Callback = configbutton.Callback or function() end

			local Button = Instance.new("Frame")
			local UICorner_5 = Instance.new("UICorner")
			local Title = Instance.new("TextLabel")
			local UIPadding_6 = Instance.new("UIPadding")
			local Desc_2 = Instance.new("TextLabel")
			local UIPadding_7 = Instance.new("UIPadding")
			local IconButton = Instance.new("ImageLabel")
			local UIStroke_2 = Instance.new("UIStroke")
			local BamVao = Instance.new("TextButton")
			Button.Name = "Button"
			Button.Parent = RealChannel
			Button.BackgroundColor3 = Color3.fromRGB(144, 144, 144)
			Button.BackgroundTransparency = 0.890
			Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Button.BorderSizePixel = 0
			Button.Size = UDim2.new(1, 0, 0, 45)
			MouseTo(Button)
			UICorner_5.CornerRadius = UDim.new(0, 3)
			UICorner_5.Parent = Button

			Title.Name = "Title"
			Title.Parent = Button
			Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title.BackgroundTransparency = 1.000
			Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Title.BorderSizePixel = 0
			Title.Size = UDim2.new(1, 0, 1, 0)
			Title.Font = Enum.Font.GothamBold
			Title.Text = configbutton.Title
			Title.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title.TextSize = 12.000
			Title.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding_6.Parent = Title
			UIPadding_6.PaddingLeft = UDim.new(0, 8)

			Desc_2.Name = "Desc"
			Desc_2.Parent = Button
			Desc_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Desc_2.BackgroundTransparency = 1.000
			Desc_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Desc_2.BorderSizePixel = 0
			Desc_2.Position = UDim2.new(0, 0, 0, 18)
			Desc_2.Size = UDim2.new(1, -50, 0, 30)
			Desc_2.Font = Enum.Font.GothamBold
			Desc_2.Text = (configbutton.Description or "idk")
			Desc_2.TextColor3 = Color3.fromRGB(144, 144, 144)
			Desc_2.TextSize = 11.000
			Desc_2.TextWrapped = true
			Desc_2.TextXAlignment = Enum.TextXAlignment.Left
			Desc_2.TextYAlignment = Enum.TextYAlignment.Top

			UIPadding_7.Parent = Desc_2
			UIPadding_7.PaddingLeft = UDim.new(0, 8)
			UIPadding_7.PaddingTop = UDim.new(0, 1)

			IconButton.Name = "IconButton"
			IconButton.Parent = Button
			IconButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			IconButton.BackgroundTransparency = 1.000
			IconButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
			IconButton.BorderSizePixel = 0
			IconButton.Position = UDim2.new(1, -35, 0.24, 0)
			IconButton.Size = UDim2.new(0, 25, 0, 25)
			IconButton.Image = "http://www.roblox.com/asset/?id=109836456557251"

			UIStroke_2.Parent = Button
			UIStroke_2.Color = Color3.fromRGB(255, 255, 255)
			UIStroke_2.Transparency = 0.930

			BamVao.Name = "BamVao"
			BamVao.Parent = Button
			BamVao.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			BamVao.BackgroundTransparency = 1.000
			BamVao.BorderColor3 = Color3.fromRGB(0, 0, 0)
			BamVao.BorderSizePixel = 0
			BamVao.Size = UDim2.new(1, 0, 1, 0)
			BamVao.Font = Enum.Font.SourceSans
			BamVao.Text = ""
			BamVao.TextColor3 = Color3.fromRGB(0, 0, 0)
			BamVao.TextSize = 14.000
			if Desc_2.Text ~= "" and  configbutton.Description ~= nil and configbutton.Description ~= "" then
				Title.Size = UDim2.new(1, 0, 0, 18)
				UIPadding_6.Parent = Title
				UIPadding_6.PaddingLeft = UDim.new(0, 8)
				UIPadding_6.PaddingTop = UDim.new(0, 8)
				Desc_2.Size = UDim2.new(1, -50, 0, 15 + Desc_2.TextBounds.Y)   
				Button.Size = UDim2.new(1, 0, 0, 25 + Desc_2.TextBounds.Y)         
			end
			BamVao.Activated:Connect(function()
				Button.BackgroundTransparency = 0.930
				TweenService:Create(Button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 0.890}):Play()
				configbutton.Callback()
			end)
		end
		function Fe:AddToggle(configtoggle)
			configtoggle = configtoggle or {}
			configtoggle.Title = configtoggle.Title or "Toggle"
			configtoggle.Description = configtoggle.Description or ""
			configtoggle.Default = configtoggle.Default or false
			configtoggle.Callback = configtoggle.Callback or function() end
			local ToggleFunc = {Values = configtoggle.Default}
			local Toggle = Instance.new("Frame")
			local UICorner_6 = Instance.new("UICorner")
			local Title_2 = Instance.new("TextLabel")
			local UIPadding_8 = Instance.new("UIPadding")
			local Desc_3 = Instance.new("TextLabel")
			local UIPadding_9 = Instance.new("UIPadding")
			local UIStroke_3 = Instance.new("UIStroke")
			local BamVao_2 = Instance.new("TextButton")
			local CheckFrame = Instance.new("Frame")
			local UICorner_7 = Instance.new("UICorner")
			local UIStroke_4 = Instance.new("UIStroke")
			local Circle_2 = Instance.new("Frame")
			local UICorner_8 = Instance.new("UICorner")
			Toggle.Name = "Toggle"
			Toggle.Parent = RealChannel
			Toggle.BackgroundColor3 = Color3.fromRGB(144, 144, 144)
			Toggle.BackgroundTransparency = 0.890
			Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Toggle.BorderSizePixel = 0
			Toggle.Size = UDim2.new(1, 0, 0, 30)

			UICorner_6.CornerRadius = UDim.new(0, 3)
			UICorner_6.Parent = Toggle

			Title_2.Name = "Title"
			Title_2.Parent = Toggle
			Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title_2.BackgroundTransparency = 1.000
			Title_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Title_2.BorderSizePixel = 0
			Title_2.Size = UDim2.new(1, 0, 1, 0)
			Title_2.Font = Enum.Font.GothamBold
			Title_2.Text = configtoggle.Title
			Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title_2.TextSize = 12.000
			Title_2.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding_8.Parent = Title_2
			UIPadding_8.PaddingLeft = UDim.new(0, 8)

			Desc_3.Name = "Desc"
			Desc_3.Parent = Toggle
			Desc_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Desc_3.BackgroundTransparency = 1.000
			Desc_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Desc_3.BorderSizePixel = 0
			Desc_3.Position = UDim2.new(0, 0, 0, 18)
			Desc_3.Size = UDim2.new(1, -60, 0, 25)
			Desc_3.Font = Enum.Font.GothamBold
			Desc_3.Text =	configtoggle.Description
			Desc_3.TextColor3 = Color3.fromRGB(144, 144, 144)
			Desc_3.TextSize = 11.000
			Desc_3.TextWrapped = true
			Desc_3.TextXAlignment = Enum.TextXAlignment.Left
			Desc_3.TextYAlignment = Enum.TextYAlignment.Top

			UIPadding_9.Parent = Desc_3
			UIPadding_9.PaddingLeft = UDim.new(0, 8)

			UIStroke_3.Parent = Toggle
			UIStroke_3.Color = Color3.fromRGB(255, 255, 255)
			UIStroke_3.Transparency = 0.930

			BamVao_2.Name = "BamVao"
			BamVao_2.Parent = Toggle
			BamVao_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			BamVao_2.BackgroundTransparency = 1.000
			BamVao_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			BamVao_2.BorderSizePixel = 0
			BamVao_2.Size = UDim2.new(1, 0, 1, 0)
			BamVao_2.Font = Enum.Font.SourceSans
			BamVao_2.Text = ""
			BamVao_2.TextColor3 = Color3.fromRGB(0, 0, 0)
			BamVao_2.TextSize = 14.000

			CheckFrame.Name = "CheckFrame"
			CheckFrame.Parent = Toggle
			CheckFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			CheckFrame.BackgroundTransparency = 1.000
			CheckFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
			CheckFrame.BorderSizePixel = 0
			CheckFrame.Position = UDim2.new(1, -48, 0.27,0)
			CheckFrame.Size = UDim2.new(0, 38, 0, 16)

			UICorner_7.CornerRadius = UDim.new(1, 0)
			UICorner_7.Parent = CheckFrame

			UIStroke_4.Parent = CheckFrame
			UIStroke_4.Color = Color3.fromRGB(80, 80, 80)
			UIStroke_4.Thickness = 1.700

			Circle_2.Name = "Circle"
			Circle_2.Parent = CheckFrame
			Circle_2.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
			Circle_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Circle_2.BorderSizePixel = 0
			Circle_2.Position = UDim2.new(0, 2, 0, 1)
			Circle_2.Size = UDim2.new(0, 14, 0, 14)

			UICorner_8.CornerRadius = UDim.new(1, 0)
			UICorner_8.Parent = Circle_2
			if  configtoggle.Description ~= nil and configtoggle.Description ~= "" then
				Title_2.Size = UDim2.new(1, 0, 0, 18)
				UIPadding_8.Parent = Title_2
				UIPadding_8.PaddingLeft = UDim.new(0, 8)
				UIPadding_8.PaddingTop = UDim.new(0, 8)
				Desc_3.Size = UDim2.new(1, -50, 0, 15 + Desc_3.TextBounds.Y)   
				Toggle.Size = UDim2.new(1, 0, 0, 25 + Desc_3.TextBounds.Y)         
			end
			function ToggleFunc:Set(v)
				if v then
					TweenService:Create(CheckFrame, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundTransparency = 0}):Play()
					TweenService:Create(UIStroke_4, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Color = Color3.fromRGB(255, 0 ,0)}):Play()
					TweenService:Create(CheckFrame, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(255, 0 ,0)}):Play()
					TweenService:Create(Circle_2, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(255, 255, 255)}):Play()
					TweenService:Create(Circle_2, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(0, 22, 0, 1)}):Play()
				else
					TweenService:Create(CheckFrame, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundTransparency = 1.000}):Play()
					TweenService:Create(UIStroke_4, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Color = Color3.fromRGB(80, 80 ,80)}):Play()
					TweenService:Create(CheckFrame, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(80, 80, 80)}):Play()
					TweenService:Create(Circle_2, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(80, 80, 80)}):Play()
					TweenService:Create(Circle_2, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(0 ,2 , 0, 1)}):Play()
				end
				ToggleFunc.Values = v
				configtoggle.Callback(ToggleFunc.Values)
			end
			BamVao_2.Activated:Connect(function()
				ToggleFunc:Set(not ToggleFunc.Values)
			end)
			if configtoggle.Default then
				ToggleFunc:Set(configtoggle.Default)
			end
			return ToggleFunc
		end
		function Fe:AddDropdown(configdropdown)
			configdropdown = configdropdown or {}
			configdropdown.Title = configdropdown.Title or "Dropdown"
			configdropdown.Description = configdropdown.Description or ""
			configdropdown.Values = configdropdown.Values or {}
			configdropdown.Default = configdropdown.Default or ""
			configdropdown.Callback = configdropdown.Callback or function() end

			local Dropdown = Instance.new("Frame")
			local UICorner_12 = Instance.new("UICorner")
			local Title_4 = Instance.new("TextLabel")
			local UIPadding_12 = Instance.new("UIPadding")
			local Desc_5 = Instance.new("TextLabel")
			local UIPadding_13 = Instance.new("UIPadding")
			local UIStroke_7 = Instance.new("UIStroke")
			local DropClick = Instance.new("Frame")
			local UICorner_13 = Instance.new("UICorner")
			local UIStroke_8 = Instance.new("UIStroke")
			local Selecting = Instance.new("TextLabel")
			local BamVo = Instance.new("TextButton")
			local Ngu = Instance.new("Frame")
			local UICorner_22 = Instance.new("UICorner")
			local Clicked = Instance.new("TextButton")
			local DropdownCon = Instance.new("Frame")
			local Dropdown2 = Instance.new("Frame")
			local UICorner_23 = Instance.new("UICorner")
			local UIStroke_14 = Instance.new("UIStroke")
			local List = Instance.new("Frame")
			local UIListLayout_3 = Instance.new("UIListLayout")
			local UIPadding_20 = Instance.new("UIPadding")
			local DropFunc = {Values = configdropdown.Values, Default = configdropdown.Default}
			Dropdown.Name = "Dropdown"
			Dropdown.Parent = RealChannel
			Dropdown.BackgroundColor3 = Color3.fromRGB(144, 144, 144)
			Dropdown.BackgroundTransparency = 0.890
			Dropdown.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Dropdown.BorderSizePixel = 0
			Dropdown.Size = UDim2.new(1, 0, 0, 30)

			UICorner_12.CornerRadius = UDim.new(0, 3)
			UICorner_12.Parent = Dropdown

			Title_4.Name = "Title"
			Title_4.Parent = Dropdown
			Title_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title_4.BackgroundTransparency = 1.000
			Title_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Title_4.BorderSizePixel = 0
			Title_4.Size = UDim2.new(1, 0, 1, 0)
			Title_4.Font = Enum.Font.GothamBold
			Title_4.Text = configdropdown.Title
			Title_4.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title_4.TextSize = 12.000
			Title_4.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding_12.Parent = Title_4
			UIPadding_12.PaddingLeft = UDim.new(0, 8)

			Desc_5.Name = "Desc"
			Desc_5.Parent = Dropdown
			Desc_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Desc_5.BackgroundTransparency = 1.000
			Desc_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Desc_5.BorderSizePixel = 0
			Desc_5.Position = UDim2.new(0, 0, 0, 18)
			Desc_5.Size = UDim2.new(1, -92, 0, 25)
			Desc_5.Font = Enum.Font.GothamBold
			Desc_5.Text = configdropdown.Description
			Desc_5.TextColor3 = Color3.fromRGB(144, 144, 144)
			Desc_5.TextSize = 11.000
			Desc_5.TextWrapped = true
			Desc_5.TextXAlignment = Enum.TextXAlignment.Left
			Desc_5.TextYAlignment = Enum.TextYAlignment.Top

			UIPadding_13.Parent = Desc_5
			UIPadding_13.PaddingLeft = UDim.new(0, 8)
			UIPadding_13.PaddingTop = UDim.new(0, 1)

			UIStroke_7.Parent = Dropdown
			UIStroke_7.Color = Color3.fromRGB(255, 255, 255)
			UIStroke_7.Transparency = 0.930

			DropClick.Name = "DropClick"
			DropClick.Parent = Dropdown
			DropClick.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
			DropClick.BorderColor3 = Color3.fromRGB(0, 0, 0)
			DropClick.BorderSizePixel = 0
			DropClick.Position = UDim2.new(1, -98, 0.22, 0)
			DropClick.Size = UDim2.new(0, 90, 0, 25)

			UICorner_13.CornerRadius = UDim.new(0, 4)
			UICorner_13.Parent = DropClick

			UIStroke_8.Parent = DropClick
			UIStroke_8.Color = Color3.fromRGB(28, 28, 28)
			UIStroke_8.Transparency = 0.930

			Selecting.Name = "Selecting"
			Selecting.Parent = DropClick
			Selecting.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Selecting.BackgroundTransparency = 1.000
			Selecting.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Selecting.BorderSizePixel = 0
			Selecting.Size = UDim2.new(1, 0, 1, 0)
			Selecting.Font = Enum.Font.GothamBold
			Selecting.Text = (configdropdown.Default or "nil")
			Selecting.TextColor3 = Color3.fromRGB(255, 255, 255)
			Selecting.TextSize = 12.000

			BamVo.Name = "BamVo"
			BamVo.Parent = DropClick
			BamVo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			BamVo.BackgroundTransparency = 1.000
			BamVo.BorderColor3 = Color3.fromRGB(0, 0, 0)
			BamVo.BorderSizePixel = 0
			BamVo.Size = UDim2.new(1, 0, 1, 0)
			BamVo.Font = Enum.Font.SourceSans
			BamVo.Text = ""
			BamVo.TextColor3 = Color3.fromRGB(0, 0, 0)
			BamVo.TextSize = 14.000

			Ngu.Name = "Ngu"
			Ngu.Parent = MainFrame
			Ngu.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			Ngu.BackgroundTransparency = 0.500
			Ngu.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Ngu.BorderSizePixel = 0
			Ngu.Size = UDim2.new(1, 0, 1, 0)
			Ngu.Visible = false

			UICorner_22.Parent = Ngu

			Clicked.Name = "Clicked"
			Clicked.Parent = Ngu
			Clicked.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Clicked.BackgroundTransparency = 1.000
			Clicked.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Clicked.BorderSizePixel = 0
			Clicked.Size = UDim2.new(1, -155, 1, 0)
			Clicked.Font = Enum.Font.SourceSans
			Clicked.Text = ""
			Clicked.TextColor3 = Color3.fromRGB(0, 0, 0)
			Clicked.TextSize = 14.000

			DropdownCon.Name = "DropdownCon"
			DropdownCon.Parent = Ngu
			DropdownCon.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
			DropdownCon.BackgroundTransparency = 1.000
			DropdownCon.BorderColor3 = Color3.fromRGB(0, 0, 0)
			DropdownCon.BorderSizePixel = 0
			DropdownCon.ClipsDescendants = true
			DropdownCon.Position = UDim2.new(1, -165, 0, 0)
			DropdownCon.Size = UDim2.new(0, 165, 1, 0)

			Dropdown2.Name = "Dropdown2"
			Dropdown2.Parent = DropdownCon
			Dropdown2.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
			Dropdown2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Dropdown2.BorderSizePixel = 0
			Dropdown2.Position = UDim2.new(1, 0, 0, 5)
			Dropdown2.Size = UDim2.new(0, 150, 1, -10)

			UICorner_23.Parent = Dropdown2

			UIStroke_14.Parent = Dropdown2
			UIStroke_14.Color = Color3.fromRGB(60, 60, 60)
			UIStroke_14.Thickness = 2.000

			List.Name = "List"
			List.Parent = Dropdown2
			List.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			List.BackgroundTransparency = 1.000
			List.BorderColor3 = Color3.fromRGB(0, 0, 0)
			List.BorderSizePixel = 0
			List.Size = UDim2.new(1, 0, 1, 0)

			UIListLayout_3.Parent = List
			UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout_3.Padding = UDim.new(0, 5)

			UIPadding_20.Parent = List
			UIPadding_20.PaddingBottom = UDim.new(0, 4)
			UIPadding_20.PaddingLeft = UDim.new(0, 4)
			UIPadding_20.PaddingRight = UDim.new(0, 4)
			UIPadding_20.PaddingTop = UDim.new(0, 4)
			BamVo.Activated:Connect(function()
				TweenService:Create(Ngu, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.500}):Play()
				TweenService:Create(Dropdown2, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(1, -155, 0, 5)}):Play()
				Ngu.Visible = true
			end)
			Clicked.Activated:Connect(function()
				TweenService:Create(Dropdown2, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(1, 0, 0, 5)}):Play()
				TweenService:Create(Ngu, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundTransparency = 1.000}):Play()
				wait(0.3)
				Ngu.Visible = false
			end)
			if configdropdown.Description ~= nil and configdropdown.Description ~= "" then
				UIPadding_12.Parent = Title_4
				UIPadding_12.PaddingLeft = UDim.new(0, 8)
				UIPadding_12.PaddingTop = UDim.new(0, 8)
				Title_4.Size = UDim2.new(1, 0, 0, 18)
				Desc_5.Size = UDim2.new(1, -50, 0, 15 + Desc_5.TextBounds.Y)   
				Dropdown.Size = UDim2.new(1, 0, 0, 25 + Desc_5.TextBounds.Y)         
			end
			local Items = 0
			function DropFunc:Add(v)
				local Option1 = Instance.new("Frame")
				local UICorner_24 = Instance.new("UICorner")
				local Circle_4 = Instance.new("Frame")
				local UICorner_25 = Instance.new("UICorner")
				local Title_8 = Instance.new("TextLabel")
				local Clicked_2 = Instance.new("TextButton")
				Option1.Name = "Option 1"
				Option1.Parent = List
				Option1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Option1.BackgroundTransparency = 1.000
				Option1.BorderSizePixel = 0
				Option1.Size = UDim2.new(1, 0, 0, 32)
				Option1.LayoutOrder = Items

				UICorner_24.CornerRadius = UDim.new(0, 5)
				UICorner_24.Parent = Option1

				Title_8.Name = "Title"
				Title_8.Parent = Option1
				Title_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Title_8.BackgroundTransparency = 1.000
				Title_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Title_8.BorderSizePixel = 0
				Title_8.Position = UDim2.new(0, 14, 0, 0)
				Title_8.Size = UDim2.new(1, -14, 1, 0)
				Title_8.Font = Enum.Font.GothamBold
				Title_8.Text = tostring(v)
				Title_8.TextColor3 = Color3.fromRGB(255, 255, 255)
				Title_8.TextSize = 13.000
				Title_8.TextXAlignment = Enum.TextXAlignment.Left

				Clicked_2.Name = "Clicked"
				Clicked_2.Parent = Option1
				Clicked_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Clicked_2.BackgroundTransparency = 1.000
				Clicked_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Clicked_2.BorderSizePixel = 0
				Clicked_2.Size = UDim2.new(1, 0, 1, 0)
				Clicked_2.Font = Enum.Font.SourceSans
				Clicked_2.Text = ""
				Clicked_2.TextColor3 = Color3.fromRGB(0, 0, 0)
				Clicked_2.TextSize = 14.000
				if Items == 0 then
					Circle_4.Name = "Circle"
					Circle_4.Parent = Option1
					Circle_4.BackgroundTransparency = 1.000
					Circle_4.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
					Circle_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Circle_4.BorderSizePixel = 0
					Circle_4.Position = UDim2.new(0, 0, 0, 7)
					Circle_4.Size = UDim2.new(0, 4, 0, 16)
					UICorner_25.CornerRadius = UDim.new(0, 5)
					UICorner_25.Parent = Circle_4
				end
				Items = Items + 1
				Clicked_2.Activated:Connect(function()
					local CricleDropdown
					for _, v in pairs(List:GetChildren()) do
						for nig, ga in pairs(v:GetChildren()) do
							if ga.Name == "Circle" then
								CricleDropdown = ga
								break
							end
						end
					end
					if CricleDropdown ~= nil then
						TweenService:Create(CricleDropdown, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundTransparency = 0}):Play()
						for _, v in pairs(Dropdown2:GetChildren()) do
							for nig, ga in pairs(v:GetChildren()) do
								if ga:IsA('Frame') then
									TweenService:Create(ga, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundTransparency = 1.000}):Play()
								end
							end
						end
						TweenService:Create(Option1, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.960}):Play()
						TweenService:Create(CricleDropdown, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 4, 0, 21)}):Play()
						Selecting.Text = tostring(v)
						wait(0.18)
						TweenService:Create(CricleDropdown, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 4, 0, 16)}):Play()
						TweenService:Create(CricleDropdown, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(0, 0, 0, 7 + (38 * Option1.LayoutOrder))}):Play()
						configdropdown.Callback(Selecting.Text)
					end
				end)
			end
			function DropFunc:Set(cotect)
				for _, v in pairs(List:GetChildren()) do
					if v:FindFirstChildOfClass("TextLabel") and v:FindFirstChildOfClass("TextLabel").Text == cotect then
						for _, v in pairs(List:GetChildren()) do
							for nig, ga in pairs(v:GetChildren()) do
								if ga.Name == "Circle"then
									CricleDropdown = ga
									break
								end
							end
						end
						if CricleDropdown ~= nil then
							TweenService:Create(CricleDropdown, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundTransparency = 0}):Play()
							for _, v in pairs(Dropdown2:GetChildren()) do
								for nig, ga in pairs(v:GetChildren()) do
									if ga:IsA('Frame') then
										TweenService:Create(ga, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundTransparency = 1.000}):Play()
									end
								end
							end
							TweenService:Create(v, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.960}):Play()
							TweenService:Create(CricleDropdown, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 4, 0, 21)}):Play()
							Selecting.Text = tostring(cotect)
							wait(0.18)
							TweenService:Create(CricleDropdown, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 4, 0, 16)}):Play()
							TweenService:Create(CricleDropdown, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(0, 0, 0, 7 + (38 * v.LayoutOrder))}):Play()
							configdropdown.Callback(Selecting.Text)
						end
					end
				end
			end
			function DropFunc:Refresh(newvalues)
				for _, v in pairs(List:GetChildren()) do
					if v:IsA("Frame") then
						v:Destroy()
					end
				end
				for _, v in pairs(newvalues) do
					DropFunc:Add(v)
				end
			end
			DropFunc:Refresh(DropFunc.Values)
			return DropFunc
		end
		function Fe:AddSlider(configslider)
			configslider = configslider or {}
			configslider.Title = configslider.Title or "Slider"
			configslider.Description = configslider.Description or ""
			configslider.Max = configslider.Max or 100
			configslider.Min = configslider.Min or 10
			configslider.Default = configslider.Default or 50
			configslider.Callback = configslider.Callback or function() end

			local SliderFunc = {Values = configslider.Default}
			local Input_2 = Instance.new("Frame")
			local UICorner_16 = Instance.new("UICorner")
			local Title_6 = Instance.new("TextLabel")
			local UIPadding_16 = Instance.new("UIPadding")
			local Desc_7 = Instance.new("TextLabel")
			local UIPadding_17 = Instance.new("UIPadding")
			local UIStroke_11 = Instance.new("UIStroke")
			local SliderFrame = Instance.new("Frame")
			local UICorner_17 = Instance.new("UICorner")
			local UIStroke_12 = Instance.new("UIStroke")
			local SliderDraggable = Instance.new("Frame")
			local UICorner_18 = Instance.new("UICorner")
			local Tron = Instance.new("Frame")
			local UICorner_19 = Instance.new("UICorner")
			local TextValue = Instance.new("Frame")
			local UICorner_20 = Instance.new("UICorner")
			local TextBox_2 = Instance.new("TextBox")

			Input_2.Name = "Input"
			Input_2.Parent = RealChannel
			Input_2.BackgroundColor3 = Color3.fromRGB(144, 144, 144)
			Input_2.BackgroundTransparency = 0.890
			Input_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Input_2.BorderSizePixel = 0
			Input_2.Size = UDim2.new(1, 0, 0, 30)

			UICorner_16.CornerRadius = UDim.new(0, 3)
			UICorner_16.Parent = Input_2

			Title_6.Name = "Title"
			Title_6.Parent = Input_2
			Title_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title_6.BackgroundTransparency = 1.000
			Title_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Title_6.BorderSizePixel = 0
			Title_6.Size = UDim2.new(1, 0, 0, 18)
			Title_6.Font = Enum.Font.GothamBold
			Title_6.Text = configslider.Title
			Title_6.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title_6.TextSize = 12.000
			Title_6.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding_16.Parent = Title_6
			UIPadding_16.PaddingLeft = UDim.new(0, 8)

			Desc_7.Name = "Desc"
			Desc_7.Parent = Input_2
			Desc_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Desc_7.BackgroundTransparency = 1.000
			Desc_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Desc_7.BorderSizePixel = 0
			Desc_7.Position = UDim2.new(0, 0, 0, 18)
			Desc_7.Size = UDim2.new(1, -150, 0, 25)
			Desc_7.Font = Enum.Font.GothamBold
			Desc_7.Text = configslider.Description
			Desc_7.TextColor3 = Color3.fromRGB(144, 144, 144)
			Desc_7.TextSize = 11.000
			Desc_7.TextWrapped = true
			Desc_7.TextXAlignment = Enum.TextXAlignment.Left
			Desc_7.TextYAlignment = Enum.TextYAlignment.Top

			UIPadding_17.Parent = Desc_7
			UIPadding_17.PaddingLeft = UDim.new(0, 8)
			UIPadding_17.PaddingTop = UDim.new(0, 1)

			UIStroke_11.Parent = Input_2
			UIStroke_11.Color = Color3.fromRGB(255, 255, 255)
			UIStroke_11.Transparency = 0.930

			SliderFrame.Name = "SliderFrame"
			SliderFrame.Parent = Input_2
			SliderFrame.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
			SliderFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
			SliderFrame.BorderSizePixel = 0
			SliderFrame.Position = UDim2.new(1, -140, 0, 19)
			SliderFrame.Size = UDim2.new(0, 135, 0, 8)

			UICorner_17.CornerRadius = UDim.new(1, 0)
			UICorner_17.Parent = SliderFrame

			UIStroke_12.Parent = SliderFrame
			UIStroke_12.Color = Color3.fromRGB(255, 255, 255)
			UIStroke_12.Transparency = 0.930

			SliderDraggable.Name = "SliderDraggable"
			SliderDraggable.Parent = SliderFrame
			SliderDraggable.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
			SliderDraggable.BorderColor3 = Color3.fromRGB(0, 0, 0)
			SliderDraggable.BorderSizePixel = 0
			SliderDraggable.Size = UDim2.new(0, 80, 1, 0)

			UICorner_18.CornerRadius = UDim.new(1, 0)
			UICorner_18.Parent = SliderDraggable

			Tron.Name = "Tron"
			Tron.Parent = SliderDraggable
			Tron.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
			Tron.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Tron.BorderSizePixel = 0
			Tron.Position = UDim2.new(1, -15, 0, -4)
			Tron.Size = UDim2.new(0, 15, 0, 15)

			UICorner_19.CornerRadius = UDim.new(1, 0)
			UICorner_19.Parent = Tron

			TextValue.Name = "TextValue"
			TextValue.Parent = SliderFrame
			TextValue.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
			TextValue.BorderColor3 = Color3.fromRGB(0, 0, 0)
			TextValue.BorderSizePixel = 0
			TextValue.Position = UDim2.new(0, -47, 0, -6)
			TextValue.Size = UDim2.new(0, 40, 0, 20)

			UICorner_20.CornerRadius = UDim.new(0, 3)
			UICorner_20.Parent = TextValue

			TextBox_2.Parent = TextValue
			TextBox_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextBox_2.BackgroundTransparency = 1.000
			TextBox_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			TextBox_2.BorderSizePixel = 0
			TextBox_2.ClipsDescendants = true
			TextBox_2.Size = UDim2.new(1, 0, 1, 0)
			TextBox_2.ClearTextOnFocus = false
			TextBox_2.Font = Enum.Font.GothamBold
			TextBox_2.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
			TextBox_2.Text = SliderFunc.Values
			TextBox_2.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextBox_2.TextSize = 12.000
			if configslider.Description ~= nil and configslider.Description ~= "" then
				UIPadding_16.Parent = Title_6
				UIPadding_16.PaddingLeft = UDim.new(0, 8)
				UIPadding_16.PaddingTop = UDim.new(0, 8)
				Desc_7.Size = UDim2.new(1, -190, 0, 15 + Desc_7.TextBounds.Y)   
				Input_2.Size = UDim2.new(1, 0, 0, 25 + Desc_7.TextBounds.Y + 15)         
			end
			local dragging = false
			local function Round(Number, Factor)
				local Result = math.floor(Number/Factor + (math.sign(Number) * 0.5)) * Factor
				if Result < 0 then Result = Result + Factor end
				return Result
			end
			function SliderFunc:Set(Value)
				Value = math.clamp(Round(Value, 1), configslider.Min, configslider.Max)
				SliderFunc.Values = Value
				TextBox_2.Text = tostring(Value)
				configslider.Callback(SliderFunc.Values)
				TweenService:Create(
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
			TextBox_2:GetPropertyChangedSignal("Text"):Connect(function()
				local Valid = TextBox_2.Text:gsub("[^%d]", "")
				if Valid ~= "" then
					local ValidNumber = math.min(tonumber(Valid), configslider.Max)
					TextBox_2.Text = tostring(ValidNumber)
				else
					TextBox_2.Text = tostring(Valid)
				end
			end)
			TextBox_2.FocusLost:Connect(function()
				if TextBox_2.Text ~= "" then
					SliderFunc:Set(tonumber(TextBox_2.Text))
				else
					SliderFunc:Set(0)
				end
			end)
			SliderFunc:Set(tonumber(configslider.Default))
			return SliderFunc
		end
		function Fe:AddParagraph(cfp)
			cfp = cfp or {}
			cfp.Title = cfp.Title or "Paragraph"
			cfp.Description = cfp.Description or ""
			cfp.Icon = cfp.Icon or ""
			local Paragraph = Instance.new("Frame")
			local UICorner_21 = Instance.new("UICorner")
			local Title_7 = Instance.new("TextLabel")
			local UIPadding_18 = Instance.new("UIPadding")
			local Desc_8 = Instance.new("TextLabel")
			local UIPadding_19 = Instance.new("UIPadding")
			local IconButton_2 = Instance.new("ImageLabel")
			local UIStroke_13 = Instance.new("UIStroke")
			local p = {}
			Paragraph.Name = "Paragraph"
			Paragraph.Parent = RealChannel
			Paragraph.BackgroundColor3 = Color3.fromRGB(144, 144, 144)
			Paragraph.BackgroundTransparency = 0.890
			Paragraph.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Paragraph.BorderSizePixel = 0
			Paragraph.Size = UDim2.new(1, 0, 0, 30)

			UICorner_21.CornerRadius = UDim.new(0, 3)
			UICorner_21.Parent = Paragraph

			Title_7.Name = "Title"
			Title_7.Parent = Paragraph
			Title_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title_7.BackgroundTransparency = 1.000
			Title_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Title_7.BorderSizePixel = 0
			Title_7.Size = UDim2.new(1, 0, 0, 18)
			Title_7.Font = Enum.Font.GothamBold
			Title_7.Text = cfp.Title
			Title_7.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title_7.TextSize = 12.000
			Title_7.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding_18.Parent = Title_7
			UIPadding_18.PaddingLeft = UDim.new(0, 8)
			UIPadding_18.PaddingTop = UDim.new(0, 8)

			Desc_8.Name = "Desc"
			Desc_8.Parent = Paragraph
			Desc_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Desc_8.BackgroundTransparency = 1.000
			Desc_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Desc_8.BorderSizePixel = 0
			Desc_8.Position = UDim2.new(0, 0, 0, 18)
			Desc_8.Size = UDim2.new(1, -50, 0, 25)
			Desc_8.Font = Enum.Font.GothamBold
			Desc_8.Text = cfp.Description
			Desc_8.TextColor3 = Color3.fromRGB(144, 144, 144)
			Desc_8.TextSize = 11.000
			Desc_8.TextWrapped = true
			Desc_8.TextXAlignment = Enum.TextXAlignment.Left
			Desc_8.TextYAlignment = Enum.TextYAlignment.Top

			UIPadding_19.Parent = Desc_8
			UIPadding_19.PaddingLeft = UDim.new(0, 8)
			UIPadding_19.PaddingTop = UDim.new(0, 1)

			IconButton_2.Name = "IconButton"
			IconButton_2.Parent = Paragraph
			IconButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			IconButton_2.BackgroundTransparency = 1.000
			IconButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			IconButton_2.BorderSizePixel = 0
			IconButton_2.Position = UDim2.new(1, -35, 0, 10)
			IconButton_2.Size = UDim2.new(0, 25, 0, 25)
			IconButton_2.Image = cfp.Icon

			UIStroke_13.Parent = Paragraph
			UIStroke_13.Color = Color3.fromRGB(255, 255, 255)
			UIStroke_13.Transparency = 0.930
			if cfp.Description ~= nil and cfp.Description ~= "" then
				Desc_8.Size = UDim2.new(1, -50, 0, 15 + Desc_8.TextBounds.Y)   
				Paragraph.Size = UDim2.new(1, 0, 0, 25 + Desc_8.TextBounds.Y + 5)         
			end
			function p:SetTitle(c)
				Title_7.Text = c
			end
			function p:SetDesc(c)
				Desc_8.Text = c
			end
			return p
		end
		function Fe:AddInput(configinput)
			configinput = configinput or {}
			configinput.Title = configinput.Title or "Input"
			configinput.Description = configinput.Description or ""
			configinput.PlaceHolderText = configinput.PlaceHolderText or "Input Here..."
			configinput.Default = configinput.Default or ""
			configinput.Callback = configinput.Callback or function() end

			local Input = Instance.new("Frame")
			local UICorner_14 = Instance.new("UICorner")
			local Title_5 = Instance.new("TextLabel")
			local UIPadding_14 = Instance.new("UIPadding")
			local Desc_6 = Instance.new("TextLabel")
			local UIPadding_15 = Instance.new("UIPadding")
			local UIStroke_9 = Instance.new("UIStroke")
			local InputFrame = Instance.new("Frame")
			local UICorner_15 = Instance.new("UICorner")
			local TextBox = Instance.new("TextBox")
			local Frame = Instance.new("Frame")
			local UIStroke_10 = Instance.new("UIStroke")

			Input.Name = "Input"
			Input.Parent = RealChannel
			Input.BackgroundColor3 = Color3.fromRGB(144, 144, 144)
			Input.BackgroundTransparency = 0.890
			Input.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Input.BorderSizePixel = 0
			Input.Size = UDim2.new(1, 0, 0, 30)

			UICorner_14.CornerRadius = UDim.new(0, 3)
			UICorner_14.Parent = Input

			Title_5.Name = "Title"
			Title_5.Parent = Input
			Title_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title_5.BackgroundTransparency = 1.000
			Title_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Title_5.BorderSizePixel = 0
			Title_5.Size = UDim2.new(1, 0, 0, 18)
			Title_5.Font = Enum.Font.GothamBold
			Title_5.Text = configinput.Title
			Title_5.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title_5.TextSize = 12.000
			Title_5.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding_14.Parent = Title_5
			UIPadding_14.PaddingLeft = UDim.new(0, 8)
			UIPadding_14.PaddingTop = UDim.new(0, 8)

			Desc_6.Name = "Desc"
			Desc_6.Parent = Input
			Desc_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Desc_6.BackgroundTransparency = 1.000
			Desc_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Desc_6.BorderSizePixel = 0
			Desc_6.Position = UDim2.new(0, 0, 0, 18)
			Desc_6.Size = UDim2.new(1, -130, 0, 25)
			Desc_6.Font = Enum.Font.GothamBold
			Desc_6.Text = configinput.Description
			Desc_6.TextColor3 = Color3.fromRGB(144, 144, 144)
			Desc_6.TextSize = 11.000
			Desc_6.TextWrapped = true
			Desc_6.TextXAlignment = Enum.TextXAlignment.Left
			Desc_6.TextYAlignment = Enum.TextYAlignment.Top

			UIPadding_15.Parent = Desc_6
			UIPadding_15.PaddingLeft = UDim.new(0, 8)
			UIPadding_15.PaddingTop = UDim.new(0, 1)

			UIStroke_9.Parent = Input
			UIStroke_9.Color = Color3.fromRGB(255, 255, 255)
			UIStroke_9.Transparency = 0.930

			InputFrame.Name = "InputFrame"
			InputFrame.Parent = Input
			InputFrame.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
			InputFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
			InputFrame.BorderSizePixel = 0
			InputFrame.Position = UDim2.new(1, -125, 0, 9)
			InputFrame.Size = UDim2.new(0, 120, 0, 25)

			UICorner_15.CornerRadius = UDim.new(0, 4)
			UICorner_15.Parent = InputFrame

			TextBox.Parent = InputFrame
			TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextBox.BackgroundTransparency = 1.000
			TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
			TextBox.BorderSizePixel = 0
			TextBox.ClipsDescendants = true
			TextBox.Size = UDim2.new(1, 0, 1, 0)
			TextBox.ClearTextOnFocus = false
			TextBox.Font = Enum.Font.GothamBold
			TextBox.PlaceholderColor3 = Color3.fromRGB(144, 144, 144)
			TextBox.PlaceholderText = configinput.PlaceHolderText
			TextBox.Text = configinput.Default
			TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextBox.TextSize = 12.000
			TextBox.TextWrapped = true

			Frame.Parent = TextBox
			Frame.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
			Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Frame.BorderSizePixel = 0
			Frame.Position = UDim2.new(0, 0, 1, -1)
			Frame.Size = UDim2.new(1, 0, 0, 1)

			UIStroke_10.Parent = InputFrame
			UIStroke_10.Color = Color3.fromRGB(90, 90, 90)
			UIStroke_10.Transparency = 0.800
			if configinput.Description ~= nil and configinput.Description ~= "" then
				Desc_6.Size = UDim2.new(1, -50, 0, 15 + Desc_6.TextBounds.Y)   
				Input.Size = UDim2.new(1, 0, 0, 25 + Desc_6.TextBounds.Y + 5)         
			end
			TextBox.FocusLost:Connect(function()
				configinput.Callback(TextBox.Text)
			end)
		end
		function Fe:AddSection(title)
			local Section = Instance.new("TextLabel")
			local UIPadding_11 = Instance.new("UIPadding")
			Section.Name = "Section"
			Section.Parent = RealChannel
			Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Section.BackgroundTransparency = 1.000
			Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Section.BorderSizePixel = 0
			Section.Size = UDim2.new(1, 0, 0, 20)
			Section.Font = Enum.Font.GothamBold
			Section.Text = title
			Section.TextColor3 = Color3.fromRGB(255, 255, 255)
			Section.TextSize = 14.000
			Section.TextXAlignment = Enum.TextXAlignment.Left
			UIPadding_11.Parent = Section
			UIPadding_11.PaddingLeft = UDim.new(0, 4)
		end
		return Fe
	end
	return TabFunc
end
return Lib
