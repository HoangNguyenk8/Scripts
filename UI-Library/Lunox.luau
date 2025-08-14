local a={
Stepped=game:GetService"RunService".Stepped
}
function a.Tween(b,c,d,e,f,g)
local h=game:GetService"TweenService":Create(c,TweenInfo.new(d,Enum.EasingStyle[e]),{[f]=g})
h:Play()
return h
end
function a.MouseEvent(b,c,...)
local d={...}
c.MouseEnter:Connect(d[1])
c.MouseLeave:Connect(d[2])
end
function a.MakeDraggable(b,...)
local c={...}
local d=false
local e
local f
local g
c[2].InputBegan:Connect(function(h)
if h.UserInputType==Enum.UserInputType.MouseButton1 or h.UserInputType==Enum.UserInputType.Touch then
d=true
f=h.Position
g=c[1].Position

h.Changed:Connect(function()
if h.UserInputState==Enum.UserInputState.End then
d=false
end
end)
end
end)
c[2].InputChanged:Connect(function(h)
if h.UserInputType==Enum.UserInputType.MouseMovement or h.UserInputType==Enum.UserInputType.Touch then
e=h
end
end)
game:GetService"UserInputService".InputChanged:Connect(function(h)
if h==e and d then
local i=h.Position-f
local j=UDim2.new(
g.X.Scale,
g.X.Offset+i.X,
g.Y.Scale,
g.Y.Offset+i.Y
)
a:Tween(c[1],0.1,"Quad","Position",j)
end
end)
end
function a.CustomSize(b,c)
local d=false
local e=game.Players.LocalPlayer:GetMouse().Icon
local f
local g
local h
local i=c.Size.X.Offset
local j=i-100
local k=Instance.new"Frame"
local l=Instance.new"ImageLabel"
k.Parent=c
k.BackgroundColor3=Color3.fromRGB(255,255,255)
k.BackgroundTransparency=1.000
k.BorderColor3=Color3.fromRGB(0,0,0)
k.BorderSizePixel=0
k.Position=UDim2.new(1,-30,1,-30)
k.Size=UDim2.new(0,50,0,50)
l.Parent=k
l.AnchorPoint=Vector2.new(0.5,0.5)
l.BackgroundColor3=Color3.fromRGB(255,255,255)
l.BackgroundTransparency=1.000
l.BorderColor3=Color3.fromRGB(0,0,0)
l.BorderSizePixel=0
l.Position=UDim2.new(0.5,-13,0.5,-13)
l.Size=UDim2.new(0,100,0,100)
l.Image="rbxassetid://120997033468887"
l.ImageTransparency=0.800
a:MouseEvent(l,function()
l.ImageTransparency=0.500
game.Players.LocalPlayer:GetMouse().Icon="rbxassetid://97880490001888"
end,function()
game.Players.LocalPlayer:GetMouse().Icon=e
l.ImageTransparency=0.800
end)
k.InputBegan:Connect(function(m)
if m.UserInputType==Enum.UserInputType.MouseButton1 or m.UserInputType==Enum.UserInputType.Touch then
d=true
g=m.Position
h=c.Size
m.Changed:Connect(function()
if m.UserInputState==Enum.UserInputState.End then
d=false
end
end)
end
end)
k.InputChanged:Connect(function(m)
if m.UserInputType==Enum.UserInputType.MouseMovement or m.UserInputType==Enum.UserInputType.Touch then
f=m
end
end)
game:GetService"UserInputService".InputChanged:Connect(function(m)
if m==f and d then
local n=m.Position-g
local o=h.X.Offset+n.X
local p=h.Y.Offset+n.Y
o=math.max(o,i)
p=math.max(p,j)
a:Tween(c,0.2,"Quad","Size",UDim2.new(0,o,0,p))
end
end)
end
function a.UpdateScroll(b,c,d)
c.CanvasSize=UDim2.new(0,0,0,d.AbsoluteContentSize.Y+20)
end
function a.NewNotify(b,c)
c=c or{}
c.Title=c.Title
c.Content=c.Content or""
c.Duration=c.Duration or 5
spawn(function()
if not game.CoreGui:FindFirstChild"NotifyGui"then
local d=Instance.new"ScreenGui"
d.Name="NotifyGui"
d.Parent=game.CoreGui
d.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
end
if not game.CoreGui.NotifyGui:FindFirstChild"NotifyLayout"then
local d=Instance.new"Frame"
d.Name="NotifyLayout"
d.Parent=game.CoreGui.NotifyGui
d.BackgroundColor3=Color3.fromRGB(255,255,255)
d.BackgroundTransparency=1.000
d.BorderColor3=Color3.fromRGB(0,0,0)
d.BorderSizePixel=0
d.Position=UDim2.new(1,-350,1,-100)
d.Size=UDim2.new(0,300,1,-900)
end
if not game.CoreGui.NotifyGui.NotifyLayout:FindFirstChild"List"then
local d=Instance.new"UIListLayout"
d.Name="List"
d.Padding=UDim.new(0,5)
d.SortOrder=Enum.SortOrder.LayoutOrder
d.VerticalAlignment=Enum.VerticalAlignment.Bottom
d.Parent=game.CoreGui.NotifyGui:FindFirstChild"NotifyLayout"
end
local d=Instance.new"Frame"
local e=Instance.new"ImageLabel"
local f=Instance.new"TextLabel"
local g=Instance.new"ImageButton"
local h=Instance.new"TextLabel"
local i=Instance.new"ImageLabel"
d.Name="NotifyFrame"
d.Parent=game.CoreGui.NotifyGui:WaitForChild"NotifyLayout"
d.BackgroundColor3=Color3.fromRGB(255,255,255)
d.BackgroundTransparency=1.000
d.BorderColor3=Color3.fromRGB(0,0,0)
d.BorderSizePixel=0
d.Position=UDim2.new(0,0,0,0)
d.Size=UDim2.new(1,0,0,80)

e.Name="Main"
e.Parent=d
e.BackgroundColor3=Color3.fromRGB(255,255,255)
e.BackgroundTransparency=1.000
e.BorderColor3=Color3.fromRGB(0,0,0)
e.BorderSizePixel=0
e.Position=UDim2.new(0,500,0,0)
e.Size=UDim2.new(1,0,1,0)
e.Image="rbxassetid://80999662900595"
e.ImageColor3=Color3.fromRGB(16,16,16)
e.ImageTransparency=0.100
e.ScaleType=Enum.ScaleType.Slice
e.SliceCenter=Rect.new(256,256,256,256)
e.SliceScale=0.055

f.Name="Title"
f.Parent=e
f.BackgroundColor3=Color3.fromRGB(255,255,255)
f.BackgroundTransparency=1.000
f.BorderColor3=Color3.fromRGB(0,0,0)
f.BorderSizePixel=0
f.Position=UDim2.new(0,14,0,11)
f.Size=UDim2.new(1,-30,0,18)
f.Font=Enum.Font.Arial
f.Text=c.Title
f.TextColor3=Color3.fromRGB(255,255,255)
f.TextSize=14.000
f.TextXAlignment=Enum.TextXAlignment.Left

g.Name="Close"
g.Parent=e
g.BackgroundColor3=Color3.fromRGB(255,255,255)
g.BackgroundTransparency=1.000
g.BorderColor3=Color3.fromRGB(0,0,0)
g.BorderSizePixel=0
g.Position=UDim2.new(1,-27,0,8)
g.Size=UDim2.new(0,18,0,18)
g.Image="rbxassetid://105957381820378"
g.ImageRectOffset=Vector2.new(480,0)
g.ImageRectSize=Vector2.new(96,96)

h.Name="Desc"
h.Parent=e
h.BackgroundColor3=Color3.fromRGB(255,255,255)
h.BackgroundTransparency=1.000
h.BorderColor3=Color3.fromRGB(0,0,0)
h.BorderSizePixel=0
h.Position=UDim2.new(0,14,0,29)
h.Size=UDim2.new(1,-30,1,-29)
h.Font=Enum.Font.Arial
h.Text=c.Content
h.TextColor3=Color3.fromRGB(100,100,100)
h.TextSize=14.000
h.TextXAlignment=Enum.TextXAlignment.Left
h.TextYAlignment=Enum.TextYAlignment.Top
if h.Text~=""then
a.Stepped:Connect(function()
d.Size=UDim2.new(1,0,0,math.max(h.TextBounds.Y+30,68))
end)
end
i.Name="UIStroke"
i.Parent=e
i.BackgroundColor3=Color3.fromRGB(255,255,255)
i.BackgroundTransparency=1.000
i.BorderColor3=Color3.fromRGB(0,0,0)
i.BorderSizePixel=0
i.Size=UDim2.new(1,0,1,0)
i.Image="rbxassetid://117788349049947"
i.ImageTransparency=0.700
i.ScaleType=Enum.ScaleType.Slice
i.SliceCenter=Rect.new(256,256,256,256)
i.SliceScale=0.050
a:Tween(e,0.3,"Quad","Position",UDim2.new(0,0,0,0))
task.wait(c.Duration)
a:Tween(e,0.3,"Quad","Position",UDim2.new(0,500,0,0))
task.wait(0.6)
d:Destroy()
end)
end
function a.NewWindow(b,c)
a.Window=a.Window or false
if a.Window then warn"Already Create Window"return end
a.Window=true
c=c or{}
c.Title=c.Title or"Lunox Example"
c.Author=c.Author or"By ! xHoang"
c.Icon=c.Icon or"rbxassetid://119115999130075"
c.Scale=c.Scale or UDim2.fromOffset(600,500)
c.KeyCode=c.KeyCode or Enum.KeyCode.LeftControl
c.Key=c.Key or{}
c.Key.Enable=c.Key.Enable or false
c.Key.RealKey=c.Key.RealKey or{"1234","4567"}
c.Key.Link=c.Key.Link or""
local d=Instance.new"ScreenGui"
local e=Instance.new"Frame"
local f=Instance.new"ImageLabel"
local g=Instance.new"ImageLabel"
local h=Instance.new"Frame"
local i=Instance.new"Frame"
local j=Instance.new"Frame"
local k=Instance.new"ImageLabel"
local l=Instance.new"TextLabel"
local m=Instance.new"TextLabel"
local n=Instance.new"Frame"
local o=Instance.new"UIListLayout"
local p=Instance.new"ImageButton"
local q=Instance.new"ImageLabel"
local r=Instance.new"UIPadding"
local s=Instance.new"ImageButton"
local t=Instance.new"ImageLabel"
local u=Instance.new"ImageButton"
local v=Instance.new"ImageLabel"
local w=Instance.new"Frame"
local x=Instance.new"ScrollingFrame"
local y=Instance.new"UIListLayout"
local z=Instance.new"UIPadding"
local A=Instance.new"Frame"
local B=Instance.new"ImageLabel"
local C=Instance.new"Folder"
local D=Instance.new"Frame"
local E=Instance.new"Frame"
local F=Instance.new"ImageLabel"
local G=Instance.new"TextLabel"
local H=Instance.new"TextButton"

