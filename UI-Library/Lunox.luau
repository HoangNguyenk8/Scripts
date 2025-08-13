-- Lunox Lib
local L_1_ = {
	Stepped = game:GetService("RunService").Stepped
}
function L_1_:Tween(L_2_arg0, L_3_arg1, L_4_arg2, L_5_arg3, L_6_arg4)
	local L_7_ = game:GetService("TweenService"):Create(L_2_arg0, TweenInfo.new(L_3_arg1, Enum.EasingStyle[L_4_arg2]), {
		[L_5_arg3] = L_6_arg4
	})
	L_7_:Play()
	return L_7_
end
function L_1_:MouseEvent(L_8_arg0, ...)
	local L_9_ = {
		...
	}
	L_8_arg0.MouseEnter:Connect(L_9_[1])
	L_8_arg0.MouseLeave:Connect(L_9_[2])
end
function L_1_:MakeDraggable(...)
	local L_10_ = {
		...
	}
	local L_11_ = false
	local L_12_ = nil
	local L_13_ = nil
	local L_14_ = nil
	L_10_[2].InputBegan:Connect(function(L_15_arg0)
		if L_15_arg0.UserInputType == Enum.UserInputType.MouseButton1 or L_15_arg0.UserInputType == Enum.UserInputType.Touch then
			L_11_ = true
			L_13_ = L_15_arg0.Position
			L_14_ = L_10_[1].Position

			L_15_arg0.Changed:Connect(function()
				if L_15_arg0.UserInputState == Enum.UserInputState.End then
					L_11_ = false
				end
			end)
		end
	end)
	L_10_[2].InputChanged:Connect(function(L_16_arg0)
		if L_16_arg0.UserInputType == Enum.UserInputType.MouseMovement or L_16_arg0.UserInputType == Enum.UserInputType.Touch then
			L_12_ = L_16_arg0
		end
	end)
	game:GetService("UserInputService").InputChanged:Connect(function(L_17_arg0)
		if L_17_arg0 == L_12_ and L_11_ then
			local L_18_ = L_17_arg0.Position - L_13_
			local L_19_ = UDim2.new(
                L_14_.X.Scale,
                L_14_.X.Offset + L_18_.X,
                L_14_.Y.Scale,
                L_14_.Y.Offset + L_18_.Y
            )
			L_1_:Tween(L_10_[1], 0.1, "Quad", "Position", L_19_)
		end
	end)
end
function L_1_:UpdateScroll(L_20_arg0, L_21_arg1)
	L_20_arg0.CanvasSize = UDim2.new(0, 0, 0, L_21_arg1.AbsoluteContentSize.Y + 20)
end
function L_1_:NewNotify(L_22_arg0)
	L_22_arg0 = L_22_arg0 or {}
	L_22_arg0.Title = L_22_arg0.Title
	L_22_arg0.Content = L_22_arg0.Content or ""
	L_22_arg0.Duration = L_22_arg0.Duration or 5
	spawn(function()
		if not game.CoreGui:FindFirstChild("NotifyGui") then
			local L_29_ = Instance.new("ScreenGui")
			L_29_.Name = "NotifyGui"
			L_29_.Parent = game.CoreGui
			L_29_.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		end
		if not game.CoreGui.NotifyGui:FindFirstChild("NotifyLayout") then
			local L_30_ = Instance.new("Frame")
			L_30_.Name = "NotifyLayout"
			L_30_.Parent = game.CoreGui.NotifyGui
			L_30_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			L_30_.BackgroundTransparency = 1.000
			L_30_.BorderColor3 = Color3.fromRGB(0, 0, 0)
			L_30_.BorderSizePixel = 0
			L_30_.Position = UDim2.new(1, -350, 1, -100)
			L_30_.Size = UDim2.new(0, 300, 1, -900)
		end
		if not game.CoreGui.NotifyGui.NotifyLayout:FindFirstChild("List") then
			local L_31_ = Instance.new("UIListLayout")
			L_31_.Name = "List"
			L_31_.Padding = UDim.new(0, 5)
			L_31_.SortOrder = Enum.SortOrder.LayoutOrder
			L_31_.VerticalAlignment = Enum.VerticalAlignment.Bottom
			L_31_.Parent = game.CoreGui.NotifyGui:FindFirstChild("NotifyLayout")
		end
		local L_23_ = Instance.new("Frame")
		local L_24_ = Instance.new("ImageLabel")
		local L_25_ = Instance.new("TextLabel")
		local L_26_ = Instance.new("ImageButton")
		local L_27_ = Instance.new("TextLabel")
		local L_28_ = Instance.new("ImageLabel")
		L_23_.Name = "NotifyFrame"
		L_23_.Parent = game.CoreGui.NotifyGui:WaitForChild("NotifyLayout")
		L_23_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		L_23_.BackgroundTransparency = 1.000
		L_23_.BorderColor3 = Color3.fromRGB(0, 0, 0)
		L_23_.BorderSizePixel = 0
		L_23_.Position = UDim2.new(0, 0, 0, 0)
		L_23_.Size = UDim2.new(1, 0, 0, 80)
		L_24_.Name = "Main"
		L_24_.Parent = L_23_
		L_24_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		L_24_.BackgroundTransparency = 1.000
		L_24_.BorderColor3 = Color3.fromRGB(0, 0, 0)
		L_24_.BorderSizePixel = 0
		L_24_.Position = UDim2.new(0, 500, 0, 0)
		L_24_.Size = UDim2.new(1, 0, 1, 0)
		L_24_.Image = "rbxassetid://80999662900595"
		L_24_.ImageColor3 = Color3.fromRGB(16, 16, 16)
		L_24_.ImageTransparency = 0.100
		L_24_.ScaleType = Enum.ScaleType.Slice
		L_24_.SliceCenter = Rect.new(256, 256, 256, 256)
		L_24_.SliceScale = 0.055
		L_25_.Name = "Title"
		L_25_.Parent = L_24_
		L_25_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		L_25_.BackgroundTransparency = 1.000
		L_25_.BorderColor3 = Color3.fromRGB(0, 0, 0)
		L_25_.BorderSizePixel = 0
		L_25_.Position = UDim2.new(0, 14, 0, 11)
		L_25_.Size = UDim2.new(1, -30, 0, 18)
		L_25_.Font = Enum.Font.Arial
		L_25_.Text = L_22_arg0.Title
		L_25_.TextColor3 = Color3.fromRGB(255, 255, 255)
		L_25_.TextSize = 14.000
		L_25_.TextXAlignment = Enum.TextXAlignment.Left
		L_26_.Name = "Close"
		L_26_.Parent = L_24_
		L_26_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		L_26_.BackgroundTransparency = 1.000
		L_26_.BorderColor3 = Color3.fromRGB(0, 0, 0)
		L_26_.BorderSizePixel = 0
		L_26_.Position = UDim2.new(1, -27, 0, 8)
		L_26_.Size = UDim2.new(0, 18, 0, 18)
		L_26_.Image = "rbxassetid://105957381820378"
		L_26_.ImageRectOffset = Vector2.new(480, 0)
		L_26_.ImageRectSize = Vector2.new(96, 96)
		L_27_.Name = "Desc"
		L_27_.Parent = L_24_
		L_27_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		L_27_.BackgroundTransparency = 1.000
		L_27_.BorderColor3 = Color3.fromRGB(0, 0, 0)
		L_27_.BorderSizePixel = 0
		L_27_.Position = UDim2.new(0, 14, 0, 29)
		L_27_.Size = UDim2.new(1, -30, 1, -29)
		L_27_.Font = Enum.Font.Arial
		L_27_.Text = L_22_arg0.Content
		L_27_.TextColor3 = Color3.fromRGB(100, 100, 100)
		L_27_.TextSize = 14.000
		L_27_.TextXAlignment = Enum.TextXAlignment.Left
		L_27_.TextYAlignment = Enum.TextYAlignment.Top
		if L_27_.Text ~= "" then
			L_1_.Stepped:Connect(function()
				L_23_.Size = UDim2.new(1, 0, 0, math.max(L_27_.TextBounds.Y + 30, 68))
			end)
		end
		L_28_.Name = "UIStroke"
		L_28_.Parent = L_24_
		L_28_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		L_28_.BackgroundTransparency = 1.000
		L_28_.BorderColor3 = Color3.fromRGB(0, 0, 0)
		L_28_.BorderSizePixel = 0
		L_28_.Size = UDim2.new(1, 0, 1, 0)
		L_28_.Image = "rbxassetid://117788349049947"
		L_28_.ImageTransparency = 0.700
		L_28_.ScaleType = Enum.ScaleType.Slice
		L_28_.SliceCenter = Rect.new(256, 256, 256, 256)
		L_28_.SliceScale = 0.050
		L_1_:Tween(L_24_, 0.3, "Quad", "Position", UDim2.new(0, 0, 0, 0))
		task.wait(L_22_arg0.Duration)
		L_1_:Tween(L_24_, 0.3, "Quad", "Position", UDim2.new(0, 500, 0, 0))
		task.wait(0.6)
		L_23_:Destroy()
	end)