d.Parent=game.CoreGui
d.ZIndexBehavior=Enum.ZIndexBehavior.Sibling

e.Parent=d
e.BackgroundColor3=Color3.fromRGB(255,255,255)
e.AnchorPoint=Vector2.new(0.5,0.5)
e.BackgroundTransparency=1.000
e.BorderColor3=Color3.fromRGB(0,0,0)
e.BorderSizePixel=0
e.Position=UDim2.new(0.5,0,0.53,0)
e.Size=UDim2.new(0,500,0,400)

f.Name="Blur"
f.Parent=e
f.AnchorPoint=Vector2.new(0.5,0.5)
f.BackgroundColor3=Color3.fromRGB(255,255,255)
f.BackgroundTransparency=1.000
f.BorderColor3=Color3.fromRGB(0,0,0)
f.BorderSizePixel=0
f.Position=UDim2.new(0.5,0,0.5,0)
f.Size=UDim2.new(1,120,1,120)
f.ZIndex=-5
f.Image="rbxassetid://8992230677"
f.ImageColor3=Color3.fromRGB(0,0,0)
f.ImageTransparency=0.330
f.ScaleType=Enum.ScaleType.Slice
f.SliceCenter=Rect.new(99,99,99,99)

g.Name="Background"
g.Parent=e
g.BackgroundColor3=Color3.fromRGB(255,255,255)
g.BackgroundTransparency=1.000
g.BorderColor3=Color3.fromRGB(0,0,0)
g.BorderSizePixel=0
g.Size=UDim2.new(1,0,1,0)
g.Image="rbxassetid://80999662900595"
g.ImageColor3=Color3.fromRGB(16,16,16)
g.ScaleType=Enum.ScaleType.Slice
g.SliceCenter=Rect.new(256,256,256,256)
g.SliceScale=0.083

h.Name="Main"
h.Parent=e
h.BackgroundColor3=Color3.fromRGB(255,255,255)
h.BackgroundTransparency=1.000
h.BorderColor3=Color3.fromRGB(0,0,0)
h.BorderSizePixel=0
h.Size=UDim2.new(1,0,1,0)
H.Name="Click"
H.Parent=d
H.BackgroundColor3=Color3.fromRGB(255,255,255)
H.BackgroundTransparency=1.000
H.BorderColor3=Color3.fromRGB(0,0,0)
H.BorderSizePixel=0
H.TextTransparency=1.000
H.Size=UDim2.new(1,0,1,0)
H.Visible=false
i.Name="Topbar"
i.Parent=h
i.BackgroundColor3=Color3.fromRGB(255,255,255)
i.BackgroundTransparency=1.000
i.BorderColor3=Color3.fromRGB(0,0,0)
i.BorderSizePixel=0
i.Size=UDim2.new(1,0,0,65)

j.Name="Left"
j.Parent=i
j.BackgroundColor3=Color3.fromRGB(255,255,255)
j.BackgroundTransparency=1.000
j.BorderColor3=Color3.fromRGB(0,0,0)
j.BorderSizePixel=0
j.Size=UDim2.new(0,250,1,0)

k.Name="Icon"
k.Parent=j
k.AnchorPoint=Vector2.new(0,0.5)
k.BackgroundColor3=Color3.fromRGB(255,255,255)
k.BackgroundTransparency=1.000
k.BorderColor3=Color3.fromRGB(0,0,0)
k.BorderSizePixel=0
k.Position=UDim2.new(0,20,0.5,0)
k.Size=UDim2.new(0,35,0,35)
k.Image=c.Icon
k.ImageTransparency=0.230

l.Name="Name"
l.Parent=j
l.BackgroundColor3=Color3.fromRGB(255,255,255)
l.BackgroundTransparency=1.000
l.BorderColor3=Color3.fromRGB(0,0,0)
l.BorderSizePixel=0
l.Position=UDim2.new(0,69,0,10)
l.Size=UDim2.new(0,200,0,30)
l.Font=Enum.Font.ArialBold
l.Text=c.Title
l.TextColor3=Color3.fromRGB(255,255,255)
l.TextSize=16.000
l.TextXAlignment=Enum.TextXAlignment.Left

m.Name="Author"
m.Parent=j
m.BackgroundColor3=Color3.fromRGB(255,255,255)
m.BackgroundTransparency=1.000
m.BorderColor3=Color3.fromRGB(0,0,0)
m.BorderSizePixel=0
m.Position=UDim2.new(0,69,0,35)
m.Size=UDim2.new(0,200,0,30)
m.Font=Enum.Font.Arial
m.Text=c.Author
m.TextColor3=Color3.fromRGB(255,255,255)
m.TextSize=15.000
m.TextTransparency=0.400
m.TextXAlignment=Enum.TextXAlignment.Left
m.TextYAlignment=Enum.TextYAlignment.Top

n.Name="Right"
n.Parent=i
n.BackgroundColor3=Color3.fromRGB(255,255,255)
n.BackgroundTransparency=1.000
n.BorderColor3=Color3.fromRGB(0,0,0)
n.BorderSizePixel=0
n.Position=UDim2.new(1,-160,0,0)
n.Size=UDim2.new(0,160,1,0)

o.Parent=n
o.FillDirection=Enum.FillDirection.Horizontal
o.SortOrder=Enum.SortOrder.LayoutOrder
o.Padding=UDim.new(0,15)

function a.Minized(I)
OldSize=e.Size
h.Visible=false
a:Tween(e,0.13,"Quad","Size",UDim2.fromOffset(500,300))
a:Tween(g,0.2,"Quad","ImageTransparency",1)
a:Tween(f,0.2,"Quad","ImageTransparency",1)
task.wait(0.1)
e.Visible=false
end
p.Name="Minized"
p.Parent=n
p.AnchorPoint=Vector2.new(0,0.5)
p.BackgroundColor3=Color3.fromRGB(255,255,255)
p.BackgroundTransparency=1.000
p.BorderColor3=Color3.fromRGB(0,0,0)
p.BorderSizePixel=0
p.Position=UDim2.new(0,5,0.5,0)
p.Selectable=false
p.Size=UDim2.new(0,40,0,40)
p.Image="rbxassetid://80999662900595"
p.ImageTransparency=1
p.ScaleType=Enum.ScaleType.Slice
p.SliceCenter=Rect.new(256,256,256,256)
p.SliceScale=0.050
p.Activated:Connect(function()
a:Minized()
end)
q.Name="Icon"
q.Parent=p
q.AnchorPoint=Vector2.new(0.5,0.5)
q.BackgroundColor3=Color3.fromRGB(255,255,255)
q.BackgroundTransparency=1.000
q.BorderColor3=Color3.fromRGB(0,0,0)
q.BorderSizePixel=0
q.Position=UDim2.new(0.5,0,0.5,0)
q.Size=UDim2.new(0,25,0,25)
q.Image="rbxassetid://136452605242985"
q.ImageRectOffset=Vector2.new(288,672)
q.ImageRectSize=Vector2.new(96,96)
q.ImageTransparency=0.700

r.Parent=n
r.PaddingTop=UDim.new(0,12)

s.Name="Larged"
s.Parent=n
s.AnchorPoint=Vector2.new(0,0.5)
s.BackgroundColor3=Color3.fromRGB(255,255,255)
s.BackgroundTransparency=1.000
s.BorderColor3=Color3.fromRGB(0,0,0)
s.BorderSizePixel=0
s.Position=UDim2.new(0,5,0.5,0)
s.Selectable=false
s.Size=UDim2.new(0,40,0,40)
s.Image="rbxassetid://80999662900595"
s.ImageTransparency=1.000
s.ScaleType=Enum.ScaleType.Slice
s.SliceCenter=Rect.new(256,256,256,256)
s.SliceScale=0.050
local I,J
s.Activated:Connect(function()
if e.Size~=UDim2.new(1,-20,1,-20)then
I=e.Size
J=e.Position
a:Tween(e,0.2,"Quad","Position",UDim2.new(0,10,0,10))
a:Tween(e,0.2,"Quad","Size",UDim2.new(1,-20,1,-20))
else
a:Tween(e,0.2,"Quad","Position",J)
a:Tween(e,0.2,"Quad","Size",I)
end
end)
t.Name="Icon"
t.Parent=s
t.AnchorPoint=Vector2.new(0.5,0.5)
t.BackgroundColor3=Color3.fromRGB(255,255,255)
t.BackgroundTransparency=1.000
t.BorderColor3=Color3.fromRGB(0,0,0)
t.BorderSizePixel=0
t.Position=UDim2.new(0.5,0,0.5,0)
t.Size=UDim2.new(0,20,0,20)
t.Image="rbxassetid://136452605242985"
t.ImageRectOffset=Vector2.new(580,194)
t.ImageRectSize=Vector2.new(96,96)
t.ImageTransparency=0.700

u.Name="Removed"
u.Parent=n
u.AnchorPoint=Vector2.new(0,0.5)
u.BackgroundColor3=Color3.fromRGB(255,255,255)
u.BackgroundTransparency=1.000
u.BorderColor3=Color3.fromRGB(0,0,0)
u.BorderSizePixel=0
u.Position=UDim2.new(0,5,0.5,0)
u.Selectable=false
u.Size=UDim2.new(0,40,0,40)
u.Image="rbxassetid://80999662900595"
u.ImageTransparency=1.000
u.ScaleType=Enum.ScaleType.Slice
u.SliceCenter=Rect.new(256,256,256,256)
u.SliceScale=0.050
u.Activated:Connect(function()
h.Visible=false
a:Tween(e,0.13,"Quad","Size",UDim2.fromOffset(500,300))
a:Tween(g,0.2,"Quad","ImageTransparency",1)
a:Tween(f,0.2,"Quad","ImageTransparency",1)
task.wait(0.1)
d:Destroy()
end)

v.Name="Icon"
v.Parent=u
v.AnchorPoint=Vector2.new(0.5,0.5)
v.BackgroundColor3=Color3.fromRGB(255,255,255)
v.BackgroundTransparency=1.000
v.BorderColor3=Color3.fromRGB(0,0,0)
v.BorderSizePixel=0
v.Position=UDim2.new(0.5,0,0.5,0)
v.Size=UDim2.new(0,25,0,25)
v.Image="rbxassetid://105957381820378"
v.ImageRectOffset=Vector2.new(480,0)
v.ImageRectSize=Vector2.new(100,100)
v.ImageTransparency=0.700

A.Name="ChannelFrame"
A.Parent=h
A.BackgroundColor3=Color3.fromRGB(255,255,255)
A.BackgroundTransparency=1.000
A.BorderColor3=Color3.fromRGB(0,0,0)
A.BorderSizePixel=0
A.Position=UDim2.new(0,210,0,70)
A.Size=UDim2.new(1,-220,1,-80)

B.Name="Background"
B.Parent=A
B.BackgroundColor3=Color3.fromRGB(255,255,255)
B.BackgroundTransparency=0.990
B.BorderColor3=Color3.fromRGB(0,0,0)
B.BorderSizePixel=0
B.Size=UDim2.new(1,0,1,0)
B.Image="rbxassetid://80999662900595"
B.ImageTransparency=0.950
B.ScaleType=Enum.ScaleType.Slice
B.SliceCenter=Rect.new(256,256,256,256)
B.SliceScale=0.033

C.Name="List"
C.Parent=A

D.Name="NameChannel"
D.Parent=A
D.BackgroundColor3=Color3.fromRGB(255,255,255)
D.BackgroundTransparency=1.000
D.BorderColor3=Color3.fromRGB(0,0,0)
D.BorderSizePixel=0
D.Size=UDim2.new(1,0,0,50)

E.Name="Line"
E.Parent=D
E.BackgroundColor3=Color3.fromRGB(255,255,255)
E.BackgroundTransparency=0.900
E.BorderColor3=Color3.fromRGB(0,0,0)
E.BorderSizePixel=0
E.Position=UDim2.new(0,0,1,0)
E.Size=UDim2.new(1,0,0,1)

F.Name="Icon"
F.Parent=D
F.AnchorPoint=Vector2.new(0,0.5)
F.BackgroundColor3=Color3.fromRGB(255,255,255)
F.BackgroundTransparency=1.000
F.BorderColor3=Color3.fromRGB(0,0,0)
F.BorderSizePixel=0
F.Position=UDim2.new(0,20,0.5,0)
F.Size=UDim2.new(0,20,0,20)
F.Image="rbxassetid://132003413384414"

G.Name="NameTab"
G.Parent=D
G.AnchorPoint=Vector2.new(0,0.5)
G.BackgroundColor3=Color3.fromRGB(255,255,255)
G.BackgroundTransparency=1.000
G.BorderColor3=Color3.fromRGB(0,0,0)
G.BorderSizePixel=0
G.Position=UDim2.new(0,50,0.5,0)
G.Size=UDim2.new(0,300,1,0)
G.Font=Enum.Font.Arial
G.Text="Tab"
G.TextColor3=Color3.fromRGB(255,255,255)
G.TextSize=15.000
G.TextXAlignment=Enum.TextXAlignment.Left

w.Name="TabFrame"
w.Parent=h
w.BackgroundColor3=Color3.fromRGB(255,255,255)
w.BackgroundTransparency=1.000
w.BorderColor3=Color3.fromRGB(0,0,0)
w.BorderSizePixel=0
w.Position=UDim2.new(0,0,0,60)
w.Size=UDim2.new(0,200,1,-60)

x.Name="ScrollTab"
x.Parent=w
x.BackgroundColor3=Color3.fromRGB(255,255,255)
x.BackgroundTransparency=1.000
x.BorderColor3=Color3.fromRGB(0,0,0)
x.BorderSizePixel=0
x.Selectable=false
x.Size=UDim2.new(1,0,1,0)
x.CanvasSize=UDim2.new(0,0,1.29999995,0)
x.ScrollBarThickness=0
a.Stepped:Connect(function()
a:UpdateScroll(x,y)
end)
y.Parent=x
y.SortOrder=Enum.SortOrder.LayoutOrder

z.Parent=x
z.PaddingBottom=UDim.new(0,8)
z.PaddingLeft=UDim.new(0,12)
z.PaddingRight=UDim.new(0,8)
z.PaddingTop=UDim.new(0,8)
a:MouseEvent(p,function()
p.ImageTransparency=0.95
end,function()
p.ImageTransparency=1
end)
a:MouseEvent(s,function()
s.ImageTransparency=0.95
end,function()
s.ImageTransparency=1
end)
a:MouseEvent(u,function()
u.ImageTransparency=0.95
end,function()
u.ImageTransparency=1
end)
a:MakeDraggable(e,i)
a:CustomSize(e)
local K=a:Tween(e,0.2,"Quad","Size",UDim2.fromOffset(600,500))
K.Completed:Connect(function()
e.AnchorPoint=Vector2.new(0,0)
e.Position=UDim2.fromOffset(game.Workspace.Camera.ViewportSize.X/2-e.Size.X.Offset/2,game.Workspace.Camera.ViewportSize.Y/2-e.Size.Y.Offset/2)
end)
local L={}
function L.SetTransparency(M,N)
g.ImageTransparency=N*0.01
end
game:GetService"UserInputService".InputBegan:Connect(function(M)
if M.KeyCode==c.KeyCode then
if h.Visible then
a:Minized()
else
e.Visible=true
task.wait(0.05)
h.Visible=true
e.Size=UDim2.new(0,OldSize.X.Offset-40,0,OldSize.Y.Offset-40)
a:Tween(e,0.13,"Quad","Size",UDim2.fromOffset(OldSize.X.Offset,OldSize.Y.Offset))
a:Tween(g,0.2,"Quad","ImageTransparency",0)
a:Tween(f,0.2,"Quad","ImageTransparency",0.330)
end
end
end)
function L.AddSection(M,N)
N=N or{}
N.Open=N.Open or false
N.Title=N.Title or"Section"
local O=Instance.new"Frame"
local P=Instance.new"TextButton"
local Q=Instance.new"ImageLabel"
local R=Instance.new"UIListLayout"
local S=Instance.new"UIPadding"
O.Name="SectionTab"
O.Parent=x
O.BackgroundColor3=Color3.fromRGB(255,255,255)
O.BackgroundTransparency=1.000
O.BorderColor3=Color3.fromRGB(0,0,0)
O.BorderSizePixel=0
O.ClipsDescendants=true
O.Size=UDim2.new(1,0,0,140)

P.Name="Title"
P.Parent=O
P.BackgroundColor3=Color3.fromRGB(255,255,255)
P.BackgroundTransparency=1.000
P.BorderColor3=Color3.fromRGB(0,0,0)
P.BorderSizePixel=0
P.Position=UDim2.new(0,15,0,0)
P.Size=UDim2.new(1,-30,0,30)
P.Font=Enum.Font.ArialBold
P.Text=N.Title
P.TextColor3=Color3.fromRGB(144,144,144)
P.TextSize=15.000
P.TextXAlignment=Enum.TextXAlignment.Left

Q.Name="Icon"
Q.Parent=P
Q.AnchorPoint=Vector2.new(0,0.5)
Q.BackgroundColor3=Color3.fromRGB(255,255,255)
Q.BackgroundTransparency=1.000
Q.BorderColor3=Color3.fromRGB(0,0,0)
Q.BorderSizePixel=0
Q.Position=UDim2.new(1,1,0.5,0)
Q.Size=UDim2.new(0,18,0,18)
Q.Image="rbxassetid://98740753192722"
Q.ImageColor3=Color3.fromRGB(100,100,100)
Q.ImageRectOffset=Vector2.new(0,192)
Q.ImageRectSize=Vector2.new(96,96)

R.Parent=O
R.SortOrder=Enum.SortOrder.LayoutOrder
R.Padding=UDim.new(0,5)