end
function L_1_:NewWindow(L_32_arg0)
	L_1_.Window = L_1_.Window or false
	if L_1_.Window then
		warn("Already Create Window")
		return
	end
	L_1_.Window = true
	L_32_arg0 = L_32_arg0 or {}
	L_32_arg0.Title = L_32_arg0.Title or "Lunox Example"
	L_32_arg0.Author = L_32_arg0.Author or "! xHoang"
	L_32_arg0.Icon = L_32_arg0.Icon or "rbxassetid://119115999130075"
	L_32_arg0.Scale = L_32_arg0.Scale or UDim2.fromOffset(600, 500)
	L_32_arg0.Key = L_32_arg0.Key or {}
	L_32_arg0.Key.Enable = L_32_arg0.Key.Enable or false
	L_32_arg0.Key.RealKey = L_32_arg0.Key.RealKey or {
		"1234",
		"4567"
	}
	L_32_arg0.Key.Link = L_32_arg0.Key.Link or ""
	local L_33_ = Instance.new("ScreenGui")
	local L_34_ = Instance.new("Frame")
	local L_35_ = Instance.new("ImageLabel")
	local L_36_ = Instance.new("ImageLabel")
	local L_37_ = Instance.new("Frame")
	local L_38_ = Instance.new("Frame")
	local L_39_ = Instance.new("Frame")
	local L_40_ = Instance.new("ImageLabel")
	local L_41_ = Instance.new("TextLabel")
	local L_42_ = Instance.new("TextLabel")
	local L_43_ = Instance.new("Frame")
	local L_44_ = Instance.new("UIListLayout")
	local L_45_ = Instance.new("ImageButton")
	local L_46_ = Instance.new("ImageLabel")
	local L_47_ = Instance.new("UIPadding")
	local L_48_ = Instance.new("ImageButton")
	local L_49_ = Instance.new("ImageLabel")
	local L_50_ = Instance.new("ImageButton")
	local L_51_ = Instance.new("ImageLabel")
	local L_52_ = Instance.new("Frame")
	local L_53_ = Instance.new("ScrollingFrame")
	local L_54_ = Instance.new("UIListLayout")
	local L_55_ = Instance.new("UIPadding")
	local L_56_ = Instance.new("Frame")
	local L_57_ = Instance.new("ImageLabel")
	local L_58_ = Instance.new("Folder")
	local L_59_ = Instance.new("Frame")
	local L_60_ = Instance.new("Frame")
	local L_61_ = Instance.new("ImageLabel")
	local L_62_ = Instance.new("TextLabel")
	local L_64_ = Instance.new("TextButton")
	L_33_.Parent = game.CoreGui
	L_33_.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	L_34_.Parent = L_33_
	L_34_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	L_34_.AnchorPoint = Vector2.new(0.5, 0.5)
	L_34_.BackgroundTransparency = 1.000
	L_34_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	L_34_.BorderSizePixel = 0
	L_34_.Position = UDim2.new(0.5, 0, 0.53, 0)
	L_34_.Size = UDim2.new(0, 500, 0, 400)
	L_35_.Name = "Blur"
	L_35_.Parent = L_34_
	L_35_.AnchorPoint = Vector2.new(0.5, 0.5)
	L_35_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	L_35_.BackgroundTransparency = 1.000
	L_35_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	L_35_.BorderSizePixel = 0
	L_35_.Position = UDim2.new(0.5, 0, 0.5, 0)
	L_35_.Size = UDim2.new(1, 120, 1, 120)
	L_35_.ZIndex = -5
	L_35_.Image = "rbxassetid://8992230677"
	L_35_.ImageColor3 = Color3.fromRGB(0, 0, 0)
	L_35_.ImageTransparency = 0.330
	L_35_.ScaleType = Enum.ScaleType.Slice
	L_35_.SliceCenter = Rect.new(99, 99, 99, 99)
	L_36_.Name = "Background"
	L_36_.Parent = L_34_
	L_36_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	L_36_.BackgroundTransparency = 1.000
	L_36_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	L_36_.BorderSizePixel = 0
	L_36_.Size = UDim2.new(1, 0, 1, 0)
	L_36_.Image = "rbxassetid://80999662900595"
	L_36_.ImageColor3 = Color3.fromRGB(16, 16, 16)
	L_36_.ScaleType = Enum.ScaleType.Slice
	L_36_.SliceCenter = Rect.new(256, 256, 256, 256)
	L_36_.SliceScale = 0.083
	L_37_.Name = "Main"
	L_37_.Parent = L_34_
	L_37_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	L_37_.BackgroundTransparency = 1.000
	L_37_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	L_37_.BorderSizePixel = 0
	L_37_.Size = UDim2.new(1, 0, 1, 0)
	L_64_.Name = "Click"
	L_64_.Parent = L_33_
	L_64_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	L_64_.BackgroundTransparency = 1.000
	L_64_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	L_64_.BorderSizePixel = 0
	L_64_.Size = UDim2.new(1, 0, 1, 0)
	L_64_.Visible = false
	L_38_.Name = "Topbar"
	L_38_.Parent = L_37_
	L_38_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	L_38_.BackgroundTransparency = 1.000
	L_38_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	L_38_.BorderSizePixel = 0
	L_38_.Size = UDim2.new(1, 0, 0, 65)
	L_39_.Name = "Left"
	L_39_.Parent = L_38_
	L_39_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	L_39_.BackgroundTransparency = 1.000
	L_39_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	L_39_.BorderSizePixel = 0
	L_39_.Size = UDim2.new(0, 250, 1, 0)
	L_40_.Name = "Icon"
	L_40_.Parent = L_39_
	L_40_.AnchorPoint = Vector2.new(0, 0.5)
	L_40_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	L_40_.BackgroundTransparency = 1.000
	L_40_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	L_40_.BorderSizePixel = 0
	L_40_.Position = UDim2.new(0, 20, 0.5, 0)
	L_40_.Size = UDim2.new(0, 35, 0, 35)
	L_40_.Image = L_32_arg0.Icon
	L_40_.ImageTransparency = 0.230
	L_41_.Name = "Name"
	L_41_.Parent = L_39_
	L_41_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	L_41_.BackgroundTransparency = 1.000
	L_41_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	L_41_.BorderSizePixel = 0
	L_41_.Position = UDim2.new(0, 69, 0, 10)
	L_41_.Size = UDim2.new(0, 200, 0, 30)
	L_41_.Font = Enum.Font.ArialBold
	L_41_.Text = L_32_arg0.Title
	L_41_.TextColor3 = Color3.fromRGB(255, 255, 255)
	L_41_.TextSize = 16.000
	L_41_.TextXAlignment = Enum.TextXAlignment.Left
	L_42_.Name = "Author"
	L_42_.Parent = L_39_
	L_42_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	L_42_.BackgroundTransparency = 1.000
	L_42_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	L_42_.BorderSizePixel = 0
	L_42_.Position = UDim2.new(0, 69, 0, 35)
	L_42_.Size = UDim2.new(0, 200, 0, 30)
	L_42_.Font = Enum.Font.Arial
	L_42_.Text = "By " .. L_32_arg0.Author
	L_42_.TextColor3 = Color3.fromRGB(255, 255, 255)
	L_42_.TextSize = 15.000
	L_42_.TextTransparency = 0.400
	L_42_.TextXAlignment = Enum.TextXAlignment.Left
	L_42_.TextYAlignment = Enum.TextYAlignment.Top
	L_43_.Name = "Right"
	L_43_.Parent = L_38_
	L_43_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	L_43_.BackgroundTransparency = 1.000
	L_43_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	L_43_.BorderSizePixel = 0
	L_43_.Position = UDim2.new(1, -160, 0, 0)
	L_43_.Size = UDim2.new(0, 160, 1, 0)
	L_44_.Parent = L_43_
	L_44_.FillDirection = Enum.FillDirection.Horizontal
	L_44_.SortOrder = Enum.SortOrder.LayoutOrder
	L_44_.Padding = UDim.new(0, 15)
	L_45_.Name = "Minized"
	L_45_.Parent = L_43_
	L_45_.AnchorPoint = Vector2.new(0, 0.5)
	L_45_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	L_45_.BackgroundTransparency = 1.000
	L_45_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	L_45_.BorderSizePixel = 0
	L_45_.Position = UDim2.new(0, 5, 0.5, 0)
	L_45_.Selectable = false
	L_45_.Size = UDim2.new(0, 40, 0, 40)
	L_45_.Image = "rbxassetid://80999662900595"
	L_45_.ImageTransparency = 1
	L_45_.ScaleType = Enum.ScaleType.Slice
	L_45_.SliceCenter = Rect.new(256, 256, 256, 256)
	L_45_.SliceScale = 0.050
	L_45_.Activated:Connect(function()
		L_37_.Visible = false
		L_1_:Tween(L_34_, 0.13, "Quad", "Size", UDim2.fromOffset(500, 300))
		L_1_:Tween(L_36_, 0.2, "Quad", "ImageTransparency", 1)
		L_1_:Tween(L_35_, 0.2, "Quad", "ImageTransparency", 1)
		task.wait(0.1)
		L_34_.Visible = false
	end)
	L_46_.Name = "Icon"
	L_46_.Parent = L_45_
	L_46_.AnchorPoint = Vector2.new(0.5, 0.5)
	L_46_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	L_46_.BackgroundTransparency = 1.000
	L_46_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	L_46_.BorderSizePixel = 0
	L_46_.Position = UDim2.new(0.5, 0, 0.5, 0)
	L_46_.Size = UDim2.new(0, 25, 0, 25)
	L_46_.Image = "rbxassetid://136452605242985"
	L_46_.ImageRectOffset = Vector2.new(288, 672)
	L_46_.ImageRectSize = Vector2.new(96, 96)
	L_46_.ImageTransparency = 0.700
	L_47_.Parent = L_43_
	L_47_.PaddingTop = UDim.new(0, 12)
	L_48_.Name = "Larged"
	L_48_.Parent = L_43_
	L_48_.AnchorPoint = Vector2.new(0, 0.5)
	L_48_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	L_48_.BackgroundTransparency = 1.000
	L_48_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	L_48_.BorderSizePixel = 0
	L_48_.Position = UDim2.new(0, 5, 0.5, 0)
	L_48_.Selectable = false
	L_48_.Size = UDim2.new(0, 40, 0, 40)
	L_48_.Image = "rbxassetid://80999662900595"
	L_48_.ImageTransparency = 1.000
	L_48_.ScaleType = Enum.ScaleType.Slice
	L_48_.SliceCenter = Rect.new(256, 256, 256, 256)
	L_48_.SliceScale = 0.050
	local L_65_, L_66_
	L_48_.Activated:Connect(function()
		if L_34_.Size ~= UDim2.new(1, -20, 1, -20) then
			L_65_ = L_34_.Size
			L_66_ = L_34_.Position
			L_1_:Tween(L_34_, 0.2, "Quad", "Position", UDim2.new(0, 10, 0, 10))
			L_1_:Tween(L_34_, 0.2, "Quad", "Size", UDim2.new(1, -20, 1, -20))
		else
			L_1_:Tween(L_34_, 0.2, "Quad", "Position", L_66_)
			L_1_:Tween(L_34_, 0.2, "Quad", "Size", L_65_)
		end
	end)
	L_49_.Name = "Icon"
	L_49_.Parent = L_48_
	L_49_.AnchorPoint = Vector2.new(0.5, 0.5)
	L_49_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	L_49_.BackgroundTransparency = 1.000
	L_49_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	L_49_.BorderSizePixel = 0
	L_49_.Position = UDim2.new(0.5, 0, 0.5, 0)
	L_49_.Size = UDim2.new(0, 20, 0, 20)
	L_49_.Image = "rbxassetid://136452605242985"
	L_49_.ImageRectOffset = Vector2.new(580, 194)
	L_49_.ImageRectSize = Vector2.new(96, 96)
	L_49_.ImageTransparency = 0.700
	L_50_.Name = "Removed"
	L_50_.Parent = L_43_
	L_50_.AnchorPoint = Vector2.new(0, 0.5)
	L_50_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	L_50_.BackgroundTransparency = 1.000
	L_50_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	L_50_.BorderSizePixel = 0
	L_50_.Position = UDim2.new(0, 5, 0.5, 0)
	L_50_.Selectable = false
	L_50_.Size = UDim2.new(0, 40, 0, 40)
	L_50_.Image = "rbxassetid://80999662900595"
	L_50_.ImageTransparency = 1.000
	L_50_.ScaleType = Enum.ScaleType.Slice
	L_50_.SliceCenter = Rect.new(256, 256, 256, 256)
	L_50_.SliceScale = 0.050
	L_51_.Name = "Icon"
	L_51_.Parent = L_50_
	L_51_.AnchorPoint = Vector2.new(0.5, 0.5)
	L_51_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	L_51_.BackgroundTransparency = 1.000
	L_51_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	L_51_.BorderSizePixel = 0
	L_51_.Position = UDim2.new(0.5, 0, 0.5, 0)
	L_51_.Size = UDim2.new(0, 25, 0, 25)
	L_51_.Image = "rbxassetid://105957381820378"
	L_51_.ImageRectOffset = Vector2.new(480, 0)
	L_51_.ImageRectSize = Vector2.new(100, 100)
	L_51_.ImageTransparency = 0.700
	L_56_.Name = "ChannelFrame"
	L_56_.Parent = L_37_
	L_56_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	L_56_.BackgroundTransparency = 1.000
	L_56_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	L_56_.BorderSizePixel = 0
	L_56_.Position = UDim2.new(0, 210, 0, 70)
	L_56_.Size = UDim2.new(1, -220, 1, -80)
	L_57_.Name = "Background"
	L_57_.Parent = L_56_
	L_57_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	L_57_.BackgroundTransparency = 0.990
	L_57_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	L_57_.BorderSizePixel = 0
	L_57_.Size = UDim2.new(1, 0, 1, 0)
	L_57_.Image = "rbxassetid://80999662900595"
	L_57_.ImageTransparency = 0.950
	L_57_.ScaleType = Enum.ScaleType.Slice
	L_57_.SliceCenter = Rect.new(256, 256, 256, 256)
	L_57_.SliceScale = 0.033
	L_58_.Name = "List"
	L_58_.Parent = L_56_
	L_59_.Name = "NameChannel"
	L_59_.Parent = L_56_
	L_59_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	L_59_.BackgroundTransparency = 1.000
	L_59_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	L_59_.BorderSizePixel = 0
	L_59_.Size = UDim2.new(1, 0, 0, 50)
	L_60_.Name = "Line"
	L_60_.Parent = L_59_
	L_60_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	L_60_.BackgroundTransparency = 0.900
	L_60_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	L_60_.BorderSizePixel = 0
	L_60_.Position = UDim2.new(0, 0, 1, 0)
	L_60_.Size = UDim2.new(1, 0, 0, 1)
	L_61_.Name = "Icon"
	L_61_.Parent = L_59_
	L_61_.AnchorPoint = Vector2.new(0, 0.5)
	L_61_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	L_61_.BackgroundTransparency = 1.000
	L_61_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	L_61_.BorderSizePixel = 0
	L_61_.Position = UDim2.new(0, 20, 0.5, 0)
	L_61_.Size = UDim2.new(0, 20, 0, 20)
	L_61_.Image = "rbxassetid://132003413384414"
	L_62_.Name = "NameTab"
	L_62_.Parent = L_59_
	L_62_.AnchorPoint = Vector2.new(0, 0.5)
	L_62_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	L_62_.BackgroundTransparency = 1.000
	L_62_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	L_62_.BorderSizePixel = 0
	L_62_.Position = UDim2.new(0, 50, 0.5, 0)
	L_62_.Size = UDim2.new(0, 300, 1, 0)
	L_62_.Font = Enum.Font.Arial
	L_62_.Text = "Tab"
	L_62_.TextColor3 = Color3.fromRGB(255, 255, 255)
	L_62_.TextSize = 15.000
	L_62_.TextXAlignment = Enum.TextXAlignment.Left
	L_52_.Name = "TabFrame"
	L_52_.Parent = L_37_
	L_52_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	L_52_.BackgroundTransparency = 1.000
	L_52_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	L_52_.BorderSizePixel = 0
	L_52_.Position = UDim2.new(0, 0, 0, 60)
	L_52_.Size = UDim2.new(0, 200, 1, -60)
	L_53_.Name = "ScrollTab"
	L_53_.Parent = L_52_
	L_53_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	L_53_.BackgroundTransparency = 1.000
	L_53_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	L_53_.BorderSizePixel = 0
	L_53_.Selectable = false
	L_53_.Size = UDim2.new(1, 0, 1, 0)
	L_53_.CanvasSize = UDim2.new(0, 0, 1.29999995, 0)
	L_53_.ScrollBarThickness = 0
	L_1_.Stepped:Connect(function()
		L_1_:UpdateScroll(L_53_, L_54_)
	end)
	L_54_.Parent = L_53_
	L_54_.SortOrder = Enum.SortOrder.LayoutOrder
	L_55_.Parent = L_53_
	L_55_.PaddingBottom = UDim.new(0, 8)
	L_55_.PaddingLeft = UDim.new(0, 12)
	L_55_.PaddingRight = UDim.new(0, 8)
	L_55_.PaddingTop = UDim.new(0, 8)
	L_1_:MouseEvent(L_45_, function()
		L_45_.ImageTransparency = 0.95
	end, function()
		L_45_.ImageTransparency = 1
	end)
	L_1_:MouseEvent(L_48_, function()
		L_48_.ImageTransparency = 0.95
	end, function()
		L_48_.ImageTransparency = 1
	end)
	L_1_:MouseEvent(L_50_, function()
		L_50_.ImageTransparency = 0.95
	end, function()
		L_50_.ImageTransparency = 1
	end)
	L_1_:MakeDraggable(L_34_, L_38_)
	local L_67_ = L_1_:Tween(L_34_, 0.2, "Quad", "Size", UDim2.fromOffset(600, 500))
	L_67_.Completed:Connect(function()
		L_34_.AnchorPoint = Vector2.new(0, 0)
		L_34_.Position = UDim2.fromOffset(game.Workspace.Camera.ViewportSize.X / 2 - L_34_.Size.X.Offset / 2, game.Workspace.Camera.ViewportSize.Y / 2 - L_34_.Size.Y.Offset / 2)
	end)
	local L_68_ = {}
	function L_68_:SetTransparency(L_69_arg0)
		L_36_.ImageTransparency = L_69_arg0 * 0.01
	end
	function L_68_:AddSection(L_70_arg0)
		L_70_arg0 = L_70_arg0 or {}
		L_70_arg0.Open = L_70_arg0.Open or false
		L_70_arg0.Title = L_70_arg0.Title or "Section"
		local L_71_ = Instance.new("Frame")
		local L_72_ = Instance.new("TextButton")
		local L_73_ = Instance.new("ImageLabel")
		local L_74_ = Instance.new("UIListLayout")
		local L_75_ = Instance.new("UIPadding")
		L_71_.Name = "SectionTab"
		L_71_.Parent = L_53_
		L_71_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		L_71_.BackgroundTransparency = 1.000
		L_71_.BorderColor3 = Color3.fromRGB(0, 0, 0)
		L_71_.BorderSizePixel = 0
		L_71_.ClipsDescendants = true
		L_71_.Size = UDim2.new(1, 0, 0, 140)
		L_72_.Name = "Title"
		L_72_.Parent = L_71_
		L_72_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		L_72_.BackgroundTransparency = 1.000
		L_72_.BorderColor3 = Color3.fromRGB(0, 0, 0)
		L_72_.BorderSizePixel = 0
		L_72_.Position = UDim2.new(0, 15, 0, 0)
		L_72_.Size = UDim2.new(1, -30, 0, 30)
		L_72_.Font = Enum.Font.ArialBold
		L_72_.Text = L_70_arg0.Title
		L_72_.TextColor3 = Color3.fromRGB(144, 144, 144)
		L_72_.TextSize = 15.000
		L_72_.TextXAlignment = Enum.TextXAlignment.Left
		L_73_.Name = "Icon"
		L_73_.Parent = L_72_
		L_73_.AnchorPoint = Vector2.new(0, 0.5)
		L_73_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		L_73_.BackgroundTransparency = 1.000
		L_73_.BorderColor3 = Color3.fromRGB(0, 0, 0)
		L_73_.BorderSizePixel = 0
		L_73_.Position = UDim2.new(1, 1, 0.5, 0)
		L_73_.Size = UDim2.new(0, 18, 0, 18)
		L_73_.Image = "rbxassetid://98740753192722"
		L_73_.ImageColor3 = Color3.fromRGB(100, 100, 100)
		L_73_.ImageRectOffset = Vector2.new(0, 192)
		L_73_.ImageRectSize = Vector2.new(96, 96)
		L_74_.Parent = L_71_
		L_74_.SortOrder = Enum.SortOrder.LayoutOrder
		L_74_.Padding = UDim.new(0, 5)
		L_75_.Parent = L_71_
		L_75_.PaddingLeft = UDim.new(0, 8)
		L_1_:MouseEvent(L_72_, function()
			L_73_.ImageColor3 = Color3.fromRGB(188, 188, 188)
			L_72_.TextColor3 = Color3.fromRGB(188, 188, 188)
		end, function()
			L_73_.ImageColor3 = Color3.fromRGB(100, 100, 100)
			L_72_.TextColor3 = Color3.fromRGB(144, 144, 144)
		end)
		if not L_70_arg0.Open then
			L_73_.Rotation = 180
			L_71_.Size = UDim2.new(1, 0, 0, 32)
		end
		L_72_.Activated:Connect(function()
			L_70_arg0.Open = not L_70_arg0.Open
			if L_70_arg0.Open then
				L_1_:Tween(L_73_, 0.3, "Quad", "Rotation", 0)
			else
				L_1_:Tween(L_73_, 0.3, "Quad", "Rotation", 180)
				L_1_:Tween(L_71_, 0.3, "Quad", "Size", UDim2.new(1, 0, 0, 32))
			end
		end)
		L_1_.Stepped:Connect(function()
			if L_70_arg0.Open then
				L_1_:Tween(L_71_, 0.3, "Quad", "Size", UDim2.new(1, 0, 0, L_74_.AbsoluteContentSize.Y + 15))
			end
		end)
		local L_76_ = {}
		function L_76_:ChangeTab(L_78_arg0, L_79_arg1, L_80_arg2)
			L_62_.Text = L_79_arg1 or ""
			L_61_.Image = L_80_arg2 or ""
			for L_81_forvar0, L_82_forvar1 in ipairs(L_58_:GetChildren()) do
				L_1_:Tween(L_82_forvar1, 0.2, "Quad", "Position", UDim2.new(0, 0, 0, 60))
				for L_83_forvar0, L_84_forvar1 in ipairs(L_82_forvar1:GetChildren()) do
					if L_84_forvar1:IsA("Frame") then
						L_1_:Tween(L_84_forvar1.Background.Title, 0.15, "Quad", "TextTransparency", 1)
						if L_84_forvar1.Background:FindFirstChild("Desc") then
							L_1_:Tween(L_84_forvar1.Background.Desc, 0.15, "Quad", "TextTransparency", 1)
						end
						L_1_:Tween(L_84_forvar1.Background, 0.15, "Quad", "ImageTransparency", 1)
					end
				end
				task.delay(0.1, function()
					L_82_forvar1.Visible = false
				end)
			end
			task.wait(0.1)
			L_78_arg0.Visible = true
			L_1_:Tween(L_78_arg0, 0.2, "Quad", "Position", UDim2.new(0, 0, 0, 50))
			for L_85_forvar0, L_86_forvar1 in ipairs(L_78_arg0:GetChildren()) do
				if L_86_forvar1:IsA("Frame") then
					if L_86_forvar1.Name == "White" then
						L_1_:Tween(L_86_forvar1.Background, 0.15, "Quad", "ImageTransparency", 0.1)
					else
						L_1_:Tween(L_86_forvar1.Background, 0.15, "Quad", "ImageTransparency", 0.95)
					end
					L_1_:Tween(L_86_forvar1.Background.Title, 0.15, "Quad", "TextTransparency", 0)
					if L_86_forvar1.Background:FindFirstChild("Desc") then
						L_1_:Tween(L_86_forvar1.Background.Desc, 0.15, "Quad", "TextTransparency", 0)
					end
				end
			end
		end
		local L_77_ = 0
		function L_76_:AddTab(L_87_arg0)
			L_87_arg0 = L_87_arg0 or {}
			L_87_arg0.Title = L_87_arg0.Title
			L_87_arg0.Icon = L_87_arg0.Icon or nil
			local L_88_ = Instance.new("ImageButton")
			local L_89_ = Instance.new("ImageLabel")
			local L_90_ = Instance.new("ImageLabel")
			local L_91_ = Instance.new("TextLabel")
			local L_92_ = Instance.new("ImageLabel")
			local L_93_ = Instance.new("ScrollingFrame")
			local L_94_ = Instance.new("UIPadding")
			local L_95_ = Instance.new("UIListLayout")
			L_88_.Name = "TabDisable"
			L_88_.Parent = L_71_
			L_88_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			L_88_.BackgroundTransparency = 1.000
			L_88_.BorderColor3 = Color3.fromRGB(0, 0, 0)
			L_88_.BorderSizePixel = 0
			L_88_.Size = UDim2.new(1, 0, 0, 45)
			L_89_.Name = "Background"
			L_89_.Parent = L_88_
			L_89_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			L_89_.BackgroundTransparency = 1.000
			L_89_.BorderColor3 = Color3.fromRGB(0, 0, 0)
			L_89_.BorderSizePixel = 0
			L_89_.Size = UDim2.new(1, 0, 1, 0)
			L_89_.Image = "rbxassetid://80999662900595"
			L_89_.ImageTransparency = 1.000
			L_89_.ScaleType = Enum.ScaleType.Slice
			L_89_.SliceCenter = Rect.new(256, 256, 256, 256)
			L_89_.SliceScale = 0.033
			L_90_.Name = "UIStroke"
			L_90_.Parent = L_88_
			L_90_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			L_90_.BackgroundTransparency = 1.000
			L_90_.BorderColor3 = Color3.fromRGB(0, 0, 0)
			L_90_.BorderSizePixel = 0
			L_90_.Size = UDim2.new(1, 0, 1, 0)
			L_90_.Image = "rbxassetid://117788349049947"
			L_90_.ImageTransparency = 1.000
			L_90_.ScaleType = Enum.ScaleType.Slice
			L_90_.SliceCenter = Rect.new(256, 256, 256, 256)
			L_90_.SliceScale = 0.033
			L_91_.Name = "TabName"
			L_91_.Parent = L_88_
			L_91_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			L_91_.BackgroundTransparency = 1.000
			L_91_.BorderColor3 = Color3.fromRGB(0, 0, 0)
			L_91_.BorderSizePixel = 0
			L_91_.Position = UDim2.new(0, 18, 0, 0)
			L_91_.Size = UDim2.new(1, -35, 1, 0)
			L_91_.Font = Enum.Font.Arial
			L_91_.Text = L_87_arg0.Title
			L_91_.TextColor3 = Color3.fromRGB(255, 255, 255)
			L_91_.TextSize = 15.000
			L_91_.TextTransparency = 0.300
			L_91_.TextWrapped = true
			L_91_.TextXAlignment = Enum.TextXAlignment.Left
			L_93_.Name = "Channel"
			L_93_.Parent = L_58_
			L_93_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			L_93_.BackgroundTransparency = 1.000
			L_93_.BorderColor3 = Color3.fromRGB(0, 0, 0)
			L_93_.BorderSizePixel = 0
			L_93_.Position = UDim2.new(0, 0, 0, 50)
			L_93_.Selectable = false
			L_93_.Size = UDim2.new(1, 0, 1, -50)
			L_93_.CanvasSize = UDim2.new(0, 0, 0, 560)
			L_93_.ScrollBarThickness = 0
			L_93_.Visible = false
			L_1_.Stepped:Connect(function()
				L_1_:UpdateScroll(L_93_, L_95_)
			end)
			L_94_.Parent = L_93_
			L_94_.PaddingBottom = UDim.new(0, 4)
			L_94_.PaddingLeft = UDim.new(0, 12)
			L_94_.PaddingRight = UDim.new(0, 7)
			L_94_.PaddingTop = UDim.new(0, 9)
			L_95_.Parent = L_93_
			L_95_.SortOrder = Enum.SortOrder.LayoutOrder
			L_95_.Padding = UDim.new(0, 5)
			if L_87_arg0.Icon ~= nil and L_87_arg0.Icon ~= "" then
				L_91_.Position = UDim2.new(0, 32, 0, 0)
				L_92_.Name = "Icon"
				L_92_.Parent = L_88_
				L_92_.AnchorPoint = Vector2.new(0, 0.5)
				L_92_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_92_.BackgroundTransparency = 1.000
				L_92_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_92_.BorderSizePixel = 0
				L_92_.Position = UDim2.new(0, 10, 0.5, 0)
				L_92_.Size = UDim2.new(0, 18, 0, 18)
				L_92_.Image = L_87_arg0.Icon
				L_92_.ImageTransparency = 0.300
			end
			if L_77_ == 0 then
				Counts += 1
				L_93_.Visible = true
				L_92_.ImageTransparency = 0.1
				L_91_.TextTransparency = 0
				L_89_.ImageTransparency = 0.95
				L_90_.ImageTransparency = 0.9
			end
			L_1_:MouseEvent(L_88_, function()
				L_89_.ImageTransparency = 0.95
			end, function()
				if L_91_.TextTransparency >= 0.1 then
					L_89_.ImageTransparency = 1
				end
			end)
			L_88_.Activated:Connect(function()
				for L_97_forvar0, L_98_forvar1 in next, L_71_:GetChildren() do
					if L_98_forvar1:IsA("ImageButton") then
						L_1_:Tween(L_98_forvar1.Background, 0.3, "Quad", "ImageTransparency", 1)
						L_1_:Tween(L_98_forvar1.TabName, 0.3, "Quad", "TextTransparency", 0.3)
						L_1_:Tween(L_98_forvar1.UIStroke, 0.3, "Quad", "ImageTransparency", 1)
					end
				end
				L_1_:Tween(L_89_, 0.3, "Quad", "ImageTransparency", 0.95)
				L_1_:Tween(L_91_, 0.3, "Quad", "TextTransparency", 0)
				L_1_:Tween(L_90_, 0.3, "Quad", "ImageTransparency", 0.9)
				self:ChangeTab(L_93_, L_91_.Text, L_92_.Image)
			end)
			local L_96_ = {}
			function L_96_:AddToggle(L_99_arg0)
				L_99_arg0 = L_99_arg0 or {}
				L_99_arg0.Title = L_99_arg0.Title
				L_99_arg0.Description = L_99_arg0.Description or nil
				L_99_arg0.Default = L_99_arg0.Default or false
				L_99_arg0.Active = L_99_arg0.Active or L_99_arg0.Default
				L_99_arg0.Callback = L_99_arg0.Callback or function()
				end
				local L_100_ = Instance.new("Frame")
				local L_101_ = Instance.new("ImageButton")
				local L_102_ = Instance.new("TextLabel")
				local L_103_ = Instance.new("TextLabel")
				local L_104_ = Instance.new("Frame")
				local L_105_ = Instance.new("UICorner")
				local L_106_ = Instance.new("Frame")
				local L_107_ = Instance.new("UICorner")
				local L_108_ = {}
				L_100_.Name = "Toggle"
				L_100_.Parent = L_93_
				L_100_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_100_.BackgroundTransparency = 1.000
				L_100_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_100_.BorderSizePixel = 0
				L_100_.Size = UDim2.new(1, 0, 0, 50)
				L_101_.Name = "Background"
				L_101_.Parent = L_100_
				L_101_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_101_.BackgroundTransparency = 1.000
				L_101_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_101_.BorderSizePixel = 0
				L_101_.Size = UDim2.new(1, 0, 1, 0)
				L_101_.Image = "rbxassetid://80999662900595"
				L_101_.ImageTransparency = 0.950
				L_101_.ScaleType = Enum.ScaleType.Slice
				L_101_.SliceCenter = Rect.new(256, 256, 256, 256)
				L_101_.SliceScale = 0.044
				L_102_.Name = "Title"
				L_102_.Parent = L_101_
				L_102_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_102_.BackgroundTransparency = 1.000
				L_102_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_102_.BorderSizePixel = 0
				L_102_.Position = UDim2.new(0, 15, 0, 0)
				L_102_.Size = UDim2.new(1, -80, 1, 0)
				L_102_.Font = Enum.Font.Arial
				L_102_.Text = L_99_arg0.Title
				L_102_.TextColor3 = Color3.fromRGB(255, 255, 255)
				L_102_.TextSize = 15.000
				L_102_.TextXAlignment = Enum.TextXAlignment.Left
				L_103_.Name = "Desc"
				L_103_.Parent = L_101_
				L_103_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_103_.BackgroundTransparency = 1.000
				L_103_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_103_.BorderSizePixel = 0
				L_103_.Position = UDim2.new(0, 15, 0, 26)
				L_103_.Size = UDim2.new(1, -80, 1, -26)
				L_103_.Font = Enum.Font.Arial
				L_103_.Text = (L_99_arg0.Description or "")
				L_103_.TextColor3 = Color3.fromRGB(144, 144, 144)
				L_103_.TextSize = 13.000
				L_103_.TextWrapped = true
				L_103_.TextXAlignment = Enum.TextXAlignment.Left
				L_103_.TextYAlignment = Enum.TextYAlignment.Top
				if L_99_arg0.Description ~= nil and L_99_arg0.Description ~= "" then
					L_1_.Stepped:Connect(function()
						L_102_.Size = UDim2.new(1, -80, 0, 18)
						L_102_.Position = UDim2.new(0, 15, 0, 8)
						L_100_.Size = UDim2.new(1, 0, 0, math.max(L_103_.TextBounds.Y + 15, 50))
					end)
				end
				L_104_.Name = "CheckToggle"
				L_104_.Parent = L_100_
				L_104_.AnchorPoint = Vector2.new(0, 0.5)
				L_104_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_104_.BackgroundTransparency = 0.850
				L_104_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_104_.BorderSizePixel = 0
				L_104_.Position = UDim2.new(1, -55, 0.5, 0)
				L_104_.Size = UDim2.new(0, 45, 0, 26)
				L_105_.CornerRadius = UDim.new(1, 0)
				L_105_.Parent = L_104_
				L_106_.Name = "Check"
				L_106_.Parent = L_104_
				L_106_.AnchorPoint = Vector2.new(0, 0.5)
				L_106_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_106_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_106_.BorderSizePixel = 0
				L_106_.Position = UDim2.new(0, 3, 0.5, 0)
				L_106_.Size = UDim2.new(0, 20, 0, 20)
				L_1_:MouseEvent(L_100_, function()
					L_101_.ImageTransparency = 0.930
				end, function()
					L_101_.ImageTransparency = 0.950
				end)
				L_107_.CornerRadius = UDim.new(1, 0)
				L_107_.Parent = L_106_
				function L_108_:SetValue(L_109_arg0)
					if L_109_arg0 then
						L_1_:Tween(L_104_, 0.2, "Quad", "BackgroundTransparency", 0.75)
						L_1_:Tween(L_106_, 0.2, "Quad", "Position", UDim2.new(0, 22, 0.5, 0))
					else
						L_1_:Tween(L_104_, 0.2, "Quad", "BackgroundTransparency", 0.85)
						L_1_:Tween(L_106_, 0.2, "Quad", "Position", UDim2.new(0, 3, 0.5, 0))
					end
					L_99_arg0.Active = L_109_arg0
					L_99_arg0.Callback(L_99_arg0.Active)
				end
				L_108_:SetValue(L_99_arg0.Active)
				L_101_.Activated:Connect(function()
					L_108_:SetValue(not L_99_arg0.Active)
				end)
				return L_108_
			end
			function L_96_:AddButton(L_110_arg0)
				L_110_arg0 = L_110_arg0 or {}
				L_110_arg0.Title = L_110_arg0.Title
				L_110_arg0.Description = L_110_arg0.Description or nil
				L_110_arg0.Callback = L_110_arg0.Callback or function()
				end
				local L_111_ = Instance.new("Frame")
				local L_112_ = Instance.new("ImageButton")
				local L_113_ = Instance.new("TextLabel")
				local L_114_ = Instance.new("TextLabel")
				local L_115_ = Instance.new("ImageLabel")
				local L_116_ = {}
				L_111_.Name = "Button"
				L_111_.Parent = L_93_
				L_111_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_111_.BackgroundTransparency = 1.000
				L_111_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_111_.BorderSizePixel = 0
				L_111_.Size = UDim2.new(1, 0, 0, 50)
				L_112_.Name = "Background"
				L_112_.Parent = L_111_
				L_112_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_112_.BackgroundTransparency = 1.000
				L_112_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_112_.BorderSizePixel = 0
				L_112_.Size = UDim2.new(1, 0, 1, 0)
				L_112_.Image = "rbxassetid://80999662900595"
				L_112_.ImageTransparency = 0.950
				L_112_.ScaleType = Enum.ScaleType.Slice
				L_112_.SliceCenter = Rect.new(256, 256, 256, 256)
				L_112_.SliceScale = 0.044
				L_113_.Name = "Title"
				L_113_.Parent = L_112_
				L_113_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_113_.BackgroundTransparency = 1.000
				L_113_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_113_.BorderSizePixel = 0
				L_113_.Position = UDim2.new(0, 15, 0, 0)
				L_113_.Size = UDim2.new(1, -80, 1, 0)
				L_113_.Font = Enum.Font.Arial
				L_113_.Text = L_110_arg0.Title
				L_113_.TextColor3 = Color3.fromRGB(255, 255, 255)
				L_113_.TextSize = 15.000
				L_113_.TextXAlignment = Enum.TextXAlignment.Left
				L_114_.Name = "Desc"
				L_114_.Parent = L_112_
				L_114_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_114_.BackgroundTransparency = 1.000
				L_114_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_114_.BorderSizePixel = 0
				L_114_.Position = UDim2.new(0, 15, 0, 26)
				L_114_.Size = UDim2.new(1, -80, 1, -26)
				L_114_.Font = Enum.Font.Arial
				L_114_.Text = L_110_arg0.Description
				L_114_.TextColor3 = Color3.fromRGB(144, 144, 144)
				L_114_.TextSize = 13.000
				L_114_.TextWrapped = true
				L_114_.TextXAlignment = Enum.TextXAlignment.Left
				L_114_.TextYAlignment = Enum.TextYAlignment.Top
				if L_110_arg0.Description ~= nil and L_110_arg0.Description ~= "" then
					L_1_.Stepped:Connect(function()
						L_113_.Size = UDim2.new(1, -80, 0, 18)
						L_113_.Position = UDim2.new(0, 15, 0, 8)
						L_111_.Size = UDim2.new(1, 0, 0, math.max(L_114_.TextBounds.Y + 15, 50))
					end)
				end
				L_115_.Name = "Icon"
				L_115_.Parent = L_111_
				L_115_.AnchorPoint = Vector2.new(0, 0.5)
				L_115_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_115_.BackgroundTransparency = 1.000
				L_115_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_115_.BorderSizePixel = 0
				L_115_.Position = UDim2.new(1, -40, 0.5, 0)
				L_115_.Size = UDim2.new(0, 25, 0, 25)
				L_115_.Image = "rbxassetid://85905776508942"
				L_1_:MouseEvent(L_111_, function()
					L_112_.ImageTransparency = 0.930
				end, function()
					L_112_.ImageTransparency = 0.950
				end)
				function L_116_:SetDesc(L_117_arg0)
					L_114_.Text = L_117_arg0
				end
				L_112_.Activated:Connect(function()
					L_112_.ImageTransparency = 0.980
					L_1_:Tween(L_112_, 0.15, "Quad", "ImageTransparency", 0.950)
					L_110_arg0.Callback()
				end)
				return L_116_
			end
			function L_96_:AddSlider(L_118_arg0)
				L_118_arg0 = L_118_arg0 or {}
				L_118_arg0.Title = L_118_arg0.Title
				L_118_arg0.Description = L_118_arg0.Description or nil
				L_118_arg0.Max = L_118_arg0.Max
				L_118_arg0.Min = L_118_arg0.Min
				L_118_arg0.Default = L_118_arg0.Default or L_118_arg0.Min
				L_118_arg0.Callback = L_118_arg0.Callback or function()
				end
				local L_119_ = Instance.new("Frame")
				local L_120_ = Instance.new("ImageLabel")
				local L_121_ = Instance.new("TextLabel")
				local L_122_ = Instance.new("TextLabel")
				local L_123_ = Instance.new("ImageLabel")
				local L_124_ = Instance.new("ImageLabel")
				local L_125_ = Instance.new("ImageLabel")
				local L_126_ = Instance.new("ImageLabel")
				local L_127_ = Instance.new("TextLabel")
				local L_128_ = {
					Value = L_118_arg0.Default
				}
				L_119_.Name = "Slider"
				L_119_.Parent = L_93_
				L_119_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_119_.BackgroundTransparency = 1.000
				L_119_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_119_.BorderSizePixel = 0
				L_119_.Size = UDim2.new(1, 0, 0, 65)
				L_120_.Name = "Background"
				L_120_.Parent = L_119_
				L_120_.Active = true
				L_120_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_120_.BackgroundTransparency = 1.000
				L_120_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_120_.BorderSizePixel = 0
				L_120_.Selectable = true
				L_120_.Size = UDim2.new(1, 0, 1, 0)
				L_120_.Image = "rbxassetid://80999662900595"
				L_120_.ImageTransparency = 0.950
				L_120_.ScaleType = Enum.ScaleType.Slice
				L_120_.SliceCenter = Rect.new(256, 256, 256, 256)
				L_120_.SliceScale = 0.055
				L_121_.Name = "Title"
				L_121_.Parent = L_120_
				L_121_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_121_.BackgroundTransparency = 1.000
				L_121_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_121_.BorderSizePixel = 0
				L_121_.Position = UDim2.new(0, 15, 0, 8)
				L_121_.Size = UDim2.new(1, -80, 0, 18)
				L_121_.Font = Enum.Font.Arial
				L_121_.Text = L_118_arg0.Title
				L_121_.TextColor3 = Color3.fromRGB(255, 255, 255)
				L_121_.TextSize = 15.000
				L_121_.TextXAlignment = Enum.TextXAlignment.Left
				L_122_.Name = "Desc"
				L_122_.Parent = L_120_
				L_122_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_122_.BackgroundTransparency = 1.000
				L_122_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_122_.BorderSizePixel = 0
				L_122_.Position = UDim2.new(0, 15, 0, 26)
				L_122_.Size = UDim2.new(1, -80, 1, -60)
				L_122_.Font = Enum.Font.Arial
				L_122_.Text = (L_118_arg0.Description or "")
				L_122_.TextColor3 = Color3.fromRGB(144, 144, 144)
				L_122_.TextSize = 13.000
				L_122_.TextWrapped = true
				L_122_.TextXAlignment = Enum.TextXAlignment.Left
				L_122_.TextYAlignment = Enum.TextYAlignment.Top
				if L_118_arg0.Description ~= nil and L_118_arg0.Description ~= "" then
					L_1_.Stepped:Connect(function()
						L_119_.Size = UDim2.new(1, 0, 0, math.max(L_122_.TextBounds.Y + 35, 75))
					end)
				end
				L_123_.Name = "UIStroke"
				L_123_.Parent = L_120_
				L_123_.AnchorPoint = Vector2.new(0, 0.5)
				L_123_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_123_.BackgroundTransparency = 1.000
				L_123_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_123_.BorderSizePixel = 0
				L_123_.Position = UDim2.new(0, 15, 0.75, 0)
				L_123_.Size = UDim2.new(1, -100, 0, 7)
				L_123_.Image = "rbxassetid://117788349049947"
				L_123_.ImageTransparency = 0.850
				L_123_.ScaleType = Enum.ScaleType.Slice
				L_123_.SliceCenter = Rect.new(256, 256, 256, 256)
				L_123_.SliceScale = 0.033
				L_124_.Name = "SliderDraggable"
				L_124_.Parent = L_120_
				L_124_.AnchorPoint = Vector2.new(0, 0.5)
				L_124_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_124_.BackgroundTransparency = 1.000
				L_124_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_124_.BorderSizePixel = 0
				L_124_.Position = UDim2.new(0, 15, 0.75, 0)
				L_124_.Size = UDim2.new(1, -100, 0, 7)
				L_124_.Image = "rbxassetid://80999662900595"
				L_124_.ImageTransparency = 0.950
				L_124_.ScaleType = Enum.ScaleType.Slice
				L_124_.SliceCenter = Rect.new(256, 256, 256, 256)
				L_124_.SliceScale = 0.055
				L_125_.Name = "Draggable"
				L_125_.Parent = L_124_
				L_125_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_125_.BackgroundTransparency = 1.000
				L_125_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_125_.BorderSizePixel = 0
				L_125_.Size = UDim2.new(0, 100, 1, 0)
				L_125_.Image = "rbxassetid://80999662900595"
				L_125_.ImageTransparency = 0.500
				L_125_.ScaleType = Enum.ScaleType.Slice
				L_125_.SliceCenter = Rect.new(256, 256, 256, 256)
				L_125_.SliceScale = 0.055
				L_126_.Name = "Circle"
				L_126_.Parent = L_125_
				L_126_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_126_.BackgroundTransparency = 1.000
				L_126_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_126_.BorderSizePixel = 0
				L_126_.Position = UDim2.new(1, -8, 0, -4)
				L_126_.Size = UDim2.new(0, 15, 0, 15)
				L_126_.Image = "rbxassetid://80999662900595"
				L_126_.ImageColor3 = Color3.fromRGB(188, 188, 188)
				L_126_.ScaleType = Enum.ScaleType.Slice
				L_126_.SliceCenter = Rect.new(256, 256, 256, 256)
				L_126_.SliceScale = 0.055
				L_127_.Parent = L_124_
				L_127_.AnchorPoint = Vector2.new(0, 0.5)
				L_127_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_127_.BackgroundTransparency = 1.000
				L_127_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_127_.BorderSizePixel = 0
				L_127_.Position = UDim2.new(1, 6, 0.300000012, 0)
				L_127_.Size = UDim2.new(0, 50, 0, 30)
				L_127_.Font = Enum.Font.Arial
				L_127_.Text = tostring(L_118_arg0.Default)
				L_127_.TextColor3 = Color3.fromRGB(255, 255, 255)
				L_127_.TextSize = 15.000
				L_127_.TextTransparency = 0.400
				local L_129_ = false
				local function L_130_func(L_131_arg0, L_132_arg1)
					local L_133_ = math.floor(L_131_arg0 / L_132_arg1 + (math.sign(L_131_arg0) * 0.5)) * L_132_arg1
					if L_133_ < 0 then
						L_133_ = L_133_ + L_132_arg1
					end
					return L_133_
				end
				function L_128_:Set(L_134_arg0)
					L_134_arg0 = math.clamp(L_130_func(L_134_arg0, 1), L_118_arg0.Min, L_118_arg0.Max)
					L_128_.Value = L_134_arg0
					L_127_.Text = tostring(L_134_arg0)
					L_118_arg0.Callback(L_128_.Value)
					L_1_:Tween(
                        L_125_,
                        0.2, "Quad",
                        "Size", UDim2.fromScale((L_134_arg0 - L_118_arg0.Min) / (L_118_arg0.Max - L_118_arg0.Min), 1)
                    )
				end
				L_124_.InputBegan:Connect(function(L_135_arg0)
					if L_135_arg0.UserInputType == Enum.UserInputType.Touch or L_135_arg0.UserInputType == Enum.UserInputType.MouseButton1 then
						L_129_ = true
					end
				end)
				game:GetService("UserInputService").InputEnded:Connect(function(L_136_arg0)
					if L_136_arg0.UserInputType == Enum.UserInputType.Touch or L_136_arg0.UserInputType == Enum.UserInputType.MouseButton1 then
						L_129_ = false
					end
				end)
				game:GetService("UserInputService").InputChanged:Connect(function(L_137_arg0)
					if L_129_ then
						local L_138_ = math.clamp((L_137_arg0.Position.X - L_124_.AbsolutePosition.X) / L_124_.AbsoluteSize.X, 0, 1)
						L_128_:Set(L_118_arg0.Min + ((L_118_arg0.Max - L_118_arg0.Min) * L_138_))
					end
				end)
				L_128_:Set(L_118_arg0.Default)
				return L_128_
			end
			function L_96_:AddDropdown(L_139_arg0)
				L_139_arg0 = L_139_arg0 or {}
				L_139_arg0.Title = L_139_arg0.Title
				L_139_arg0.Description = L_139_arg0.Description or ""
				L_139_arg0.Values = L_139_arg0.Values or {}
				L_139_arg0.Default = L_139_arg0.Default or (L_139_arg0.Multi and {} or "")
				L_139_arg0.Multi = L_139_arg0.Multi or false
				L_139_arg0.Callback = L_139_arg0.Callback or function()
				end
				local L_140_ = Instance.new("Frame")
				local L_141_ = Instance.new("ImageLabel")
				local L_142_ = Instance.new("TextLabel")
				local L_143_ = Instance.new("TextLabel")
				local L_144_ = Instance.new("ImageButton")
				local L_145_ = Instance.new("Frame")
				local L_146_ = Instance.new("TextLabel")
				local L_147_ = Instance.new("ImageLabel")
				local L_148_ = Instance.new("ImageLabel")
				local L_149_ = Instance.new("ImageLabel")
				local L_150_ = Instance.new("ImageLabel")
				local L_151_ = Instance.new("Frame")
				local L_152_ = Instance.new("UIListLayout")
				local L_153_ = Instance.new("UIPadding")
				local L_154_ = {
					Select = L_139_arg0.Default
				}
				L_140_.Name = "Dropdown"
				L_140_.Parent = L_93_
				L_140_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_140_.BackgroundTransparency = 1.000
				L_140_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_140_.BorderSizePixel = 0
				L_140_.Size = UDim2.new(1, 0, 0, 90)
				L_141_.Name = "Background"
				L_141_.Parent = L_140_
				L_141_.Active = true
				L_141_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_141_.BackgroundTransparency = 1.000
				L_141_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_141_.BorderSizePixel = 0
				L_141_.Selectable = true
				L_141_.Size = UDim2.new(1, 0, 1, 0)
				L_141_.Image = "rbxassetid://80999662900595"
				L_141_.ImageTransparency = 0.950
				L_141_.ScaleType = Enum.ScaleType.Slice
				L_141_.SliceCenter = Rect.new(256, 256, 256, 256)
				L_141_.SliceScale = 0.055
				L_142_.Name = "Title"
				L_142_.Parent = L_141_
				L_142_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_142_.BackgroundTransparency = 1.000
				L_142_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_142_.BorderSizePixel = 0
				L_142_.Position = UDim2.new(0, 15, 0, 8)
				L_142_.Size = UDim2.new(1, -80, 0, 18)
				L_142_.Font = Enum.Font.Arial
				L_142_.Text = L_139_arg0.Title
				L_142_.TextColor3 = Color3.fromRGB(255, 255, 255)
				L_142_.TextSize = 15.000
				L_142_.TextXAlignment = Enum.TextXAlignment.Left
				L_143_.Name = "Desc"
				L_143_.Parent = L_141_
				L_143_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_143_.BackgroundTransparency = 1.000
				L_143_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_143_.BorderSizePixel = 0
				L_143_.Position = UDim2.new(0, 15, 0, 26)
				L_143_.Size = UDim2.new(1, -80, 1, -70)
				L_143_.Font = Enum.Font.Arial
				L_143_.Text = L_139_arg0.Description
				L_143_.TextColor3 = Color3.fromRGB(144, 144, 144)
				L_143_.TextSize = 13.000
				L_143_.TextWrapped = true
				L_143_.TextXAlignment = Enum.TextXAlignment.Left
				L_143_.TextYAlignment = Enum.TextYAlignment.Top
				if L_139_arg0.Description ~= nil and L_139_arg0.Description ~= "" then
					L_1_.Stepped:Connect(function()
						L_140_.Size = UDim2.new(1, 0, 0, math.max(L_143_.TextBounds.Y + 35, 80))
					end)
				end
				L_144_.Name = "Click"
				L_144_.Parent = L_141_
				L_144_.AnchorPoint = Vector2.new(0, 0.5)
				L_144_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_144_.BackgroundTransparency = 1.000
				L_144_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_144_.BorderSizePixel = 0
				L_144_.Position = UDim2.new(0, 10, 0.699999988, 0)
				L_144_.Size = UDim2.new(1, -20, 0, 35)
				L_144_.Image = "rbxassetid://80999662900595"
				L_144_.ImageTransparency = 0.940
				L_144_.ScaleType = Enum.ScaleType.Slice
				L_144_.SliceCenter = Rect.new(256, 256, 256, 256)
				L_144_.SliceScale = 0.033
				L_145_.Parent = L_144_
				L_145_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_145_.BackgroundTransparency = 1.000
				L_145_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_145_.BorderSizePixel = 0
				L_145_.Size = UDim2.new(1, 0, 1, 0)
				L_146_.Name = "Select"
				L_146_.Parent = L_145_
				L_146_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_146_.BackgroundTransparency = 1.000
				L_146_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_146_.BorderSizePixel = 0
				L_146_.Position = UDim2.new(0, 10, 0, 0)
				L_146_.Size = UDim2.new(1, -50, 1, 0)
				L_146_.Font = Enum.Font.Arial
				L_146_.Text = ""
				L_146_.TextColor3 = Color3.fromRGB(255, 255, 255)
				L_146_.TextSize = 15.000
				L_146_.TextXAlignment = Enum.TextXAlignment.Left
				L_147_.Name = "Icon"
				L_147_.Parent = L_145_
				L_147_.AnchorPoint = Vector2.new(0, 0.5)
				L_147_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_147_.BackgroundTransparency = 1.000
				L_147_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_147_.BorderSizePixel = 0
				L_147_.Position = UDim2.new(1, -30, 0.5, 0)
				L_147_.Size = UDim2.new(0, 20, 0, 20)
				L_147_.Image = "rbxassetid://86169870187835"
				L_147_.ImageTransparency = 0.100
				L_148_.Name = "UIStroke"
				L_148_.Parent = L_141_
				L_148_.AnchorPoint = Vector2.new(0, 0.5)
				L_148_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_148_.BackgroundTransparency = 1.000
				L_148_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_148_.BorderSizePixel = 0
				L_148_.Position = UDim2.new(0, 10, 0.699999988, 0)
				L_148_.Size = UDim2.new(1, -20, 0, 35)
				L_148_.Image = "rbxassetid://117788349049947"
				L_148_.ImageTransparency = 0.850
				L_148_.ScaleType = Enum.ScaleType.Slice
				L_148_.SliceCenter = Rect.new(256, 256, 256, 256)
				L_148_.SliceScale = 0.033
				L_149_.Name = "Dropdown1"
				L_149_.Parent = L_33_
				L_149_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_149_.BackgroundTransparency = 1.000
				L_149_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_149_.BorderSizePixel = 0
				L_149_.Position = UDim2.new(0, 638, 0, 396)
				L_149_.Size = UDim2.new(0, 341, 0, 150)
				L_149_.Image = "rbxassetid://80999662900595"
				L_149_.ImageColor3 = Color3.fromRGB(50, 50, 50)
				L_149_.ScaleType = Enum.ScaleType.Slice
				L_149_.SliceCenter = Rect.new(256, 256, 256, 256)
				L_149_.SliceScale = 0.033
				L_149_.Visible = false
				L_150_.Name = "UIStroke"
				L_150_.Parent = L_149_
				L_150_.AnchorPoint = Vector2.new(0.5, 0.5)
				L_150_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_150_.BackgroundTransparency = 1.000
				L_150_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_150_.BorderSizePixel = 0
				L_150_.Position = UDim2.new(0.5, 0, 0.5, 0)
				L_150_.Size = UDim2.new(1, 0, 1, 0)
				L_150_.Image = "rbxassetid://117788349049947"
				L_150_.ImageTransparency = 0.730
				L_150_.ScaleType = Enum.ScaleType.Slice
				L_150_.SliceCenter = Rect.new(256, 256, 256, 256)
				L_150_.SliceScale = 0.033
				L_151_.Parent = L_149_
				L_151_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_151_.BackgroundTransparency = 1.000
				L_151_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_151_.BorderSizePixel = 0
				L_151_.Size = UDim2.new(1, 0, 1, 0)
				L_152_.Parent = L_151_
				L_152_.SortOrder = Enum.SortOrder.LayoutOrder
				L_152_.Padding = UDim.new(0, 4)
				L_153_.Parent = L_151_
				L_153_.PaddingBottom = UDim.new(0, 7)
				L_153_.PaddingLeft = UDim.new(0, 7)
				L_153_.PaddingRight = UDim.new(0, 7)
				L_153_.PaddingTop = UDim.new(0, 7)
				L_144_.Activated:Connect(function()
					L_53_.ScrollingEnabled = false
					L_64_.Visible = true
					L_93_.ScrollingEnabled = false
					L_149_.Position = UDim2.new(0, L_144_.AbsolutePosition.X, 0, L_144_.AbsolutePosition.Y)
					L_149_.Size = UDim2.new(0, L_144_.AbsoluteSize.X, 0, L_152_.AbsoluteContentSize.Y - 30)
					L_149_.Visible = true
					L_1_:Tween(L_149_, 0.2, "Quad", "Size", UDim2.new(0, L_144_.AbsoluteSize.X, 0, L_152_.AbsoluteContentSize.Y + 20))
				end)
				L_64_.Activated:Connect(function()
					L_1_:Tween(L_149_, 0.2, "Quad", "Size", UDim2.new(0, L_144_.AbsoluteSize.X, 0, L_152_.AbsoluteContentSize.Y - 10))
					task.wait(0.05)
					L_149_.Visible = false
					L_53_.ScrollingEnabled = true
					L_64_.Visible = false
					L_93_.ScrollingEnabled = true
				end)
				function L_154_:Set(L_155_arg0)
					L_154_.Select = L_155_arg0 or L_154_.Select
					for L_156_forvar0, L_157_forvar1 in next, L_151_:GetChildren() do
						if L_157_forvar1:IsA("ImageButton") and table.find(L_154_.Select, L_157_forvar1.TextLabel.Text) then
							L_1_:Tween(L_157_forvar1, 0.2, "Quad", "ImageTransparency", 0.890)
							L_1_:Tween(L_157_forvar1.TextLabel, 0.2, "Quad", "TextTransparency", 0)
						elseif L_157_forvar1:IsA("ImageButton") and not table.find(L_154_.Select, L_157_forvar1.TextLabel.Text) then
							L_1_:Tween(L_157_forvar1, 0.2, "Quad", "ImageTransparency", 1.000)
							L_1_:Tween(L_157_forvar1.TextLabel, 0.2, "Quad", "TextTransparency", 0.500)
						end
					end
					if #L_154_.Select == 0 then
						L_146_.Text = ""
					else
						L_146_.Text = table.concat(L_154_.Select, ",")
					end
					if L_139_arg0.Multi then
						L_139_arg0.Callback(L_154_.Select)
					else
						L_139_arg0.Callback(table.concat(L_154_.Select, ","))
					end
				end
				function L_154_:Add(L_158_arg0)
					local L_159_ = Instance.new("ImageButton")
					local L_160_ = Instance.new("TextLabel")
					L_159_.Name = "Option 2"
					L_159_.Parent = L_151_
					L_159_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					L_159_.BackgroundTransparency = 1.000
					L_159_.BorderColor3 = Color3.fromRGB(0, 0, 0)
					L_159_.BorderSizePixel = 0
					L_159_.Size = UDim2.new(1, 0, 0, 40)
					L_159_.Image = "rbxassetid://80999662900595"
					L_159_.ImageTransparency = 1.000
					L_159_.ScaleType = Enum.ScaleType.Slice
					L_159_.SliceCenter = Rect.new(256, 256, 256, 256)
					L_159_.SliceScale = 0.033
					L_160_.Parent = L_159_
					L_160_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					L_160_.BackgroundTransparency = 1.000
					L_160_.BorderColor3 = Color3.fromRGB(0, 0, 0)
					L_160_.BorderSizePixel = 0
					L_160_.Position = UDim2.new(0, 10, 0, 0)
					L_160_.Size = UDim2.new(1, -10, 1, 0)
					L_160_.Font = Enum.Font.Arial
					L_160_.Text = L_158_arg0
					L_160_.TextColor3 = Color3.fromRGB(255, 255, 255)
					L_160_.TextSize = 14.000
					L_160_.TextTransparency = 0.500
					L_160_.TextXAlignment = Enum.TextXAlignment.Left
					L_159_.Activated:Connect(function()
						if L_139_arg0.Multi then
							if L_160_.TextTransparency >= 0.500 then
								table.insert(L_154_.Select, L_160_.Text)
								L_154_:Set(L_154_.Select)
							else
								for L_161_forvar0, L_162_forvar1 in next, L_154_.Select do
									if L_162_forvar1 == L_160_.Text then
										table.remove(L_154_.Select, L_161_forvar0)
									end
								end
							end
							L_154_:Set(L_154_.Select)
						else
							L_154_.Select = {
								L_160_.Text
							}
							L_154_:Set(L_154_.Select)
						end
					end)
				end
				function L_154_:Refresh(L_163_arg0)
					for L_164_forvar0, L_165_forvar1 in next, L_151_:GetChildren() do
						if L_165_forvar1:IsA("ImageLabel") then
							L_165_forvar1:Destroy()
						end
					end
					for L_166_forvar0, L_167_forvar1 in next, L_163_arg0 do
						self:Add(L_167_forvar1)
					end
				end
				L_154_:Refresh(L_139_arg0.Values)
				L_154_:Set((typeof(L_154_.Select) == "string" and {
					L_154_.Select
				} or L_154_.Select))
				return L_154_
			end
			function L_96_:AddInput(L_168_arg0)
				L_168_arg0 = L_168_arg0 or {}
				L_168_arg0.Title = L_168_arg0.Title
				L_168_arg0.Description = L_168_arg0.Description or ""
				L_168_arg0.PlaceHolder = L_168_arg0.PlaceHolder or ""
				L_168_arg0.Default = L_168_arg0.Default or ""
				L_168_arg0.Callback = L_168_arg0.Callback or function()
				end
				local L_169_ = Instance.new("Frame")
				local L_170_ = Instance.new("ImageLabel")
				local L_171_ = Instance.new("TextLabel")
				local L_172_ = Instance.new("TextLabel")
				local L_173_ = Instance.new("ImageLabel")
				local L_174_ = Instance.new("ImageLabel")
				local L_175_ = Instance.new("Frame")
				local L_176_ = Instance.new("ImageLabel")
				local L_177_ = Instance.new("TextBox")
				L_169_.Name = "Input"
				L_169_.Parent = L_93_
				L_169_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_169_.BackgroundTransparency = 1.000
				L_169_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_169_.BorderSizePixel = 0
				L_169_.Size = UDim2.new(1, 0, 0, 95)
				L_170_.Name = "Background"
				L_170_.Parent = L_169_
				L_170_.Active = true
				L_170_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_170_.BackgroundTransparency = 1.000
				L_170_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_170_.BorderSizePixel = 0
				L_170_.Selectable = true
				L_170_.Size = UDim2.new(1, 0, 1, 0)
				L_170_.Image = "rbxassetid://80999662900595"
				L_170_.ImageTransparency = 0.950
				L_170_.ScaleType = Enum.ScaleType.Slice
				L_170_.SliceCenter = Rect.new(256, 256, 256, 256)
				L_170_.SliceScale = 0.055
				L_171_.Name = "Title"
				L_171_.Parent = L_170_
				L_171_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_171_.BackgroundTransparency = 1.000
				L_171_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_171_.BorderSizePixel = 0
				L_171_.Position = UDim2.new(0, 15, 0, 8)
				L_171_.Size = UDim2.new(1, -80, 0, 18)
				L_171_.Font = Enum.Font.Arial
				L_171_.Text = L_168_arg0.Title
				L_171_.TextColor3 = Color3.fromRGB(255, 255, 255)
				L_171_.TextSize = 15.000
				L_171_.TextXAlignment = Enum.TextXAlignment.Left
				L_172_.Name = "Desc"
				L_172_.Parent = L_170_
				L_172_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_172_.BackgroundTransparency = 1.000
				L_172_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_172_.BorderSizePixel = 0
				L_172_.Position = UDim2.new(0, 15, 0, 26)
				L_172_.Size = UDim2.new(1, -80, 1, -60)
				L_172_.Font = Enum.Font.Arial
				L_172_.Text = L_168_arg0.Description
				L_172_.TextColor3 = Color3.fromRGB(144, 144, 144)
				L_172_.TextSize = 13.000
				L_172_.TextWrapped = true
				L_172_.TextXAlignment = Enum.TextXAlignment.Left
				L_172_.TextYAlignment = Enum.TextYAlignment.Top
				if L_168_arg0.Description ~= nil and L_168_arg0.Description ~= "" then
					L_1_.Stepped:Connect(function()
						L_169_.Size = UDim2.new(1, 0, 0, math.max(L_172_.TextBounds.Y + 50, 100))
					end)
				end
				L_173_.Name = "UIStroke"
				L_173_.Parent = L_170_
				L_173_.AnchorPoint = Vector2.new(0, 0.5)
				L_173_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_173_.BackgroundTransparency = 1.000
				L_173_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_173_.BorderSizePixel = 0
				L_173_.Position = UDim2.new(0, 10, 0.699999988, 0)
				L_173_.Size = UDim2.new(1, -20, 0, 35)
				L_173_.Image = "rbxassetid://117788349049947"
				L_173_.ImageTransparency = 0.850
				L_173_.ScaleType = Enum.ScaleType.Slice
				L_173_.SliceCenter = Rect.new(256, 256, 256, 256)
				L_173_.SliceScale = 0.033
				L_174_.Name = "Click"
				L_174_.Parent = L_170_
				L_174_.Active = true
				L_174_.AnchorPoint = Vector2.new(0, 0.5)
				L_174_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_174_.BackgroundTransparency = 1.000
				L_174_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_174_.BorderSizePixel = 0
				L_174_.Position = UDim2.new(0, 10, 0.699999988, 0)
				L_174_.Selectable = true
				L_174_.Size = UDim2.new(1, -20, 0, 35)
				L_174_.Image = "rbxassetid://126409600467363"
				L_174_.ImageTransparency = 0.940
				L_174_.ScaleType = Enum.ScaleType.Slice
				L_174_.SliceCenter = Rect.new(256, 256, 256, 256)
				L_174_.SliceScale = 0.033
				L_175_.Parent = L_174_
				L_175_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_175_.BackgroundTransparency = 1.000
				L_175_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_175_.BorderSizePixel = 0
				L_175_.Size = UDim2.new(1, 0, 1, 0)
				L_176_.Name = "Icon"
				L_176_.Parent = L_175_
				L_176_.AnchorPoint = Vector2.new(0, 0.5)
				L_176_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_176_.BackgroundTransparency = 1.000
				L_176_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_176_.BorderSizePixel = 0
				L_176_.Position = UDim2.new(1, -30, 0.5, 0)
				L_176_.Size = UDim2.new(0, 20, 0, 20)
				L_176_.Image = "rbxassetid://126409600467363"
				L_176_.ImageTransparency = 0.100
				L_177_.Name = "Select"
				L_177_.Parent = L_175_
				L_177_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_177_.BackgroundTransparency = 1.000
				L_177_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_177_.BorderSizePixel = 0
				L_177_.ClipsDescendants = true
				L_177_.Position = UDim2.new(0, 10, 0, 0)
				L_177_.Selectable = false
				L_177_.Size = UDim2.new(1, -50, 1, 0)
				L_177_.Font = Enum.Font.Arial
				L_177_.PlaceholderText = L_168_arg0.PlaceHolder
				L_177_.Text = L_168_arg0.Default
				L_177_.TextColor3 = Color3.fromRGB(255, 255, 255)
				L_177_.TextSize = 15.000
				L_177_.TextXAlignment = Enum.TextXAlignment.Left
				L_177_.FocusLost:Connect(function()
					L_168_arg0.Callback(L_177_.Text)
				end)
			end
			function L_96_:AddParagraph(L_178_arg0)
				L_178_arg0 = L_178_arg0 or {}
				L_178_arg0.Title = L_178_arg0.Title
				L_178_arg0.Content = L_178_arg0.Content or ""
				L_178_arg0.Icon = L_178_arg0.Icon or ""
				L_178_arg0.Theme = L_178_arg0.Theme or "Dark"
				local L_179_ = Instance.new("Frame")
				local L_180_ = Instance.new("ImageLabel")
				local L_181_ = Instance.new("TextLabel")
				local L_182_ = Instance.new("TextLabel")
				local L_183_ = Instance.new("ImageLabel")
				local L_184_ = {}
				L_179_.Name = L_178_arg0.Theme
				L_179_.Parent = L_93_
				L_179_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_179_.BackgroundTransparency = 1.000
				L_179_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_179_.BorderSizePixel = 0
				L_179_.Size = UDim2.new(1, 0, 0, 60)
				L_180_.Name = "Background"
				L_180_.Parent = L_179_
				L_180_.Active = true
				L_180_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_180_.BackgroundTransparency = 1.000
				L_180_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_180_.BorderSizePixel = 0
				L_180_.Selectable = true
				L_180_.Size = UDim2.new(1, 0, 1, 0)
				L_180_.Image = "rbxassetid://80999662900595"
				L_180_.ImageTransparency = 0.950
				L_180_.ScaleType = Enum.ScaleType.Slice
				L_180_.SliceCenter = Rect.new(256, 256, 256, 256)
				L_180_.SliceScale = 0.055
				L_181_.Name = "Title"
				L_181_.Parent = L_180_
				L_181_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_181_.BackgroundTransparency = 1.000
				L_181_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_181_.BorderSizePixel = 0
				L_181_.Position = UDim2.new(0, 15, 0, 8)
				L_181_.Size = UDim2.new(1, -80, 0, 18)
				L_181_.Font = Enum.Font.Arial
				L_181_.Text = L_178_arg0.Title
				L_181_.TextColor3 = Color3.fromRGB(255, 255, 255)
				L_181_.TextSize = 15.000
				L_181_.TextXAlignment = Enum.TextXAlignment.Left
				L_182_.Name = "Desc"
				L_182_.Parent = L_180_
				L_182_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_182_.BackgroundTransparency = 1.000
				L_182_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_182_.BorderSizePixel = 0
				L_182_.Position = UDim2.new(0, 15, 0, 26)
				L_182_.Size = UDim2.new(1, -80, 1, -26)
				L_182_.Font = Enum.Font.Arial
				L_182_.Text = L_178_arg0.Content
				L_182_.TextColor3 = Color3.fromRGB(144, 144, 144)
				L_182_.TextSize = 13.000
				L_182_.TextWrapped = true
				L_182_.TextXAlignment = Enum.TextXAlignment.Left
				L_182_.TextYAlignment = Enum.TextYAlignment.Top
				L_183_.Name = "Icon"
				L_183_.Parent = L_180_
				L_183_.AnchorPoint = Vector2.new(0, 0.5)
				L_183_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_183_.BackgroundTransparency = 1.000
				L_183_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				L_183_.BorderSizePixel = 0
				L_183_.Position = UDim2.new(1, -40, 0.5, 0)
				L_183_.Size = UDim2.new(0, 25, 0, 25)
				L_183_.Image = L_178_arg0.Icon
				function L_184_:SetTitle(L_185_arg0)
					L_181_.Text = L_185_arg0
				end
				function L_184_:SetDesc(L_186_arg0)
					L_182_.Text = L_186_arg0
				end
				function L_184_:SetIcon(L_187_arg0)
					L_183_.Image = L_187_arg0
				end
				function L_184_:SetTheme(L_188_arg0)
					if L_188_arg0 == "White" then
						L_180_.ImageTransparency = 0.1
						L_183_.ImageColor3 = Color3.fromRGB(40, 40, 40)
						L_181_.TextColor3 = Color3.fromRGB(40, 40, 40)
					else
						L_180_.ImageTransparency = 0.95
						L_183_.ImageColor3 = Color3.fromRGB(255, 255, 255)
						L_181_.TextColor3 = Color3.fromRGB(255, 255, 255)
					end
				end
				L_184_:SetTheme(L_178_arg0.Theme)
				return L_184_
			end
			return L_96_
		end
		return L_76_
	end
	return L_68_
end
return L_1_