S.Parent=O
S.PaddingLeft=UDim.new(0,8)
a:MouseEvent(P,function()
Q.ImageColor3=Color3.fromRGB(188,188,188)
P.TextColor3=Color3.fromRGB(188,188,188)
end,function()
Q.ImageColor3=Color3.fromRGB(100,100,100)
P.TextColor3=Color3.fromRGB(144,144,144)
end)
if not N.Open then
Q.Rotation=180
O.Size=UDim2.new(1,0,0,32)
end
P.Activated:Connect(function()
N.Open=not N.Open
if N.Open then
a:Tween(Q,0.3,"Quad","Rotation",0)
else
a:Tween(Q,0.3,"Quad","Rotation",180)
a:Tween(O,0.3,"Quad","Size",UDim2.new(1,0,0,32))
end
end)
a.Stepped:Connect(function()
if N.Open then
a:Tween(O,0.3,"Quad","Size",UDim2.new(1,0,0,R.AbsoluteContentSize.Y+15))
end
end)
local T={}
function T.ChangeTab(U,V,W,X)
G.Text=W or""
F.Image=X or""
for Y,Z in ipairs(C:GetChildren())do
a:Tween(Z,0.2,"Quad","Position",UDim2.new(0,0,0,60))
for _,aa in ipairs(Z:GetChildren())do
if aa:IsA"Frame"then
a:Tween(aa.Background.Title,0.15,"Quad","TextTransparency",1)
if aa.Background:FindFirstChild"Desc"then
a:Tween(aa.Background.Desc,0.15,"Quad","TextTransparency",1)
end
a:Tween(aa.Background,0.15,"Quad","ImageTransparency",1)
end
end
task.delay(0.1,function()
Z.Visible=false
end)
end
task.wait(0.1)
V.Visible=true
a:Tween(V,0.2,"Quad","Position",UDim2.new(0,0,0,50))
for aa,Y in ipairs(V:GetChildren())do
if Y:IsA"Frame"then
if Y.Name=="White"then
a:Tween(Y.Background,0.15,"Quad","ImageTransparency",0.1)
else
a:Tween(Y.Background,0.15,"Quad","ImageTransparency",0.95)
end
a:Tween(Y.Background.Title,0.15,"Quad","TextTransparency",0)
if Y.Background:FindFirstChild"Desc"then
a:Tween(Y.Background.Desc,0.15,"Quad","TextTransparency",0)
end
end
end
end
local aa=0
function T.AddTab(U,V)
V=V or{}
V.Title=V.Title
V.Icon=V.Icon or nil
local W=Instance.new"ImageButton"
local X=Instance.new"ImageLabel"
local Y=Instance.new"ImageLabel"
local Z=Instance.new"TextLabel"
local _=Instance.new"ImageLabel"
local ab=Instance.new"ScrollingFrame"
local ac=Instance.new"UIPadding"
local ad=Instance.new"UIListLayout"
W.Name="TabDisable"
W.Parent=O
W.BackgroundColor3=Color3.fromRGB(255,255,255)
W.BackgroundTransparency=1.000
W.BorderColor3=Color3.fromRGB(0,0,0)
W.BorderSizePixel=0
W.Size=UDim2.new(1,0,0,45)

X.Name="Background"
X.Parent=W
X.BackgroundColor3=Color3.fromRGB(255,255,255)
X.BackgroundTransparency=1.000
X.BorderColor3=Color3.fromRGB(0,0,0)
X.BorderSizePixel=0
X.Size=UDim2.new(1,0,1,0)
X.Image="rbxassetid://80999662900595"
X.ImageTransparency=1.000
X.ScaleType=Enum.ScaleType.Slice
X.SliceCenter=Rect.new(256,256,256,256)
X.SliceScale=0.033

Y.Name="UIStroke"
Y.Parent=W
Y.BackgroundColor3=Color3.fromRGB(255,255,255)
Y.BackgroundTransparency=1.000
Y.BorderColor3=Color3.fromRGB(0,0,0)
Y.BorderSizePixel=0
Y.Size=UDim2.new(1,0,1,0)
Y.Image="rbxassetid://117788349049947"
Y.ImageTransparency=1.000
Y.ScaleType=Enum.ScaleType.Slice
Y.SliceCenter=Rect.new(256,256,256,256)
Y.SliceScale=0.033

Z.Name="TabName"
Z.Parent=W
Z.BackgroundColor3=Color3.fromRGB(255,255,255)
Z.BackgroundTransparency=1.000
Z.BorderColor3=Color3.fromRGB(0,0,0)
Z.BorderSizePixel=0
Z.Position=UDim2.new(0,18,0,0)
Z.Size=UDim2.new(1,-35,1,0)
Z.Font=Enum.Font.Arial
Z.Text=V.Title
Z.TextColor3=Color3.fromRGB(255,255,255)
Z.TextSize=15.000
Z.TextTransparency=0.300
Z.TextWrapped=true
Z.TextXAlignment=Enum.TextXAlignment.Left

ab.Name="Channel"
ab.Parent=C
ab.BackgroundColor3=Color3.fromRGB(255,255,255)
ab.BackgroundTransparency=1.000
ab.BorderColor3=Color3.fromRGB(0,0,0)
ab.BorderSizePixel=0
ab.Position=UDim2.new(0,0,0,50)
ab.Selectable=false
ab.Size=UDim2.new(1,0,1,-50)
ab.CanvasSize=UDim2.new(0,0,0,560)
ab.ScrollBarThickness=0
ab.Visible=false
a.Stepped:Connect(function()
a:UpdateScroll(ab,ad)
end)
ac.Parent=ab
ac.PaddingBottom=UDim.new(0,4)
ac.PaddingLeft=UDim.new(0,12)
ac.PaddingRight=UDim.new(0,7)
ac.PaddingTop=UDim.new(0,9)

ad.Parent=ab
ad.SortOrder=Enum.SortOrder.LayoutOrder
ad.Padding=UDim.new(0,5)
if V.Icon~=nil and V.Icon~=""then
Z.Position=UDim2.new(0,32,0,0)
_.Name="Icon"
_.Parent=W
_.AnchorPoint=Vector2.new(0,0.5)
_.BackgroundColor3=Color3.fromRGB(255,255,255)
_.BackgroundTransparency=1.000
_.BorderColor3=Color3.fromRGB(0,0,0)
_.BorderSizePixel=0
_.Position=UDim2.new(0,10,0.5,0)
_.Size=UDim2.new(0,18,0,18)
_.Image=V.Icon
_.ImageTransparency=0.300
end
if aa==0 then
aa+=1
ab.Visible=true
_.ImageTransparency=0.1
Z.TextTransparency=0
X.ImageTransparency=0.95
Y.ImageTransparency=0.9
end
a:MouseEvent(W,function()
X.ImageTransparency=0.95
end,function()
if Z.TextTransparency>=0.1 then
X.ImageTransparency=1
end
end)
W.Activated:Connect(function()
for ae,af in next,O:GetChildren()do
if af:IsA"ImageButton"then
a:Tween(af.Background,0.3,"Quad","ImageTransparency",1)
a:Tween(af.TabName,0.3,"Quad","TextTransparency",0.3)
a:Tween(af.UIStroke,0.3,"Quad","ImageTransparency",1)
end
end
a:Tween(X,0.3,"Quad","ImageTransparency",0.95)
a:Tween(Z,0.3,"Quad","TextTransparency",0)
a:Tween(Y,0.3,"Quad","ImageTransparency",0.9)
U:ChangeTab(ab,Z.Text,_.Image)
end)
local ae={}
function ae.AddToggle(af,ag)
ag=ag or{}
ag.Title=ag.Title
ag.Description=ag.Description or nil
ag.Default=ag.Default or false
ag.Active=ag.Active or ag.Default
ag.Callback=ag.Callback or function()end
local ah=Instance.new"Frame"
local ai=Instance.new"ImageButton"
local aj=Instance.new"TextLabel"
local ak=Instance.new"TextLabel"
local al=Instance.new"Frame"
local am=Instance.new"UICorner"
local an=Instance.new"Frame"
local ao=Instance.new"UICorner"
local ap={}
ah.Name="Toggle"
ah.Parent=ab
ah.BackgroundColor3=Color3.fromRGB(255,255,255)
ah.BackgroundTransparency=1.000
ah.BorderColor3=Color3.fromRGB(0,0,0)
ah.BorderSizePixel=0
ah.Size=UDim2.new(1,0,0,50)

ai.Name="Background"
ai.Parent=ah
ai.BackgroundColor3=Color3.fromRGB(255,255,255)
ai.BackgroundTransparency=1.000
ai.BorderColor3=Color3.fromRGB(0,0,0)
ai.BorderSizePixel=0
ai.Size=UDim2.new(1,0,1,0)
ai.Image="rbxassetid://80999662900595"
ai.ImageTransparency=0.950
ai.ScaleType=Enum.ScaleType.Slice
ai.SliceCenter=Rect.new(256,256,256,256)
ai.SliceScale=0.044

aj.Name="Title"
aj.Parent=ai
aj.BackgroundColor3=Color3.fromRGB(255,255,255)
aj.BackgroundTransparency=1.000
aj.BorderColor3=Color3.fromRGB(0,0,0)
aj.BorderSizePixel=0
aj.Position=UDim2.new(0,15,0,0)
aj.Size=UDim2.new(1,-80,1,0)
aj.Font=Enum.Font.Arial
aj.Text=ag.Title
aj.TextColor3=Color3.fromRGB(255,255,255)
aj.TextSize=15.000
aj.TextXAlignment=Enum.TextXAlignment.Left

ak.Name="Desc"
ak.Parent=ai
ak.BackgroundColor3=Color3.fromRGB(255,255,255)
ak.BackgroundTransparency=1.000
ak.BorderColor3=Color3.fromRGB(0,0,0)
ak.BorderSizePixel=0
ak.Position=UDim2.new(0,15,0,26)
ak.Size=UDim2.new(1,-80,1,-26)
ak.Font=Enum.Font.Arial
ak.Text=(ag.Description or"")
ak.TextColor3=Color3.fromRGB(144,144,144)
ak.TextSize=13.000
ak.TextWrapped=true
ak.TextXAlignment=Enum.TextXAlignment.Left
ak.TextYAlignment=Enum.TextYAlignment.Top
if ag.Description~=nil and ag.Description~=""then
a.Stepped:Connect(function()
aj.Size=UDim2.new(1,-80,0,18)
aj.Position=UDim2.new(0,15,0,8)
ah.Size=UDim2.new(1,0,0,math.max(ak.TextBounds.Y+15,50))
end)
end

al.Name="CheckToggle"
al.Parent=ah
al.AnchorPoint=Vector2.new(0,0.5)
al.BackgroundColor3=Color3.fromRGB(255,255,255)
al.BackgroundTransparency=0.850
al.BorderColor3=Color3.fromRGB(0,0,0)
al.BorderSizePixel=0
al.Position=UDim2.new(1,-55,0.5,0)
al.Size=UDim2.new(0,45,0,26)

am.CornerRadius=UDim.new(1,0)
am.Parent=al

an.Name="Check"
an.Parent=al
an.AnchorPoint=Vector2.new(0,0.5)
an.BackgroundColor3=Color3.fromRGB(255,255,255)
an.BorderColor3=Color3.fromRGB(0,0,0)
an.BorderSizePixel=0
an.Position=UDim2.new(0,3,0.5,0)
an.Size=UDim2.new(0,20,0,20)
a:MouseEvent(ah,function()
ai.ImageTransparency=0.930
end,function()
ai.ImageTransparency=0.950
end)
ao.CornerRadius=UDim.new(1,0)
ao.Parent=an
function ap.SetValue(aq,ar)
if ar then
a:Tween(al,0.2,"Quad","BackgroundTransparency",0.75)
a:Tween(an,0.2,"Quad","Position",UDim2.new(0,22,0.5,0))
else
a:Tween(al,0.2,"Quad","BackgroundTransparency",0.85)
a:Tween(an,0.2,"Quad","Position",UDim2.new(0,3,0.5,0))
end
ag.Active=ar
ag.Callback(ag.Active)
end
ap:SetValue(ag.Active)
ai.Activated:Connect(function()
ap:SetValue(not ag.Active)
end)
return ap
end
function ae.AddButton(af,ag)
ag=ag or{}
ag.Title=ag.Title
ag.Description=ag.Description or nil
ag.Callback=ag.Callback or function()end
local ah=Instance.new"Frame"
local ai=Instance.new"ImageButton"
local aj=Instance.new"TextLabel"
local ak=Instance.new"TextLabel"
local al=Instance.new"ImageLabel"
local am={}
ah.Name="Button"
ah.Parent=ab
ah.BackgroundColor3=Color3.fromRGB(255,255,255)
ah.BackgroundTransparency=1.000
ah.BorderColor3=Color3.fromRGB(0,0,0)
ah.BorderSizePixel=0
ah.Size=UDim2.new(1,0,0,50)
ai.Name="Background"
ai.Parent=ah
ai.BackgroundColor3=Color3.fromRGB(255,255,255)
ai.BackgroundTransparency=1.000
ai.BorderColor3=Color3.fromRGB(0,0,0)
ai.BorderSizePixel=0
ai.Size=UDim2.new(1,0,1,0)
ai.Image="rbxassetid://80999662900595"
ai.ImageTransparency=0.950
ai.ScaleType=Enum.ScaleType.Slice
ai.SliceCenter=Rect.new(256,256,256,256)
ai.SliceScale=0.044
aj.Name="Title"
aj.Parent=ai
aj.BackgroundColor3=Color3.fromRGB(255,255,255)
aj.BackgroundTransparency=1.000
aj.BorderColor3=Color3.fromRGB(0,0,0)
aj.BorderSizePixel=0
aj.Position=UDim2.new(0,15,0,0)
aj.Size=UDim2.new(1,-80,1,0)
aj.Font=Enum.Font.Arial
aj.Text=ag.Title
aj.TextColor3=Color3.fromRGB(255,255,255)
aj.TextSize=15.000
aj.TextXAlignment=Enum.TextXAlignment.Left
ak.Name="Desc"
ak.Parent=ai
ak.BackgroundColor3=Color3.fromRGB(255,255,255)
ak.BackgroundTransparency=1.000
ak.BorderColor3=Color3.fromRGB(0,0,0)
ak.BorderSizePixel=0
ak.Position=UDim2.new(0,15,0,26)
ak.Size=UDim2.new(1,-80,1,-26)
ak.Font=Enum.Font.Arial
ak.Text=ag.Description
ak.TextColor3=Color3.fromRGB(144,144,144)
ak.TextSize=13.000
ak.TextWrapped=true
ak.TextXAlignment=Enum.TextXAlignment.Left
ak.TextYAlignment=Enum.TextYAlignment.Top
if ag.Description~=nil and ag.Description~=""then
a.Stepped:Connect(function()
aj.Size=UDim2.new(1,-80,0,18)
aj.Position=UDim2.new(0,15,0,8)
ah.Size=UDim2.new(1,0,0,math.max(ak.TextBounds.Y+15,50))
end)
end
al.Name="Icon"
al.Parent=ah
al.AnchorPoint=Vector2.new(0,0.5)
al.BackgroundColor3=Color3.fromRGB(255,255,255)
al.BackgroundTransparency=1.000
al.BorderColor3=Color3.fromRGB(0,0,0)
al.BorderSizePixel=0
al.Position=UDim2.new(1,-40,0.5,0)
al.Size=UDim2.new(0,25,0,25)
al.Image="rbxassetid://85905776508942"
a:MouseEvent(ah,function()
ai.ImageTransparency=0.930
end,function()
ai.ImageTransparency=0.950
end)
function am.SetDesc(an,ao)
ak.Text=ao
end
ai.Activated:Connect(function()
ai.ImageTransparency=0.980
a:Tween(ai,0.15,"Quad","ImageTransparency",0.950)
ag.Callback()
end)
return am
end
function ae.AddSlider(af,ag)
ag=ag or{}
ag.Title=ag.Title
ag.Description=ag.Description or nil
ag.Max=ag.Max
ag.Min=ag.Min
ag.Default=ag.Default or ag.Min
ag.Callback=ag.Callback or function()end
local ah=Instance.new"Frame"
local ai=Instance.new"ImageLabel"
local aj=Instance.new"TextLabel"
local ak=Instance.new"TextLabel"
local al=Instance.new"ImageLabel"
local am=Instance.new"ImageLabel"
local an=Instance.new"ImageLabel"
local ao=Instance.new"ImageLabel"
local ap=Instance.new"TextLabel"
local aq={Value=ag.Default}
ah.Name="Slider"
ah.Parent=ab
ah.BackgroundColor3=Color3.fromRGB(255,255,255)
ah.BackgroundTransparency=1.000
ah.BorderColor3=Color3.fromRGB(0,0,0)
ah.BorderSizePixel=0
ah.Size=UDim2.new(1,0,0,65)

ai.Name="Background"
ai.Parent=ah
ai.Active=true
ai.BackgroundColor3=Color3.fromRGB(255,255,255)
ai.BackgroundTransparency=1.000
ai.BorderColor3=Color3.fromRGB(0,0,0)
ai.BorderSizePixel=0
ai.Selectable=true
ai.Size=UDim2.new(1,0,1,0)
ai.Image="rbxassetid://80999662900595"
ai.ImageTransparency=0.950
ai.ScaleType=Enum.ScaleType.Slice
ai.SliceCenter=Rect.new(256,256,256,256)
ai.SliceScale=0.055

aj.Name="Title"
aj.Parent=ai
aj.BackgroundColor3=Color3.fromRGB(255,255,255)
aj.BackgroundTransparency=1.000
aj.BorderColor3=Color3.fromRGB(0,0,0)
aj.BorderSizePixel=0
aj.Position=UDim2.new(0,15,0,8)
aj.Size=UDim2.new(1,-80,0,18)
aj.Font=Enum.Font.Arial
aj.Text=ag.Title
aj.TextColor3=Color3.fromRGB(255,255,255)
aj.TextSize=15.000
aj.TextXAlignment=Enum.TextXAlignment.Left

ak.Name="Desc"
ak.Parent=ai
ak.BackgroundColor3=Color3.fromRGB(255,255,255)
ak.BackgroundTransparency=1.000
ak.BorderColor3=Color3.fromRGB(0,0,0)
ak.BorderSizePixel=0
ak.Position=UDim2.new(0,15,0,26)
ak.Size=UDim2.new(1,-80,1,-60)
ak.Font=Enum.Font.Arial
ak.Text=(ag.Description or"")
ak.TextColor3=Color3.fromRGB(144,144,144)
ak.TextSize=13.000
ak.TextWrapped=true
ak.TextXAlignment=Enum.TextXAlignment.Left
ak.TextYAlignment=Enum.TextYAlignment.Top
if ag.Description~=nil and ag.Description~=""then
a.Stepped:Connect(function()
ah.Size=UDim2.new(1,0,0,math.max(ak.TextBounds.Y+35,75))
end)
end
al.Name="UIStroke"
al.Parent=ai
al.AnchorPoint=Vector2.new(0,0.5)
al.BackgroundColor3=Color3.fromRGB(255,255,255)
al.BackgroundTransparency=1.000
al.BorderColor3=Color3.fromRGB(0,0,0)
al.BorderSizePixel=0
al.Position=UDim2.new(0,15,0.75,0)
al.Size=UDim2.new(1,-100,0,7)
al.Image="rbxassetid://117788349049947"
al.ImageTransparency=0.850
al.ScaleType=Enum.ScaleType.Slice
al.SliceCenter=Rect.new(256,256,256,256)
al.SliceScale=0.033

am.Name="SliderDraggable"
am.Parent=ai
am.AnchorPoint=Vector2.new(0,0.5)
am.BackgroundColor3=Color3.fromRGB(255,255,255)
am.BackgroundTransparency=1.000
am.BorderColor3=Color3.fromRGB(0,0,0)
am.BorderSizePixel=0
am.Position=UDim2.new(0,15,0.75,0)
am.Size=UDim2.new(1,-100,0,7)
am.Image="rbxassetid://80999662900595"
am.ImageTransparency=0.950
am.ScaleType=Enum.ScaleType.Slice
am.SliceCenter=Rect.new(256,256,256,256)
am.SliceScale=0.055

an.Name="Draggable"
an.Parent=am
an.BackgroundColor3=Color3.fromRGB(255,255,255)
an.BackgroundTransparency=1.000
an.BorderColor3=Color3.fromRGB(0,0,0)
an.BorderSizePixel=0
an.Size=UDim2.new(0,100,1,0)
an.Image="rbxassetid://80999662900595"
an.ImageTransparency=0.500
an.ScaleType=Enum.ScaleType.Slice
an.SliceCenter=Rect.new(256,256,256,256)
an.SliceScale=0.055

ao.Name="Circle"
ao.Parent=an
ao.BackgroundColor3=Color3.fromRGB(255,255,255)
ao.BackgroundTransparency=1.000
ao.BorderColor3=Color3.fromRGB(0,0,0)
ao.BorderSizePixel=0
ao.Position=UDim2.new(1,-8,0,-4)
ao.Size=UDim2.new(0,15,0,15)
ao.Image="rbxassetid://80999662900595"
ao.ImageColor3=Color3.fromRGB(188,188,188)
ao.ScaleType=Enum.ScaleType.Slice
ao.SliceCenter=Rect.new(256,256,256,256)
ao.SliceScale=0.055

ap.Parent=am
ap.AnchorPoint=Vector2.new(0,0.5)
ap.BackgroundColor3=Color3.fromRGB(255,255,255)
ap.BackgroundTransparency=1.000
ap.BorderColor3=Color3.fromRGB(0,0,0)
ap.BorderSizePixel=0
ap.Position=UDim2.new(1,6,0.300000012,0)
ap.Size=UDim2.new(0,50,0,30)
ap.Font=Enum.Font.Arial
ap.Text=tostring(ag.Default)
ap.TextColor3=Color3.fromRGB(255,255,255)
ap.TextSize=15.000
ap.TextTransparency=0.400
local ar=false
local function Round(as,at)
local au=math.floor(as/at+(math.sign(as)*0.5))*at
if au<0 then au=au+at end
return au
end
function aq.Set(as,at)
at=math.clamp(Round(at,1),ag.Min,ag.Max)
aq.Value=at
ap.Text=tostring(at)
ag.Callback(aq.Value)
a:Tween(
an,
0.2,"Quad",
"Size",UDim2.fromScale((at-ag.Min)/(ag.Max-ag.Min),1)
)
end
am.InputBegan:Connect(function(as)
if as.UserInputType==Enum.UserInputType.Touch or as.UserInputType==Enum.UserInputType.MouseButton1 then
ar=true
end
end)
game:GetService"UserInputService".InputEnded:Connect(function(as)
if as.UserInputType==Enum.UserInputType.Touch or as.UserInputType==Enum.UserInputType.MouseButton1 then
ar=false
end
end)
game:GetService"UserInputService".InputChanged:Connect(function(as)
if ar then
local at=math.clamp((as.Position.X-am.AbsolutePosition.X)/am.AbsoluteSize.X,0,1)
aq:Set(ag.Min+((ag.Max-ag.Min)*at))
end
end)
aq:Set(ag.Default)
return aq
end
function ae.AddDropdown(af,ag)
ag=ag or{}
ag.Title=ag.Title
ag.Description=ag.Description or""
ag.Values=ag.Values or{}
ag.Default=ag.Default or(ag.Multi and{}or"")
ag.Multi=ag.Multi or false
ag.Callback=ag.Callback or function()end
local ah=Instance.new"Frame"
local ai=Instance.new"ImageLabel"
local aj=Instance.new"TextLabel"
local ak=Instance.new"TextLabel"
local al=Instance.new"ImageButton"
local am=Instance.new"Frame"
local an=Instance.new"TextLabel"
local ao=Instance.new"ImageLabel"
local ap=Instance.new"ImageLabel"
local aq=Instance.new"ImageLabel"
local ar=Instance.new"ScrollingFrame"
local as=Instance.new"ImageLabel"
local at=Instance.new"Frame"
local au=Instance.new"UIListLayout"
local av=Instance.new"UIPadding"
local aw={Select=ag.Default}
ah.Name="Dropdown"
ah.Parent=ab
ah.BackgroundColor3=Color3.fromRGB(255,255,255)
ah.BackgroundTransparency=1.000
ah.BorderColor3=Color3.fromRGB(0,0,0)
ah.BorderSizePixel=0
ah.Size=UDim2.new(1,0,0,90)

ai.Name="Background"
ai.Parent=ah
ai.Active=true
ai.BackgroundColor3=Color3.fromRGB(255,255,255)
ai.BackgroundTransparency=1.000
ai.BorderColor3=Color3.fromRGB(0,0,0)
ai.BorderSizePixel=0
ai.Selectable=true
ai.Size=UDim2.new(1,0,1,0)
ai.Image="rbxassetid://80999662900595"
ai.ImageTransparency=0.950
ai.ScaleType=Enum.ScaleType.Slice
ai.SliceCenter=Rect.new(256,256,256,256)
ai.SliceScale=0.055

aj.Name="Title"
aj.Parent=ai
aj.BackgroundColor3=Color3.fromRGB(255,255,255)
aj.BackgroundTransparency=1.000
aj.BorderColor3=Color3.fromRGB(0,0,0)
aj.BorderSizePixel=0
aj.Position=UDim2.new(0,15,0,8)
aj.Size=UDim2.new(1,-80,0,18)
aj.Font=Enum.Font.Arial
aj.Text=ag.Title
aj.TextColor3=Color3.fromRGB(255,255,255)
aj.TextSize=15.000
aj.TextXAlignment=Enum.TextXAlignment.Left

ak.Name="Desc"
ak.Parent=ai
ak.BackgroundColor3=Color3.fromRGB(255,255,255)
ak.BackgroundTransparency=1.000
ak.BorderColor3=Color3.fromRGB(0,0,0)
ak.BorderSizePixel=0
ak.Position=UDim2.new(0,15,0,26)
ak.Size=UDim2.new(1,-80,1,-70)
ak.Font=Enum.Font.Arial
ak.Text=ag.Description
ak.TextColor3=Color3.fromRGB(144,144,144)
ak.TextSize=13.000
ak.TextWrapped=true
ak.TextXAlignment=Enum.TextXAlignment.Left
ak.TextYAlignment=Enum.TextYAlignment.Top
if ag.Description~=nil and ag.Description~=""then
a.Stepped:Connect(function()
ah.Size=UDim2.new(1,0,0,math.max(ak.TextBounds.Y+50,85))
end)
end
al.Name="Click"
al.Parent=ai
al.AnchorPoint=Vector2.new(0,0.5)
al.BackgroundColor3=Color3.fromRGB(255,255,255)
al.BackgroundTransparency=1.000
al.BorderColor3=Color3.fromRGB(0,0,0)
al.BorderSizePixel=0
al.Position=UDim2.new(0,10,0.699999988,0)
al.Size=UDim2.new(1,-20,0,35)
al.Image="rbxassetid://80999662900595"
al.ImageTransparency=0.940
al.ScaleType=Enum.ScaleType.Slice
al.SliceCenter=Rect.new(256,256,256,256)
al.SliceScale=0.033

am.Parent=al
am.BackgroundColor3=Color3.fromRGB(255,255,255)
am.BackgroundTransparency=1.000
am.BorderColor3=Color3.fromRGB(0,0,0)
am.BorderSizePixel=0
am.Size=UDim2.new(1,0,1,0)

an.Name="Select"
an.Parent=am
an.BackgroundColor3=Color3.fromRGB(255,255,255)
an.BackgroundTransparency=1.000
an.BorderColor3=Color3.fromRGB(0,0,0)
an.BorderSizePixel=0
an.Position=UDim2.new(0,10,0,0)
an.Size=UDim2.new(1,-60,1,0)
an.Font=Enum.Font.Arial
an.Text=""
an.TextColor3=Color3.fromRGB(255,255,255)
an.TextSize=15.000
an.TextXAlignment=Enum.TextXAlignment.Left
an.TextTruncate=Enum.TextTruncate.AtEnd

ao.Name="Icon"
ao.Parent=am
ao.AnchorPoint=Vector2.new(0,0.5)
ao.BackgroundColor3=Color3.fromRGB(255,255,255)
ao.BackgroundTransparency=1.000
ao.BorderColor3=Color3.fromRGB(0,0,0)
ao.BorderSizePixel=0
ao.Position=UDim2.new(1,-30,0.5,0)
ao.Size=UDim2.new(0,20,0,20)
ao.Image="rbxassetid://86169870187835"
ao.ImageTransparency=0.100

ap.Name="UIStroke"
ap.Parent=ai
ap.AnchorPoint=Vector2.new(0,0.5)
ap.BackgroundColor3=Color3.fromRGB(255,255,255)
ap.BackgroundTransparency=1.000
ap.BorderColor3=Color3.fromRGB(0,0,0)
ap.BorderSizePixel=0
ap.Position=UDim2.new(0,10,0.699999988,0)
ap.Size=UDim2.new(1,-20,0,35)
ap.Image="rbxassetid://117788349049947"
ap.ImageTransparency=0.850
ap.ScaleType=Enum.ScaleType.Slice
ap.SliceCenter=Rect.new(256,256,256,256)
ap.SliceScale=0.033

aq.Name="Dropdown1"
aq.Parent=d
aq.BackgroundColor3=Color3.fromRGB(255,255,255)
aq.BackgroundTransparency=1.000
aq.BorderColor3=Color3.fromRGB(0,0,0)
aq.BorderSizePixel=0
aq.Position=UDim2.new(0,638,0,396)
aq.Size=UDim2.new(0,341,0,150)
aq.Image="rbxassetid://80999662900595"
aq.ImageColor3=Color3.fromRGB(50,50,50)
aq.ScaleType=Enum.ScaleType.Slice
aq.SliceCenter=Rect.new(256,256,256,256)
aq.SliceScale=0.033
aq.Visible=false

as.Name="UIStroke"
as.Parent=aq
as.AnchorPoint=Vector2.new(0.5,0.5)
as.BackgroundColor3=Color3.fromRGB(255,255,255)
as.BackgroundTransparency=1.000
as.BorderColor3=Color3.fromRGB(0,0,0)
as.BorderSizePixel=0
as.Position=UDim2.new(0.5,0,0.5,0)
as.Size=UDim2.new(1,0,1,0)
as.Image="rbxassetid://117788349049947"
as.ImageTransparency=0.730
as.ScaleType=Enum.ScaleType.Slice
as.SliceCenter=Rect.new(256,256,256,256)
as.SliceScale=0.033

at.Parent=aq
at.BackgroundColor3=Color3.fromRGB(255,255,255)
at.BackgroundTransparency=1.000
at.BorderColor3=Color3.fromRGB(0,0,0)
at.BorderSizePixel=0
at.Size=UDim2.new(1,0,1,0)

ar.Name="nn"
ar.Parent=at
ar.BackgroundColor3=Color3.fromRGB(255,255,255)
ar.BackgroundTransparency=1.000
ar.BorderColor3=Color3.fromRGB(0,0,0)
ar.BorderSizePixel=0
ar.Size=UDim2.new(1,0,1,0)
ar.ScrollBarThickness=0
ar.ScrollingEnabled=false

au.Parent=ar
au.SortOrder=Enum.SortOrder.LayoutOrder
au.Padding=UDim.new(0,4)

av.Parent=ar
av.PaddingBottom=UDim.new(0,7)
av.PaddingLeft=UDim.new(0,7)
av.PaddingRight=UDim.new(0,7)
av.PaddingTop=UDim.new(0,7)

au:GetPropertyChangedSignal"AbsoluteContentSize":Connect(function()
ar.CanvasSize=UDim2.new(0,0,0,au.AbsoluteContentSize.Y+20)
ar.ScrollingEnabled=math.min(au.AbsoluteContentSize.Y+20,300)>=300
end)

al.Activated:Connect(function()
x.ScrollingEnabled=false
H.Visible=true
ab.ScrollingEnabled=false
aq.Position=UDim2.new(0,al.AbsolutePosition.X,0,al.AbsolutePosition.Y)
aq.Size=UDim2.new(0,al.AbsoluteSize.X,0,math.min(au.AbsoluteContentSize.Y+20,300)-30)
aq.Visible=true
a:Tween(aq,0.3,"Quad","Size",UDim2.new(0,al.AbsoluteSize.X,0,math.min(au.AbsoluteContentSize.Y+20,300)))
end)

H.Activated:Connect(function()
a:Tween(aq,0.3,"Quad","Size",UDim2.new(0,al.AbsoluteSize.X,0,math.min(au.AbsoluteContentSize.Y+20,300)))
task.wait(0.05)
aq.Visible=false
x.ScrollingEnabled=true
H.Visible=false
ab.ScrollingEnabled=true
end)

function aw.Set(ax,ay)
aw.Select=ay or aw.Select
for az,aA in next,ar:GetChildren()do
if aA:IsA"ImageButton"and table.find(aw.Select,aA.TextLabel.Text)then
a:Tween(aA,0.2,"Quad","ImageTransparency",0.890)
a:Tween(aA.TextLabel,0.2,"Quad","TextTransparency",0)
elseif aA:IsA"ImageButton"and not table.find(aw.Select,aA.TextLabel.Text)then
a:Tween(aA,0.2,"Quad","ImageTransparency",1.000)
a:Tween(aA.TextLabel,0.2,"Quad","TextTransparency",0.500)
end
end
if#aw.Select==0 then
an.Text=""
else
an.Text=table.concat(aw.Select,",")
end
if ag.Multi then
ag.Callback(aw.Select)
else
ag.Callback(table.concat(aw.Select,","))
end
end

function aw.Add(ax,ay)
local az=Instance.new"ImageButton"
local aA=Instance.new"TextLabel"
az.Name="Option 2"
az.Parent=ar
az.BackgroundColor3=Color3.fromRGB(255,255,255)
az.BackgroundTransparency=1.000
az.BorderColor3=Color3.fromRGB(0,0,0)
az.BorderSizePixel=0
az.Size=UDim2.new(1,0,0,40)
az.Image="rbxassetid://80999662900595"
az.ImageTransparency=1.000
az.ScaleType=Enum.ScaleType.Slice
az.SliceCenter=Rect.new(256,256,256,256)
az.SliceScale=0.033

aA.Parent=az
aA.BackgroundColor3=Color3.fromRGB(255,255,255)
aA.BackgroundTransparency=1.000
aA.BorderColor3=Color3.fromRGB(0,0,0)
aA.BorderSizePixel=0
aA.Position=UDim2.new(0,10,0,0)
aA.Size=UDim2.new(1,-10,1,0)
aA.Font=Enum.Font.Arial
aA.Text=ay
aA.TextColor3=Color3.fromRGB(255,255,255)
aA.TextSize=14.000
aA.TextTransparency=0.500
aA.TextXAlignment=Enum.TextXAlignment.Left
az.Activated:Connect(function()
if ag.Multi then
if aA.TextTransparency>=0.500 then
table.insert(aw.Select,aA.Text)
aw:Set(aw.Select)
else
for aB,aC in next,aw.Select do
if aC==aA.Text then
table.remove(aw.Select,aB)
end
end
end
aw:Set(aw.Select)
else
aw.Select={aA.Text}
aw:Set(aw.Select)
end
end)
end

function aw.Refresh(ax,ay)
for az,aA in next,ar:GetChildren()do
if aA:IsA"ImageLabel"then
aA:Destroy()
end
end
for az,aA in next,ay do
ax:Add(aA)
end
end

aw:Refresh(ag.Values)
aw:Set((typeof(aw.Select)=="string"and{aw.Select}or aw.Select))
return aw
end
function ae.AddInput(af,ag)
ag=ag or{}
ag.Title=ag.Title
ag.Description=ag.Description or""
ag.PlaceHolder=ag.PlaceHolder or""
ag.Default=ag.Default or""
ag.Callback=ag.Callback or function()end
local ah=Instance.new"Frame"
local ai=Instance.new"ImageLabel"
local aj=Instance.new"TextLabel"
local ak=Instance.new"TextLabel"
local al=Instance.new"ImageLabel"
local am=Instance.new"ImageLabel"
local an=Instance.new"Frame"
local ao=Instance.new"ImageLabel"
local ap=Instance.new"TextBox"
ah.Name="Input"
ah.Parent=ab
ah.BackgroundColor3=Color3.fromRGB(255,255,255)
ah.BackgroundTransparency=1.000
ah.BorderColor3=Color3.fromRGB(0,0,0)
ah.BorderSizePixel=0
ah.Size=UDim2.new(1,0,0,95)

ai.Name="Background"
ai.Parent=ah
ai.Active=true
ai.BackgroundColor3=Color3.fromRGB(255,255,255)
ai.BackgroundTransparency=1.000
ai.BorderColor3=Color3.fromRGB(0,0,0)
ai.BorderSizePixel=0
ai.Selectable=true
ai.Size=UDim2.new(1,0,1,0)
ai.Image="rbxassetid://80999662900595"
ai.ImageTransparency=0.950
ai.ScaleType=Enum.ScaleType.Slice
ai.SliceCenter=Rect.new(256,256,256,256)
ai.SliceScale=0.055

aj.Name="Title"
aj.Parent=ai
aj.BackgroundColor3=Color3.fromRGB(255,255,255)
aj.BackgroundTransparency=1.000
aj.BorderColor3=Color3.fromRGB(0,0,0)
aj.BorderSizePixel=0
aj.Position=UDim2.new(0,15,0,8)
aj.Size=UDim2.new(1,-80,0,18)
aj.Font=Enum.Font.Arial
aj.Text=ag.Title
aj.TextColor3=Color3.fromRGB(255,255,255)
aj.TextSize=15.000
aj.TextXAlignment=Enum.TextXAlignment.Left

ak.Name="Desc"
ak.Parent=ai
ak.BackgroundColor3=Color3.fromRGB(255,255,255)
ak.BackgroundTransparency=1.000
ak.BorderColor3=Color3.fromRGB(0,0,0)
ak.BorderSizePixel=0
ak.Position=UDim2.new(0,15,0,26)
ak.Size=UDim2.new(1,-80,1,-60)
ak.Font=Enum.Font.Arial
ak.Text=ag.Description
ak.TextColor3=Color3.fromRGB(144,144,144)
ak.TextSize=13.000
ak.TextWrapped=true
ak.TextXAlignment=Enum.TextXAlignment.Left
ak.TextYAlignment=Enum.TextYAlignment.Top
if ag.Description~=nil and ag.Description~=""then
a.Stepped:Connect(function()
ah.Size=UDim2.new(1,0,0,math.max(ak.TextBounds.Y+50,100))
end)
end
al.Name="UIStroke"
al.Parent=ai
al.AnchorPoint=Vector2.new(0,0.5)
al.BackgroundColor3=Color3.fromRGB(255,255,255)
al.BackgroundTransparency=1.000
al.BorderColor3=Color3.fromRGB(0,0,0)
al.BorderSizePixel=0
al.Position=UDim2.new(0,10,0.699999988,0)
al.Size=UDim2.new(1,-20,0,35)
al.Image="rbxassetid://117788349049947"
al.ImageTransparency=0.850
al.ScaleType=Enum.ScaleType.Slice
al.SliceCenter=Rect.new(256,256,256,256)
al.SliceScale=0.033

am.Name="Click"
am.Parent=ai
am.Active=true
am.AnchorPoint=Vector2.new(0,0.5)
am.BackgroundColor3=Color3.fromRGB(255,255,255)
am.BackgroundTransparency=1.000
am.BorderColor3=Color3.fromRGB(0,0,0)
am.BorderSizePixel=0
am.Position=UDim2.new(0,10,0.699999988,0)
am.Selectable=true
am.Size=UDim2.new(1,-20,0,35)
am.Image="rbxassetid://126409600467363"
am.ImageTransparency=0.940
am.ScaleType=Enum.ScaleType.Slice
am.SliceCenter=Rect.new(256,256,256,256)
am.SliceScale=0.033

an.Parent=am
an.BackgroundColor3=Color3.fromRGB(255,255,255)
an.BackgroundTransparency=1.000
an.BorderColor3=Color3.fromRGB(0,0,0)
an.BorderSizePixel=0
an.Size=UDim2.new(1,0,1,0)

ao.Name="Icon"
ao.Parent=an
ao.AnchorPoint=Vector2.new(0,0.5)
ao.BackgroundColor3=Color3.fromRGB(255,255,255)
ao.BackgroundTransparency=1.000
ao.BorderColor3=Color3.fromRGB(0,0,0)
ao.BorderSizePixel=0
ao.Position=UDim2.new(1,-30,0.5,0)
ao.Size=UDim2.new(0,20,0,20)
ao.Image="rbxassetid://126409600467363"
ao.ImageTransparency=0.100

ap.Name="Select"
ap.Parent=an
ap.BackgroundColor3=Color3.fromRGB(255,255,255)
ap.BackgroundTransparency=1.000
ap.BorderColor3=Color3.fromRGB(0,0,0)
ap.BorderSizePixel=0
ap.ClipsDescendants=true
ap.Position=UDim2.new(0,10,0,0)
ap.Selectable=false
ap.Size=UDim2.new(1,-50,1,0)
ap.Font=Enum.Font.Arial
ap.PlaceholderText=ag.PlaceHolder
ap.Text=ag.Default
ap.TextColor3=Color3.fromRGB(255,255,255)
ap.TextSize=15.000
ap.TextXAlignment=Enum.TextXAlignment.Left
ap.FocusLost:Connect(function()
ag.Callback(ap.Text)
end)
end
function ae.AddParagraph(af,ag)
ag=ag or{}
ag.Title=ag.Title
ag.Content=ag.Content or""
ag.Icon=ag.Icon or""
ag.Theme=ag.Theme or"Dark"
local ah=Instance.new"Frame"
local ai=Instance.new"ImageLabel"
local aj=Instance.new"TextLabel"
local ak=Instance.new"TextLabel"
local al=Instance.new"ImageLabel"
local am={}
ah.Name=ag.Theme
ah.Parent=ab
ah.BackgroundColor3=Color3.fromRGB(255,255,255)
ah.BackgroundTransparency=1.000
ah.BorderColor3=Color3.fromRGB(0,0,0)
ah.BorderSizePixel=0
ah.Size=UDim2.new(1,0,0,50)

ai.Name="Background"
ai.Parent=ah
ai.Active=true
ai.BackgroundColor3=Color3.fromRGB(255,255,255)
ai.BackgroundTransparency=1.000
ai.BorderColor3=Color3.fromRGB(0,0,0)
ai.BorderSizePixel=0
ai.Selectable=true
ai.Size=UDim2.new(1,0,1,0)
ai.Image="rbxassetid://80999662900595"
ai.ImageTransparency=0.950
ai.ScaleType=Enum.ScaleType.Slice
ai.SliceCenter=Rect.new(256,256,256,256)
ai.SliceScale=0.055

aj.Name="Title"
aj.Parent=ai
aj.BackgroundColor3=Color3.fromRGB(255,255,255)
aj.BackgroundTransparency=1.000
aj.BorderColor3=Color3.fromRGB(0,0,0)
aj.BorderSizePixel=0
aj.Position=UDim2.new(0,15,0,0)
aj.Size=UDim2.new(1,-80,1,0)
aj.Font=Enum.Font.Arial
aj.Text=ag.Title
aj.TextColor3=Color3.fromRGB(255,255,255)
aj.TextSize=15.000
aj.TextXAlignment=Enum.TextXAlignment.Left

ak.Name="Desc"
ak.Parent=ai
ak.BackgroundColor3=Color3.fromRGB(255,255,255)
ak.BackgroundTransparency=1.000
ak.BorderColor3=Color3.fromRGB(0,0,0)
ak.BorderSizePixel=0
ak.Position=UDim2.new(0,15,0,26)
ak.Size=UDim2.new(1,-80,1,-26)
ak.Font=Enum.Font.Arial
ak.Text=ag.Content
ak.TextColor3=Color3.fromRGB(144,144,144)
ak.TextSize=13.000
ak.TextWrapped=true
ak.TextXAlignment=Enum.TextXAlignment.Left
ak.TextYAlignment=Enum.TextYAlignment.Top
if ak~=""then
aj.Position=UDim2.new(0,15,0,8)
aj.Size=UDim2.new(1,-80,0,18)
a.Stepped:Connect(function()
ah.Size=UDim2.new(1,0,0,math.max(ak.TextBounds.Y+23,50))
end)
end
al.Name="Icon"
al.Parent=ai
al.AnchorPoint=Vector2.new(0,0.5)
al.BackgroundColor3=Color3.fromRGB(255,255,255)
al.BackgroundTransparency=1.000
al.BorderColor3=Color3.fromRGB(0,0,0)
al.BorderSizePixel=0
al.Position=UDim2.new(1,-40,0.5,0)
al.Size=UDim2.new(0,25,0,25)
al.Image=ag.Icon

function am.SetTitle(an,ao)
aj.Text=ao
end
function am.SetDesc(an,ao)
ak.Text=ao
end
function am.SetIcon(an,ao)
al.Image=ao
end
function am.SetTheme(an,ao)
if ao=="White"then
ai.ImageTransparency=0.1
al.ImageColor3=Color3.fromRGB(40,40,40)
aj.TextColor3=Color3.fromRGB(40,40,40)
else
ai.ImageTransparency=0.95
al.ImageColor3=Color3.fromRGB(255,255,255)
aj.TextColor3=Color3.fromRGB(255,255,255)
end
end
am:SetTheme(ag.Theme)
return am
end
function ae.AddSeperator(af,ag,ah)
local ai=Instance.new"Frame"
local aj=Instance.new"ImageLabel"
local ak=Instance.new"UIPadding"
local al=Instance.new"TextLabel"
ai.Name="Seperator"
ai.Parent=ab
ai.BackgroundColor3=Color3.fromRGB(255,255,255)
ai.BackgroundTransparency=1.000
ai.BorderColor3=Color3.fromRGB(0,0,0)
ai.BorderSizePixel=0
ai.Size=UDim2.new(1,0,0,40)

aj.Parent=ai
aj.AnchorPoint=Vector2.new(0,0.5)
aj.BackgroundColor3=Color3.fromRGB(255,255,255)
aj.BackgroundTransparency=1.000
aj.BorderColor3=Color3.fromRGB(0,0,0)
aj.BorderSizePixel=0
aj.Position=UDim2.new(0,0,0.5,0)
aj.Size=UDim2.new(0,25,0,25)
aj.Image=(ah or"")

ak.Parent=ai
ak.PaddingLeft=UDim.new(0,7)

al.Parent=ai
al.AnchorPoint=Vector2.new(0,0.5)
al.BackgroundColor3=Color3.fromRGB(255,255,255)
al.BackgroundTransparency=1.000
al.BorderColor3=Color3.fromRGB(0,0,0)
al.BorderSizePixel=0
al.Position=UDim2.new(0,35,0.5,0)
al.Size=UDim2.new(1,-50,1,0)
al.Font=Enum.Font.Arial
al.Text=ag
al.TextColor3=Color3.fromRGB(255,255,255)
al.TextSize=14.000
al.TextXAlignment=Enum.TextXAlignment.Left
if not ah then
al.TextSize=17
al.Position=UDim2.new(0,0,0,0)
aj.Visible=false
end
end
return ae
end
return T
end
return L
end
return a
