local a=game:GetService"UserInputService"
local b=game:GetService"TweenService"
local c=game:GetService"Players".LocalPlayer
local d=c:GetMouse()
local e=c.PlayerGui
local function MakeDraggable(f,g)
local function CustomPos(h,i)
local j
local k
local l
local m

local function UpdatePos(n)
local o=n.Position-l
local p=UDim2.new(m.X.Scale,m.X.Offset+o.X,m.Y.Scale,m.Y.Offset+o.Y)
local q=b:Create(i,TweenInfo.new(0.2),{Position=p})
q:Play()
end

h.InputBegan:Connect(function(n)
if n.UserInputType==Enum.UserInputType.MouseButton1 or n.UserInputType==Enum.UserInputType.Touch then
j=true
l=n.Position
m=i.Position

n.Changed:Connect(function()
if n.UserInputState==Enum.UserInputState.End then
j=false
end
end)
end
end)

h.InputChanged:Connect(function(n)
if n.UserInputType==Enum.UserInputType.MouseMovement or n.UserInputType==Enum.UserInputType.Touch then
k=n
end
end)

a.InputChanged:Connect(function(n)
if n==k and j then
UpdatePos(n)
end
end)
end
local function CustomSize(h)
local i=false
local j
local k
local l
local m=h.Size.X.Offset
local n=h.Size.Y.Offset
local o=Instance.new"Frame";
o.AnchorPoint=Vector2.new(1,1)
o.BackgroundColor3=Color3.fromRGB(255,255,255)
o.BackgroundTransparency=0.9990000128746033
o.BorderColor3=Color3.fromRGB(0,0,0)
o.BorderSizePixel=0
o.Position=UDim2.new(1,20,1,20)
o.Size=UDim2.new(0,40,0,40)
o.Name="changesizeobject"
o.Parent=h

local function UpdateSize(p)
local q=p.Position-k
local r=l.X.Offset+q.X
local s=l.Y.Offset+q.Y
r=math.max(r,m)
s=math.max(s,n)
local t=b:Create(h,TweenInfo.new(0.2),{Size=UDim2.new(0,r,0,s)})
t:Play()
end

o.InputBegan:Connect(function(p)
if p.UserInputType==Enum.UserInputType.MouseButton1 or p.UserInputType==Enum.UserInputType.Touch then
i=true
k=p.Position
l=h.Size
p.Changed:Connect(function()
if p.UserInputState==Enum.UserInputState.End then
i=false
end
end)
end
end)

o.InputChanged:Connect(function(p)
if p.UserInputType==Enum.UserInputType.MouseMovement or p.UserInputType==Enum.UserInputType.Touch then
j=p
end
end)

a.InputChanged:Connect(function(p)
if p==j and i then
UpdateSize(p)
end
end)
end
CustomSize(g)
CustomPos(f,g)
end
function CircleClick(f,g,h)
spawn(function()
f.ClipsDescendants=true
local i=Instance.new"ImageLabel"
i.Image="rbxassetid://266543268"
i.ImageColor3=Color3.fromRGB(80,80,80)
i.ImageTransparency=0.8999999761581421
i.BackgroundColor3=Color3.fromRGB(255,255,255)
i.BackgroundTransparency=1
i.ZIndex=10
i.Name="Circle"
i.Parent=f

local j=g-i.AbsolutePosition.X
local k=h-i.AbsolutePosition.Y
i.Position=UDim2.new(0,j,0,k)
local l=0
if f.AbsoluteSize.X>f.AbsoluteSize.Y then
l=f.AbsoluteSize.X*1.5
elseif f.AbsoluteSize.X<f.AbsoluteSize.Y then
l=f.AbsoluteSize.Y*1.5
elseif f.AbsoluteSize.X==f.AbsoluteSize.Y then
l=f.AbsoluteSize.X*1.5
end

local m=0.5
i:TweenSizeAndPosition(UDim2.new(0,l,0,l),UDim2.new(0.5,-l/2,0.5,-l/2),"Out","Quad",m,false,nil)
for n=1,10 do
i.ImageTransparency=i.ImageTransparency+0.01
wait(m/10)
end
i:Destroy()
end)
end

local f={}
function f.MakeNotify(g,h)
local i=h or{}
i.Title=i.Title or"Hirimi Hub"
i.Description=i.Description or"Notification"
i.Content=i.Content or"Content"
i.Color=i.Color or Color3.fromRGB(255,0,255)
i.Time=i.Time or 0.5
i.Delay=i.Delay or 5
local j={}
spawn(function()
if not e:FindFirstChild"NotifyGui"then
local k=Instance.new"ScreenGui";
k.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
k.Name="NotifyGui"
k.Parent=e
end
if not e.NotifyGui:FindFirstChild"NotifyLayout"then
local k=Instance.new"Frame";
k.AnchorPoint=Vector2.new(1,1)
k.BackgroundColor3=Color3.fromRGB(255,255,255)
k.BackgroundTransparency=0.9990000128746033
k.BorderColor3=Color3.fromRGB(0,0,0)
k.BorderSizePixel=0
k.Position=UDim2.new(1,-30,1,-30)
k.Size=UDim2.new(0,320,1,0)
k.Name="NotifyLayout"
k.Parent=e.NotifyGui
local l=0
e.NotifyGui.NotifyLayout.ChildRemoved:Connect(function()
l=0
for m,n in e.NotifyGui.NotifyLayout:GetChildren()do
b:Create(
n,
TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Position=UDim2.new(0,0,1,-((n.Size.Y.Offset+12)*l))}
):Play()
l=l+1
end
end)
end
local k=0
for l,m in e.NotifyGui.NotifyLayout:GetChildren()do
k=-(m.Position.Y.Offset)+m.Size.Y.Offset+12
end
local l=Instance.new"Frame";
local m=Instance.new"Frame";
local n=Instance.new"UICorner";
local o=Instance.new"Frame";
local p=Instance.new"ImageLabel";
local q=Instance.new"Frame";
local r=Instance.new"TextLabel";
local s=Instance.new"UIStroke";
local t=Instance.new"UICorner";
local u=Instance.new"TextLabel";
local v=Instance.new"UIStroke";
local w=Instance.new"TextButton";
local x=Instance.new"ImageLabel";
local y=Instance.new"TextLabel";

l.BackgroundColor3=Color3.fromRGB(0,0,0)
l.BorderColor3=Color3.fromRGB(0,0,0)
l.BorderSizePixel=0
l.Size=UDim2.new(1,0,0,150)
l.Name="NotifyFrame"
l.BackgroundTransparency=1
l.Parent=e.NotifyGui.NotifyLayout
l.AnchorPoint=Vector2.new(0,1)
l.Position=UDim2.new(0,0,1,-(k))

m.BackgroundColor3=Color3.fromRGB(0,0,0)
m.BorderColor3=Color3.fromRGB(0,0,0)
m.BorderSizePixel=0
m.Position=UDim2.new(0,400,0,0)
m.Size=UDim2.new(1,0,1,0)
m.Name="NotifyFrameReal"
m.Parent=l

n.Parent=m
n.CornerRadius=UDim.new(0,8)

o.BackgroundTransparency=1
o.BorderSizePixel=0
o.Size=UDim2.new(1,0,1,0)
o.ZIndex=0
o.Name="DropShadowHolder"
o.Parent=m

p.Image="rbxassetid://6015897843"
p.ImageColor3=Color3.fromRGB(0,0,0)
p.ImageTransparency=0.5
p.ScaleType=Enum.ScaleType.Slice
p.SliceCenter=Rect.new(49,49,450,450)
p.AnchorPoint=Vector2.new(0.5,0.5)
p.BackgroundTransparency=1
p.BorderSizePixel=0
p.Position=UDim2.new(0.5,0,0.5,0)
p.Size=UDim2.new(1,47,1,47)
p.ZIndex=0
p.Name="DropShadow"
p.Parent=o

q.BackgroundColor3=Color3.fromRGB(0,0,0)
q.BackgroundTransparency=0.9990000128746033
q.BorderColor3=Color3.fromRGB(0,0,0)
q.BorderSizePixel=0
q.Size=UDim2.new(1,0,0,36)
q.Name="Top"
q.Parent=m

r.Font=Enum.Font.GothamBold
r.Text=i.Title
r.TextColor3=Color3.fromRGB(255,255,255)
r.TextSize=14
r.TextXAlignment=Enum.TextXAlignment.Left
r.BackgroundColor3=Color3.fromRGB(255,255,255)
r.BackgroundTransparency=0.9990000128746033
r.BorderColor3=Color3.fromRGB(0,0,0)
r.BorderSizePixel=0
r.Size=UDim2.new(1,0,1,0)
r.Parent=q
r.Position=UDim2.new(0,10,0,0)

s.Color=Color3.fromRGB(255,255,255)
s.Thickness=0.30000001192092896
s.Parent=r

t.Parent=q
t.CornerRadius=UDim.new(0,5)

u.Font=Enum.Font.GothamBold
u.Text=i.Description
u.TextColor3=i.Color
u.TextSize=14
u.TextXAlignment=Enum.TextXAlignment.Left
u.BackgroundColor3=Color3.fromRGB(255,255,255)
u.BackgroundTransparency=0.9990000128746033
u.BorderColor3=Color3.fromRGB(0,0,0)
u.BorderSizePixel=0
u.Size=UDim2.new(1,0,1,0)
u.Position=UDim2.new(0,r.TextBounds.X+15,0,0)
u.Parent=q

v.Color=i.Color
v.Thickness=0.4000000059604645
v.Parent=u

w.Font=Enum.Font.SourceSans
w.Text=""
w.TextColor3=Color3.fromRGB(0,0,0)
w.TextSize=14
w.AnchorPoint=Vector2.new(1,0.5)
w.BackgroundColor3=Color3.fromRGB(255,255,255)
w.BackgroundTransparency=0.9990000128746033
w.BorderColor3=Color3.fromRGB(0,0,0)
w.BorderSizePixel=0
w.Position=UDim2.new(1,-5,0.5,0)
w.Size=UDim2.new(0,25,0,25)
w.Name="Close"
w.Parent=q

x.Image="rbxassetid://9886659671"
x.AnchorPoint=Vector2.new(0.5,0.5)
x.BackgroundColor3=Color3.fromRGB(255,255,255)
x.BackgroundTransparency=0.9990000128746033
x.BorderColor3=Color3.fromRGB(0,0,0)
x.BorderSizePixel=0
x.Position=UDim2.new(0.49000001,0,0.5,0)
x.Size=UDim2.new(1,-8,1,-8)
x.Parent=w

y.Font=Enum.Font.GothamBold
y.TextColor3=Color3.fromRGB(255,255,255)
y.TextSize=13
y.Text=i.Content
y.TextXAlignment=Enum.TextXAlignment.Left
y.TextYAlignment=Enum.TextYAlignment.Top
y.BackgroundColor3=Color3.fromRGB(255,255,255)
y.BackgroundTransparency=0.9990000128746033
y.TextColor3=Color3.fromRGB(150.0000062584877,150.0000062584877,150.0000062584877)
y.BorderColor3=Color3.fromRGB(0,0,0)
y.BorderSizePixel=0
y.Position=UDim2.new(0,10,0,27)
y.Parent=m
y.Size=UDim2.new(1,-20,0,13)

y.Size=UDim2.new(1,-20,0,13+(13*(y.TextBounds.X//y.AbsoluteSize.X)))
y.TextWrapped=true

if y.AbsoluteSize.Y<27 then
l.Size=UDim2.new(1,0,0,65)
else
l.Size=UDim2.new(1,0,0,y.AbsoluteSize.Y+40)
end
local z=false
function j.Close(A)
if z then
return false
end
z=true
b:Create(
m,
TweenInfo.new(tonumber(i.Time),Enum.EasingStyle.Back,Enum.EasingDirection.InOut),
{Position=UDim2.new(0,400,0,0)}
):Play()
task.wait(tonumber(i.Time)/1.2)
l:Destroy()
end
w.Activated:Connect(function()
j:Close()
end)
b:Create(
m,
TweenInfo.new(tonumber(i.Time),Enum.EasingStyle.Back,Enum.EasingDirection.InOut),
{Position=UDim2.new(0,0,0,0)}
):Play()
task.wait(tonumber(i.Delay))
j:Close()
end)
return j
end
function f.NewWindow(g,h)
local i=h or{}
i.Title=i.Title or""
i.Description=i.Description or""
i.Color=i.Color or Color3.fromRGB(222,0,0)
i.TabWidth=i.TabWidth or 120
i.KeyCode=i.KeyCode or"LeftControl"
i.UIScale=i.UIScale or UDim2.fromOffset(550,400)
local j={}

local k=Instance.new"ScreenGui";
local l=Instance.new"Frame";
local m=Instance.new"ImageLabel";
local n=Instance.new"Frame";
local o=Instance.new"UICorner";
local p=Instance.new"UIStroke";
local q=Instance.new"Frame";
local r=Instance.new"TextLabel";
local s=Instance.new"UICorner";
local t=Instance.new"TextLabel";
Instance.new"UIStroke";
local u=Instance.new"TextButton";
local v=Instance.new"ImageLabel";
local w=Instance.new"TextButton";
local x=Instance.new"ImageLabel";
local y=Instance.new"TextButton";
local z=Instance.new"ImageLabel";
local A=Instance.new"Frame";
local B=Instance.new"UICorner";
local C=Instance.new"Frame";
Instance.new"UIStroke";
local D=Instance.new"Frame";
local E=Instance.new"UICorner";
local F=Instance.new"TextLabel";
local G=Instance.new"Frame";
local H=Instance.new"Folder";
local I=Instance.new"UIPageLayout";

k.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
k.Name="HirimiGui"
k.Parent=e

l.BackgroundTransparency=1
l.BorderSizePixel=0
l.Size=i.UIScale
l.ZIndex=0
l.Name="DropShadowHolder"
l.Parent=k
l.Position=UDim2.new(0,(game.Workspace.CurrentCamera.ViewportSize.X/2-l.Size.X.Offset/2),0,(game.Workspace.CurrentCamera.ViewportSize.Y/2-l.Size.Y.Offset/2))
m.Image="rbxassetid://6015897843"
m.ImageColor3=Color3.fromRGB(15,15,15)
m.ImageTransparency=0.5
m.ScaleType=Enum.ScaleType.Slice
m.SliceCenter=Rect.new(49,49,450,450)
m.AnchorPoint=Vector2.new(0.5,0.5)
m.BackgroundTransparency=1
m.BorderSizePixel=0
m.Position=UDim2.new(0.5,0,0.5,0)
m.Size=UDim2.new(1,47,1,47)
m.ZIndex=0
m.Name="DropShadow"
m.Parent=l

n.AnchorPoint=Vector2.new(0.5,0.5)
n.BackgroundColor3=Color3.fromRGB(15,15,15)
n.BackgroundTransparency=0.1
n.BorderColor3=Color3.fromRGB(0,0,0)
n.BorderSizePixel=0
n.Position=UDim2.new(0.5,0,0.5,0)
n.Size=UDim2.new(1,-47,1,-47)
n.Name="Main"
n.Parent=m

o.Parent=n

p.Color=Color3.fromRGB(50,50,50)
p.Thickness=1.600000023841858
p.Parent=n

q.BackgroundColor3=Color3.fromRGB(0,0,0)
q.BackgroundTransparency=0.9990000128746033
q.BorderColor3=Color3.fromRGB(0,0,0)
q.BorderSizePixel=0
q.Size=UDim2.new(1,0,0,38)
q.Name="Top"
q.Parent=n

r.Font=Enum.Font.GothamBold
r.Text=i.Title
r.TextColor3=Color3.fromRGB(255,255,255)
r.TextSize=14
r.TextXAlignment=Enum.TextXAlignment.Left
r.BackgroundColor3=Color3.fromRGB(255,255,255)
r.BackgroundTransparency=0.9990000128746033
r.BorderColor3=Color3.fromRGB(0,0,0)
r.BorderSizePixel=0
r.Size=UDim2.new(1,-100,1,0)
r.Position=UDim2.new(0,10,0,0)
r.Parent=q

s.Parent=q

t.Font=Enum.Font.GothamBold
t.Text=i.Description
t.TextColor3=Color3.fromRGB(222,0,0)
t.TextSize=14
t.TextXAlignment=Enum.TextXAlignment.Left
t.BackgroundColor3=Color3.fromRGB(255,255,255)
t.BackgroundTransparency=0.9990000128746033
t.BorderColor3=Color3.fromRGB(0,0,0)
t.BorderSizePixel=0
t.Size=UDim2.new(1,-(r.TextBounds.X+104),1,0)
t.Position=UDim2.new(0,r.TextBounds.X+15,0,0)
t.Parent=q

u.Font=Enum.Font.SourceSans
u.Text=""
u.TextColor3=Color3.fromRGB(0,0,0)
u.TextSize=14
u.AnchorPoint=Vector2.new(1,0.5)
u.BackgroundColor3=Color3.fromRGB(255,255,255)
u.BackgroundTransparency=0.9990000128746033
u.BorderColor3=Color3.fromRGB(0,0,0)
u.BorderSizePixel=0
u.Position=UDim2.new(1,-42,0.5,0)
u.Size=UDim2.new(0,25,0,25)
u.Name="MaxRestore"
u.Parent=q

v.Image="rbxassetid://9886659406"
v.AnchorPoint=Vector2.new(0.5,0.5)
v.BackgroundColor3=Color3.fromRGB(255,255,255)
v.BackgroundTransparency=0.9990000128746033
v.BorderColor3=Color3.fromRGB(0,0,0)
v.BorderSizePixel=0
v.Position=UDim2.new(0.5,0,0.5,0)
v.Size=UDim2.new(1,-8,1,-8)
v.Parent=u

w.Font=Enum.Font.SourceSans
w.Text=""
w.TextColor3=Color3.fromRGB(0,0,0)
w.TextSize=14
w.AnchorPoint=Vector2.new(1,0.5)
w.BackgroundColor3=Color3.fromRGB(255,255,255)
w.BackgroundTransparency=0.9990000128746033
w.BorderColor3=Color3.fromRGB(0,0,0)
w.BorderSizePixel=0
w.Position=UDim2.new(1,-8,0.5,0)
w.Size=UDim2.new(0,25,0,25)
w.Name="Close"
w.Parent=q

x.Image="rbxassetid://9886659671"
x.AnchorPoint=Vector2.new(0.5,0.5)
x.BackgroundColor3=Color3.fromRGB(255,255,255)
x.BackgroundTransparency=0.9990000128746033
x.BorderColor3=Color3.fromRGB(0,0,0)
x.BorderSizePixel=0
x.Position=UDim2.new(0.49,0,0.5,0)
x.Size=UDim2.new(1,-8,1,-8)
x.Parent=w

y.Font=Enum.Font.SourceSans
y.Text=""
y.TextColor3=Color3.fromRGB(0,0,0)
y.TextSize=14
y.AnchorPoint=Vector2.new(1,0.5)
y.BackgroundColor3=Color3.fromRGB(255,255,255)
y.BackgroundTransparency=0.9990000128746033
y.BorderColor3=Color3.fromRGB(0,0,0)
y.BorderSizePixel=0
y.Position=UDim2.new(1,-78,0.5,0)
y.Size=UDim2.new(0,25,0,25)
y.Name="Min"
y.Parent=q

z.Image="rbxassetid://9886659276"
z.AnchorPoint=Vector2.new(0.5,0.5)
z.BackgroundColor3=Color3.fromRGB(255,255,255)
z.BackgroundTransparency=0.9990000128746033
z.ImageTransparency=0.2
z.BorderColor3=Color3.fromRGB(0,0,0)
z.BorderSizePixel=0
z.Position=UDim2.new(0.5,0,0.5,0)
z.Size=UDim2.new(1,-9,1,-9)
z.Parent=y

A.BackgroundColor3=Color3.fromRGB(255,255,255)
A.BackgroundTransparency=0.9990000128746033
A.BorderColor3=Color3.fromRGB(0,0,0)
A.BorderSizePixel=0
A.Position=UDim2.new(0,9,0,50)
A.Size=UDim2.new(0,i.TabWidth,1,-59)
A.Name="LayersTab"
A.Parent=n

B.CornerRadius=UDim.new(0,2)
B.Parent=A

C.AnchorPoint=Vector2.new(0.5,0)
C.BackgroundColor3=Color3.fromRGB(255,255,255)
C.BackgroundTransparency=0.85
C.BorderColor3=Color3.fromRGB(0,0,0)
C.BorderSizePixel=0
C.Position=UDim2.new(0.5,0,0,38)
C.Size=UDim2.new(1,0,0,1)
C.Name="DecideFrame"
C.Parent=n

D.BackgroundColor3=Color3.fromRGB(255,255,255)
D.BackgroundTransparency=0.9990000128746033
D.BorderColor3=Color3.fromRGB(0,0,0)
D.BorderSizePixel=0
D.Position=UDim2.new(0,i.TabWidth+18,0,50)
D.Size=UDim2.new(1,-(i.TabWidth+9+18),1,-59)
D.Name="Layers"
D.Parent=n

E.CornerRadius=UDim.new(0,2)
E.Parent=D

F.Font=Enum.Font.GothamBold
F.Text=""
F.TextColor3=Color3.fromRGB(255,255,255)
F.TextSize=24
F.TextWrapped=true
F.TextXAlignment=Enum.TextXAlignment.Left
F.BackgroundColor3=Color3.fromRGB(255,255,255)
F.BackgroundTransparency=0.9990000128746033
F.BorderColor3=Color3.fromRGB(0,0,0)
F.BorderSizePixel=0
F.Size=UDim2.new(1,0,0,30)
F.Name="NameTab"
F.Parent=D

G.AnchorPoint=Vector2.new(0,1)
G.BackgroundColor3=Color3.fromRGB(255,255,255)
G.BackgroundTransparency=0.9990000128746033
G.BorderColor3=Color3.fromRGB(0,0,0)
G.BorderSizePixel=0
G.ClipsDescendants=true
G.Position=UDim2.new(0,0,1,0)
G.Size=UDim2.new(1,0,1,-33)
G.Name="LayersReal"
G.Parent=D

H.Name="LayersFolder"
H.Parent=G

I.SortOrder=Enum.SortOrder.LayoutOrder
I.Name="LayersPageLayout"
I.Parent=H
I.TweenTime=0.3
I.EasingDirection=Enum.EasingDirection.InOut
I.EasingStyle=Enum.EasingStyle.Quad

local J=Instance.new"ScrollingFrame";
local K=Instance.new"UIListLayout";

J.CanvasSize=UDim2.new(0,0,1.10000002,0)
J.ScrollBarImageColor3=Color3.fromRGB(0,0,0)
J.ScrollBarThickness=0
J.Active=true
J.BackgroundColor3=Color3.fromRGB(255,255,255)
J.BackgroundTransparency=0.9990000128746033
J.BorderColor3=Color3.fromRGB(0,0,0)
J.BorderSizePixel=0
J.Size=UDim2.new(1,0,1,-50)
J.Name="ScrollTab"
J.Parent=A

K.Padding=UDim.new(0,3)
K.SortOrder=Enum.SortOrder.LayoutOrder
K.Parent=J

local function UpdateSize1()
local L=0
for M,N in J:GetChildren()do
if N.Name~="UIListLayout"then
L=L+3+N.Size.Y.Offset
end
end
J.CanvasSize=UDim2.new(0,0,0,L)
end
J.ChildAdded:Connect(UpdateSize1)
J.ChildRemoved:Connect(UpdateSize1)

function j.DestroyGui(L)
if e:FindFirstChild"HirimiGui"then
k:Destroy()
end
end
local L=l.Position
local M=l.Size
u.Activated:Connect(function()
CircleClick(u,d.X,d.Y)
if v.Image=="rbxassetid://9886659406"then
v.Image="rbxassetid://9886659001"
L=l.Position
M=l.Size
b:Create(l,TweenInfo.new(0.3),{Position=UDim2.new(0,0,0,0)}):Play()
b:Create(l,TweenInfo.new(0.3),{Size=UDim2.new(1,0,1,0)}):Play()
else
v.Image="rbxassetid://9886659406"
b:Create(l,TweenInfo.new(0.3),{Position=L}):Play()
b:Create(l,TweenInfo.new(0.3),{Size=M}):Play()
end
end)
y.Activated:Connect(function()
CircleClick(y,d.X,d.Y)
l.Visible=false
end)
w.Activated:Connect(function()
CircleClick(w,d.X,d.Y)
l.Visible=false
end)
a.InputBegan:Connect(function(N)
if N.KeyCode==Enum.KeyCode[i.KeyCode]then
if l.Visible then
l.Visible=false
else
l.Visible=true
end
end
end)
MakeDraggable(q,l)

local N=Instance.new"Frame";
local O=Instance.new"Frame";
local P=Instance.new"ImageLabel";
local Q=Instance.new"UICorner";
local R=Instance.new"TextButton";

N.AnchorPoint=Vector2.new(1,1)
N.BackgroundColor3=Color3.fromRGB(0,0,0)
N.BackgroundTransparency=0.999
N.BorderColor3=Color3.fromRGB(0,0,0)
N.BorderSizePixel=0
N.ClipsDescendants=true
N.Position=UDim2.new(1,8,1,8)
N.Size=UDim2.new(1,154,1,54)
N.Visible=false
N.Name="MoreBlur"
N.Parent=D

O.BackgroundTransparency=1
O.BorderSizePixel=0
O.Size=UDim2.new(1,0,1,0)
O.ZIndex=0
O.Name="DropShadowHolder"
O.Parent=N

P.Image="rbxassetid://6015897843"
P.ImageColor3=Color3.fromRGB(0,0,0)
P.ImageTransparency=0.5
P.ScaleType=Enum.ScaleType.Slice
P.SliceCenter=Rect.new(49,49,450,450)
P.AnchorPoint=Vector2.new(0.5,0.5)
P.BackgroundTransparency=1
P.BorderSizePixel=0
P.Position=UDim2.new(0.5,0,0.5,0)
P.Size=UDim2.new(1,35,1,35)
P.ZIndex=0
P.Name="DropShadow"
P.Parent=O

Q.Parent=N

R.Font=Enum.Font.SourceSans
R.Text=""
R.TextColor3=Color3.fromRGB(0,0,0)
R.TextSize=14
R.BackgroundColor3=Color3.fromRGB(255,255,255)
R.BackgroundTransparency=0.999
R.BorderColor3=Color3.fromRGB(0,0,0)
R.BorderSizePixel=0
R.Size=UDim2.new(1,0,1,0)
R.Name="ConnectButton"
R.Parent=N

local S=Instance.new"Frame";
local T=Instance.new"UICorner";
local U=Instance.new"UIStroke";
local V=Instance.new"Frame";
local W=Instance.new"Folder";
local X=Instance.new"UIPageLayout";

S.AnchorPoint=Vector2.new(1,0.5)
S.BackgroundColor3=Color3.fromRGB(30.00000011175871,30.00000011175871,30.00000011175871)
S.BorderColor3=Color3.fromRGB(0,0,0)
S.BorderSizePixel=0
S.LayoutOrder=1
S.Position=UDim2.new(1,172,0.5,0)
S.Size=UDim2.new(0,160,1,-16)
S.Name="DropdownSelect"
S.ClipsDescendants=true
S.Parent=N

R.Activated:Connect(function()
if N.Visible then
b:Create(N,TweenInfo.new(0.3),{BackgroundTransparency=0.999}):Play()
b:Create(S,TweenInfo.new(0.3),{Position=UDim2.new(1,172,0.5,0)}):Play()
task.wait(0.3)
N.Visible=false
end
end)
T.CornerRadius=UDim.new(0,3)
T.Parent=S

U.Color=Color3.fromRGB(255,255,255)
U.Thickness=2.5
U.Transparency=0.8
U.Parent=S

V.AnchorPoint=Vector2.new(0.5,0.5)
V.BackgroundColor3=Color3.fromRGB(0,0,0)
V.BackgroundTransparency=0.9990000128746033
V.BorderColor3=Color3.fromRGB(0,0,0)
V.BorderSizePixel=0
V.LayoutOrder=1
V.Position=UDim2.new(0.5,0,0.5,0)
V.Size=UDim2.new(1,-10,1,-10)
V.Name="DropdownSelectReal"
V.Parent=S

W.Name="DropdownFolder"
W.Parent=V

X.EasingDirection=Enum.EasingDirection.InOut
X.EasingStyle=Enum.EasingStyle.Quad
X.TweenTime=0.009999999776482582
X.SortOrder=Enum.SortOrder.LayoutOrder
X.Archivable=false
X.Name="DropPageLayout"
X.Parent=W

local Y={}
function Y.ToggleUI(Z)
game:GetService"VirtualInputManager":SendKeyEvent(true,i.KeyCode,false,game)
game:GetService"VirtualInputManager":SendKeyEvent(false,i.KeyCode,false,game)
end
local Z=0
local _=0
function Y.AddTab(aa,ab)
local ac=ab or{}
ac.Title=ac.Title or"Tab"
ac.Icon=ac.Icon or""

local ad=Instance.new"ScrollingFrame";
local ae=Instance.new"UIListLayout";

ad.ScrollBarImageColor3=Color3.fromRGB(80.00000283122063,80.00000283122063,80.00000283122063)
ad.ScrollBarThickness=0
ad.Active=true
ad.LayoutOrder=Z
ad.BackgroundColor3=Color3.fromRGB(255,255,255)
ad.BackgroundTransparency=0.9990000128746033
ad.BorderColor3=Color3.fromRGB(0,0,0)
ad.BorderSizePixel=0
ad.Size=UDim2.new(1,0,1,0)
ad.Name="ScrolLayers"
ad.Parent=H

ae.Padding=UDim.new(0,3)
ae.SortOrder=Enum.SortOrder.LayoutOrder
ae.Parent=ad

local af=Instance.new"Frame";
local ag=Instance.new"UICorner";
local ah=Instance.new"TextButton";
local ai=Instance.new"TextLabel"
local aj=Instance.new"ImageLabel";
Instance.new"UIStroke";
Instance.new"UICorner";

af.BackgroundColor3=Color3.fromRGB(255,255,255)
if Z==0 then
F.Text=ac.Title
af.BackgroundTransparency=0.9200000166893005
else
af.BackgroundTransparency=0.9990000128746033
end
af.BorderColor3=Color3.fromRGB(0,0,0)
af.BorderSizePixel=0
af.LayoutOrder=Z
af.Size=UDim2.new(1,0,0,30)
af.Name="Tab"
af.Parent=J

ag.CornerRadius=UDim.new(0,4)
ag.Parent=af

ah.Font=Enum.Font.GothamBold
ah.Text=""
ah.TextColor3=Color3.fromRGB(255,255,255)
ah.TextSize=13
ah.TextXAlignment=Enum.TextXAlignment.Left
ah.BackgroundColor3=Color3.fromRGB(255,255,255)
ah.BackgroundTransparency=0.9990000128746033
ah.BorderColor3=Color3.fromRGB(0,0,0)
ah.BorderSizePixel=0
ah.Size=UDim2.new(1,0,1,0)
ah.Name="TabButton"
ah.Parent=af

ai.Font=Enum.Font.GothamBold
ai.Text=ac.Title
ai.TextColor3=Color3.fromRGB(255,255,255)
ai.TextSize=13
ai.TextXAlignment=Enum.TextXAlignment.Left
ai.BackgroundColor3=Color3.fromRGB(255,255,255)
ai.BackgroundTransparency=0.9990000128746033
ai.BorderColor3=Color3.fromRGB(0,0,0)
ai.BorderSizePixel=0
ai.Size=UDim2.new(1,0,1,0)
ai.Position=UDim2.new(0,30,0,0)
ai.Name="TabName"
ai.Parent=af

aj.Image=ac.Icon
aj.BackgroundColor3=Color3.fromRGB(255,255,255)
aj.BackgroundTransparency=0.9990000128746033
aj.BorderColor3=Color3.fromRGB(0,0,0)
aj.BorderSizePixel=0
aj.Position=UDim2.new(0,9,0,7)
aj.Size=UDim2.new(0,16,0,16)
aj.Name="FeatureImg"
aj.Parent=af
ah.Activated:Connect(function()
CircleClick(ah,d.X,d.Y)
if af.LayoutOrder~=I.CurrentPage.LayoutOrder then
for ak,al in J:GetChildren()do
if al.Name=="Tab"then
b:Create(
al,
TweenInfo.new(0.3,Enum.EasingStyle.Back,Enum.EasingDirection.InOut),
{BackgroundTransparency=0.9990000128746033}
):Play()
end
end
b:Create(
af,
TweenInfo.new(0.6,Enum.EasingStyle.Back,Enum.EasingDirection.InOut),
{BackgroundTransparency=0.9200000166893005}
):Play()
I:JumpToIndex(af.LayoutOrder)
task.wait(0.05)
F.Text=ac.Title
end
end)

local ak={}
local al=0
function ak.AddSection(am,an)
local ao=an or"Title"
local ap=Instance.new"Frame";
local aq=Instance.new"Frame";
local ar=Instance.new"UICorner";
local as=Instance.new"UIGradient";

ap.BackgroundColor3=Color3.fromRGB(255,255,255)
ap.BackgroundTransparency=0.9990000128746033
ap.BorderColor3=Color3.fromRGB(0,0,0)
ap.BorderSizePixel=0
ap.LayoutOrder=al
ap.ClipsDescendants=true
ap.LayoutOrder=1
ap.Size=UDim2.new(1,0,0,30)
ap.Name="Section"
ap.Parent=ad

local at=Instance.new"Frame";
local au=Instance.new"UICorner";
Instance.new"UIStroke";
local av=Instance.new"TextButton";
local aw=Instance.new"Frame";
local ax=Instance.new"ImageLabel";
local ay=Instance.new"TextLabel";

at.AnchorPoint=Vector2.new(0.5,0)
at.BackgroundColor3=Color3.fromRGB(255,255,255)
at.BackgroundTransparency=0.9350000023841858
at.BorderColor3=Color3.fromRGB(0,0,0)
at.BorderSizePixel=0
at.LayoutOrder=1
at.Position=UDim2.new(0.5,0,0,0)
at.Size=UDim2.new(1,1,0,30)
at.Name="SectionReal"
at.Parent=ap

au.CornerRadius=UDim.new(0,4)
au.Parent=at

av.Font=Enum.Font.SourceSans
av.Text=""
av.TextColor3=Color3.fromRGB(0,0,0)
av.TextSize=14
av.BackgroundColor3=Color3.fromRGB(255,255,255)
av.BackgroundTransparency=0.9990000128746033
av.BorderColor3=Color3.fromRGB(0,0,0)
av.BorderSizePixel=0
av.Size=UDim2.new(1,0,1,0)
av.Name="SectionButton"
av.Parent=at

aw.AnchorPoint=Vector2.new(1,0.5)
aw.BackgroundColor3=Color3.fromRGB(0,0,0)
aw.BackgroundTransparency=0.9990000128746033
aw.BorderColor3=Color3.fromRGB(0,0,0)
aw.BorderSizePixel=0
aw.Position=UDim2.new(1,-5,0.5,0)
aw.Size=UDim2.new(0,20,0,20)
aw.Name="FeatureFrame"
aw.Parent=at

ax.Image="rbxassetid://16851841101"
ax.AnchorPoint=Vector2.new(0.5,0.5)
ax.BackgroundColor3=Color3.fromRGB(255,255,255)
ax.BackgroundTransparency=0.9990000128746033
ax.BorderColor3=Color3.fromRGB(0,0,0)
ax.BorderSizePixel=0
ax.Position=UDim2.new(0.5,0,0.5,0)
ax.Rotation=-90
ax.Size=UDim2.new(1,6,1,6)
ax.Name="FeatureImg"
ax.Parent=aw

ay.Font=Enum.Font.GothamBold
ay.Text=ao
ay.TextColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)
ay.TextSize=13
ay.TextXAlignment=Enum.TextXAlignment.Left
ay.TextYAlignment=Enum.TextYAlignment.Top
ay.AnchorPoint=Vector2.new(0,0.5)
ay.BackgroundColor3=Color3.fromRGB(255,255,255)
ay.BackgroundTransparency=0.9990000128746033
ay.BorderColor3=Color3.fromRGB(0,0,0)
ay.BorderSizePixel=0
ay.Position=UDim2.new(0,10,0.5,0)
ay.Size=UDim2.new(1,-50,0,13)
ay.Name="SectionTitle"
ay.Parent=at

aq.BackgroundColor3=Color3.fromRGB(255,255,255)
aq.BorderColor3=Color3.fromRGB(0,0,0)
aq.AnchorPoint=Vector2.new(0.5,0)
aq.BorderSizePixel=0
aq.Position=UDim2.new(0.5,0,0,33)
aq.Size=UDim2.new(0,0,0,2)
aq.Name="SectionDecideFrame"
aq.Parent=ap

ar.Parent=aq

as.Color=ColorSequence.new{
ColorSequenceKeypoint.new(0,Color3.fromRGB(20,20,20)),
ColorSequenceKeypoint.new(0.5,i.Color),
ColorSequenceKeypoint.new(1,Color3.fromRGB(20,20,20))
}
as.Parent=aq

local az=Instance.new"Frame";
local aA=Instance.new"UICorner";
local aB=Instance.new"UIListLayout";

az.AnchorPoint=Vector2.new(0.5,0)
az.BackgroundColor3=Color3.fromRGB(255,255,255)
az.BackgroundTransparency=0.9990000128746033
az.BorderColor3=Color3.fromRGB(0,0,0)
az.BorderSizePixel=0
az.ClipsDescendants=true
az.LayoutOrder=1
az.Position=UDim2.new(0.5,0,0,38)
az.Size=UDim2.new(1,0,0,100)
az.Name="SectionAdd"
az.Parent=ap

aA.CornerRadius=UDim.new(0,2)
aA.Parent=az

aB.Padding=UDim.new(0,3)
aB.SortOrder=Enum.SortOrder.LayoutOrder
aB.Parent=az
local aC=true
local function UpdateSizeScroll()
local aD=0
for aE,aF in ad:GetChildren()do
if aF.Name~="UIListLayout"then
aD=aD+3+aF.Size.Y.Offset
end
end
ad.CanvasSize=UDim2.new(0,0,0,aD)
end
local function UpdateSizeSection()
if aC then
local aD=38
for aE,aF in az:GetChildren()do
if aF.Name~="UIListLayout"and aF.Name~="UICorner"then
aD=aD+aF.Size.Y.Offset+3
end
end
b:Create(aw,TweenInfo.new(0.5),{Rotation=90}):Play()
b:Create(ap,TweenInfo.new(0.5),{Size=UDim2.new(1,1,0,aD)}):Play()
b:Create(az,TweenInfo.new(0.5),{Size=UDim2.new(1,0,0,aD-38)}):Play()
b:Create(aq,TweenInfo.new(0.5),{Size=UDim2.new(1,0,0,2)}):Play()
task.wait(0.5)
UpdateSizeScroll()
end
end
av.Activated:Connect(function()
CircleClick(av,d.X,d.Y)
if aC then
b:Create(aw,TweenInfo.new(0.35),{Rotation=0}):Play()
b:Create(ap,TweenInfo.new(0.35),{Size=UDim2.new(1,1,0,30)}):Play()
b:Create(aq,TweenInfo.new(0.35),{Size=UDim2.new(0,0,0,2)}):Play()
aC=false
task.wait(0.35)
UpdateSizeScroll()
else
aC=true
UpdateSizeSection()
end
end)
az.ChildAdded:Connect(UpdateSizeSection)
az.ChildRemoved:Connect(UpdateSizeSection)
UpdateSizeScroll()

local aD={}
local aE=0
function aD.AddParagraph(aF,aG)
local aH=aG or{}
aH.Title=aH.Title or"Title"
aH.Content=aH.Content or"Content"
local aI={}

local aJ=Instance.new"Frame";
local aK=Instance.new"UICorner";
local aL=Instance.new"TextLabel";
local aM=Instance.new"TextLabel";

aJ.BackgroundColor3=Color3.fromRGB(255,255,255)
aJ.BackgroundTransparency=0.9350000023841858
aJ.BorderColor3=Color3.fromRGB(0,0,0)
aJ.BorderSizePixel=0
aJ.LayoutOrder=aE
aJ.Size=UDim2.new(1,0,0,46)
aJ.Name="Paragraph"
aJ.Parent=az

aK.CornerRadius=UDim.new(0,4)
aK.Parent=aJ

aL.Font=Enum.Font.GothamBold
aL.Text=aH.Title
aL.TextColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)
aL.TextSize=13
aL.TextXAlignment=Enum.TextXAlignment.Left
aL.TextYAlignment=Enum.TextYAlignment.Top
aL.BackgroundColor3=Color3.fromRGB(255,255,255)
aL.BackgroundTransparency=0.9990000128746033
aL.BorderColor3=Color3.fromRGB(0,0,0)
aL.BorderSizePixel=0
aL.Position=UDim2.new(0,10,0,10)
aL.Size=UDim2.new(1,-16,0,13)
aL.Name="ParagraphTitle"
aL.Parent=aJ

aM.Font=Enum.Font.GothamBold
aM.Text=aH.Content
aM.TextColor3=Color3.fromRGB(255,255,255)
aM.TextSize=12
aM.TextTransparency=0.6000000238418579
aM.TextXAlignment=Enum.TextXAlignment.Left
aM.TextYAlignment=Enum.TextYAlignment.Top
aM.BackgroundColor3=Color3.fromRGB(255,255,255)
aM.BackgroundTransparency=0.9990000128746033
aM.BorderColor3=Color3.fromRGB(0,0,0)
aM.BorderSizePixel=0
aM.Position=UDim2.new(0,10,0,23)
aM.Name="ParagraphContent"
aM.Parent=aJ

aM.Size=UDim2.new(1,-16,0,1,-23)
aM.TextWrapped=true
aJ.Size=UDim2.new(1,0,0,math.max(aM.TextBounds.Y+40,46))

aM:GetPropertyChangedSignal"AbsoluteSize":Connect(function()
aM.TextWrapped=false
aM.Size=UDim2.new(1,-16,1,-23)
aJ.Size=UDim2.new(1,0,0,math.max(aM.TextBounds.Y+40,46))
aM.TextWrapped=true
UpdateSizeSection()
end)

function aI.Set(aN,aO)
local aP=aO or{}
aP.Title=aP.Title or"Title"
aP.Content=aP.Content or"Content"

aL.Text=aP.Title
aM.Text=aP.Content
aM.TextWrapped=false
aM.Size=UDim2.new(1,-16,0,12+(12//aM.AbsoluteSize.X))
aM.TextWrapped=true
aJ.Size=UDim2.new(1,0,0,aM.AbsoluteSize.Y+33)
end
aE=aE+1
return aI
end
function aD.AddButton(aF,aG)
local aH=aG or{}
aH.Title=aH.Title or"Title"
aH.Content=aH.Content or"Content"
aH.Icon=aH.Icon or"rbxassetid://16932740082"
aH.Callback=aH.Callback or function()end
local aI={}

local aJ=Instance.new"Frame";
local aK=Instance.new"UICorner";
local aL=Instance.new"TextLabel";
local aM=Instance.new"TextLabel";
local aN=Instance.new"TextButton";
local aO=Instance.new"Frame";
local aP=Instance.new"ImageLabel";

aJ.BackgroundColor3=Color3.fromRGB(255,255,255)
aJ.BackgroundTransparency=0.9350000023841858
aJ.BorderColor3=Color3.fromRGB(0,0,0)
aJ.BorderSizePixel=0
aJ.LayoutOrder=aE
aJ.Size=UDim2.new(1,0,0,46)
aJ.Name="Button"
aJ.Parent=az

aK.CornerRadius=UDim.new(0,4)
aK.Parent=aJ

aL.Font=Enum.Font.GothamBold
aL.Text=aH.Title
aL.TextColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)
aL.TextSize=13
aL.TextXAlignment=Enum.TextXAlignment.Left
aL.TextYAlignment=Enum.TextYAlignment.Top
aL.BackgroundColor3=Color3.fromRGB(255,255,255)
aL.BackgroundTransparency=0.9990000128746033
aL.BorderColor3=Color3.fromRGB(0,0,0)
aL.BorderSizePixel=0
aL.Position=UDim2.new(0,10,0,10)
aL.Size=UDim2.new(1,-100,0,13)
aL.Name="ButtonTitle"
aL.Parent=aJ

aM.Font=Enum.Font.GothamBold
aM.Text=aH.Content
aM.TextColor3=Color3.fromRGB(255,255,255)
aM.TextSize=12
aM.TextTransparency=0.6000000238418579
aM.TextXAlignment=Enum.TextXAlignment.Left
aM.TextYAlignment=Enum.TextYAlignment.Top
aM.BackgroundColor3=Color3.fromRGB(255,255,255)
aM.BackgroundTransparency=0.9990000128746033
aM.BorderColor3=Color3.fromRGB(0,0,0)
aM.BorderSizePixel=0
aM.Position=UDim2.new(0,10,0,23)
aM.Name="ButtonContent"
aM.Parent=aJ
aM.Size=UDim2.new(1,-100,0,12)

aM.Size=UDim2.new(1,-100,1,-23)
aM.TextWrapped=true
aJ.Size=UDim2.new(1,0,0,math.max(aM.AbsoluteSize.Y+40,46))

aM:GetPropertyChangedSignal"AbsoluteSize":Connect(function()
aM.TextWrapped=false
aM.Size=UDim2.new(1,-100,1,-23)
aJ.Size=UDim2.new(1,0,0,math.max(aM.TextBounds.Y+40,46))
aM.TextWrapped=true
UpdateSizeSection()
end)

aN.Font=Enum.Font.SourceSans
aN.Text=""
aN.TextColor3=Color3.fromRGB(0,0,0)
aN.TextSize=14
aN.BackgroundColor3=Color3.fromRGB(0,0,0)
aN.BackgroundTransparency=0.9990000128746033
aN.BorderColor3=Color3.fromRGB(0,0,0)
aN.BorderSizePixel=0
aN.Size=UDim2.new(1,0,1,0)
aN.Name="ButtonButton"
aN.Parent=aJ

aO.AnchorPoint=Vector2.new(1,0.5)
aO.BackgroundColor3=Color3.fromRGB(0,0,0)
aO.BackgroundTransparency=0.9990000128746033
aO.BorderColor3=Color3.fromRGB(0,0,0)
aO.BorderSizePixel=0
aO.Position=UDim2.new(1,-15,0.5,0)
aO.Size=UDim2.new(0,25,0,25)
aO.Name="FeatureFrame"
aO.Parent=aJ

aP.Image=aH.Icon
aP.AnchorPoint=Vector2.new(0.5,0.5)
aP.BackgroundColor3=Color3.fromRGB(255,255,255)
aP.BackgroundTransparency=0.9990000128746033
aP.BorderColor3=Color3.fromRGB(0,0,0)
aP.BorderSizePixel=0
aP.Position=UDim2.new(0.5,0,0.5,0)
aP.Size=UDim2.new(1,0,1,0)
aP.Name="FeatureImg"
aP.Parent=aO

aN.Activated:Connect(function()
CircleClick(aN,d.X,d.Y)
aH.Callback()
end)
aE=aE+1
return aI
end
function aD.AddToggle(aF,aG)
local aH=aG or{}
aH.Title=aH.Title or"Title"
aH.Content=aH.Content or"Content"
aH.Default=aH.Default or false
aH.Callback=aH.Callback or function()end
local aI={Value=aH.Default,Options=aH.Options,Selecting=aH.Selecting}

local aJ=Instance.new"Frame";
local aK=Instance.new"UICorner";
local aL=Instance.new"TextLabel";
local aM=Instance.new"TextLabel";
local aN=Instance.new"TextButton";
Instance.new"Frame";
Instance.new"ImageLabel";
Instance.new"UICorner";
Instance.new"TextButton";
local aO=Instance.new"Frame";
local aP=Instance.new"UICorner";
local aQ=Instance.new"UIStroke";
local aR=Instance.new"Frame";
local aS=Instance.new"UICorner";

aJ.BackgroundColor3=Color3.fromRGB(255,255,255)
aJ.BackgroundTransparency=0.9350000023841858
aJ.BorderColor3=Color3.fromRGB(0,0,0)
aJ.BorderSizePixel=0
aJ.LayoutOrder=aE
aJ.Size=UDim2.new(1,0,0,46)
aJ.Name="Toggle"
aJ.Parent=az

aK.CornerRadius=UDim.new(0,4)
aK.Parent=aJ

aL.Font=Enum.Font.GothamBold
aL.Text=aH.Title
aL.TextSize=13
aL.TextColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)
aL.TextXAlignment=Enum.TextXAlignment.Left
aL.TextYAlignment=Enum.TextYAlignment.Top
aL.BackgroundColor3=Color3.fromRGB(255,255,255)
aL.BackgroundTransparency=0.9990000128746033
aL.BorderColor3=Color3.fromRGB(0,0,0)
aL.BorderSizePixel=0
aL.Position=UDim2.new(0,10,0,10)
aL.Size=UDim2.new(1,-100,0,13)
aL.Name="ToggleTitle"
aL.Parent=aJ

aM.Font=Enum.Font.GothamBold
aM.Text=aH.Content
aM.TextColor3=Color3.fromRGB(255,255,255)
aM.TextSize=12
aM.TextTransparency=0.6000000238418579
aM.TextXAlignment=Enum.TextXAlignment.Left
aM.TextYAlignment=Enum.TextYAlignment.Top
aM.BackgroundColor3=Color3.fromRGB(255,255,255)
aM.BackgroundTransparency=0.9990000128746033
aM.BorderColor3=Color3.fromRGB(0,0,0)
aM.BorderSizePixel=0
aM.Position=UDim2.new(0,10,0,23)
aM.Size=UDim2.new(1,-100,0,12)
aM.Name="ToggleContent"
aM.Parent=aJ

aM.Size=UDim2.new(1,-100,1,-23)
aM.TextWrapped=true
aJ.Size=UDim2.new(1,0,0,math.max(aM.AbsoluteSize.Y+40,46))
local function UpdateToggleSize()
aJ.Size=UDim2.new(1,0,0,math.max(aM.TextBounds.Y+40,46))
aM.Size=UDim2.new(1,-100,1,-23)
aM.TextWrapped=true
UpdateSizeSection()
end
aM:GetPropertyChangedSignal"AbsoluteSize":Connect(UpdateToggleSize)

aN.Font=Enum.Font.SourceSans
aN.Text=""
aN.TextColor3=Color3.fromRGB(0,0,0)
aN.TextSize=14
aN.BackgroundColor3=Color3.fromRGB(0,0,0)
aN.BackgroundTransparency=0.9990000128746033
aN.BorderColor3=Color3.fromRGB(0,0,0)
aN.BorderSizePixel=0
aN.Size=UDim2.new(1,0,1,0)
aN.Name="ToggleButton"
aN.Parent=aJ

aO.AnchorPoint=Vector2.new(1,0.5)
aO.BackgroundColor3=Color3.fromRGB(255,255,255)
aO.BackgroundTransparency=0.9200000166893005
aO.BorderColor3=Color3.fromRGB(0,0,0)
aO.BorderSizePixel=0
aO.Position=UDim2.new(1,-10,0.5,0)
aO.Size=UDim2.new(0,30,0,15)
aO.Name="FeatureFrame"
aO.Parent=aJ

aP.Parent=aO

aQ.Color=Color3.fromRGB(255,255,255)
aQ.Thickness=2
aQ.Transparency=0.9
aQ.Parent=aO

aR.BackgroundColor3=Color3.fromRGB(230.00000149011612,230.00000149011612,230.00000149011612)
aR.BorderColor3=Color3.fromRGB(0,0,0)
aR.BorderSizePixel=0
aR.Position=UDim2.new(0,0,0,0)
aR.Size=UDim2.new(0,14,0,14)
aR.Name="ToggleCircle"
aR.Parent=aO

aS.CornerRadius=UDim.new(0,15)
aS.Parent=aR

aN.Activated:Connect(function()
CircleClick(aN,d.X,d.Y)
aI.Value=not aI.Value
aI:Set(aI.Value)
end)
function aI.Set(aT,aU)
aH.Callback(aU)
if aU then
b:Create(
aR,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Position=UDim2.new(0,15,0,0)}
):Play()
b:Create(
aQ,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Color=i.Color,Transparency=0}
):Play()
b:Create(
aO,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{BackgroundColor3=i.Color,BackgroundTransparency=0}
):Play()
else
b:Create(
aR,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Position=UDim2.new(0,0,0,0)}
):Play()
b:Create(
aQ,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Color=Color3.fromRGB(255,255,255),Transparency=0.9}
):Play()
b:Create(
aO,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=0.9200000166893005}
):Play()
end
end
aI:Set(aI.Value)
aE=aE+1
return aI
end
function aD.AddSlider(aF,aG)
local aH=aG or{}
aH.Title=aH.Title or"Slider"
aH.Content=aH.Content or"Content"
aH.Increment=aH.Increment or 1
aH.Min=aH.Min or 0
aH.Max=aH.Max or 100
aH.Default=aH.Default or 50
aH.Callback=aH.Callback or function()end
local aI={Value=aH.Default}

local aJ=Instance.new"Frame";
local aK=Instance.new"UICorner";
local aL=Instance.new"TextLabel";
local aM=Instance.new"TextLabel";
local aN=Instance.new"Frame";
local aO=Instance.new"UICorner";
local aP=Instance.new"TextBox";
local aQ=Instance.new"Frame";
local aR=Instance.new"UICorner";
local aS=Instance.new"Frame";
local aT=Instance.new"UICorner";
Instance.new"UIStroke";
local aU=Instance.new"Frame";
local aV=Instance.new"UICorner";
local aW=Instance.new"UIStroke";
Instance.new"UIStroke";

aJ.BackgroundColor3=Color3.fromRGB(255,255,255)
aJ.BackgroundTransparency=0.9350000023841858
aJ.BorderColor3=Color3.fromRGB(0,0,0)
aJ.BorderSizePixel=0
aJ.LayoutOrder=aE
aJ.Size=UDim2.new(1,0,0,46)
aJ.Name="Slider"
aJ.Parent=az

aK.CornerRadius=UDim.new(0,4)
aK.Parent=aJ

aL.Font=Enum.Font.GothamBold
aL.Text=aH.Title
aL.TextColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)
aL.TextSize=13
aL.TextXAlignment=Enum.TextXAlignment.Left
aL.TextYAlignment=Enum.TextYAlignment.Top
aL.BackgroundColor3=Color3.fromRGB(255,255,255)
aL.BackgroundTransparency=0.9990000128746033
aL.BorderColor3=Color3.fromRGB(0,0,0)
aL.BorderSizePixel=0
aL.Position=UDim2.new(0,10,0,10)
aL.Size=UDim2.new(1,-180,0,13)
aL.Name="SliderTitle"
aL.Parent=aJ

aM.Font=Enum.Font.GothamBold
aM.Text=aH.Content
aM.TextColor3=Color3.fromRGB(255,255,255)
aM.TextSize=12
aM.TextTransparency=0.6000000238418579
aM.TextXAlignment=Enum.TextXAlignment.Left
aM.TextYAlignment=Enum.TextYAlignment.Top
aM.BackgroundColor3=Color3.fromRGB(255,255,255)
aM.BackgroundTransparency=0.9990000128746033
aM.BorderColor3=Color3.fromRGB(0,0,0)
aM.BorderSizePixel=0
aM.Position=UDim2.new(0,10,0,23)
aM.Size=UDim2.new(1,-180,0,12)
aM.Name="SliderContent"
aM.Parent=aJ

aM.Size=UDim2.new(1,-180,1,-23)
aM.TextWrapped=true
aJ.Size=UDim2.new(1,0,0,math.max(aM.AbsoluteSize.Y+40,46))

aM:GetPropertyChangedSignal"AbsoluteSize":Connect(function()
aM.TextWrapped=false
aM.Size=UDim2.new(1,-180,1,-23)
aJ.Size=UDim2.new(1,0,0,math.max(aM.TextBounds.Y+40,46))
aM.TextWrapped=true
UpdateSizeSection()
end)

aN.AnchorPoint=Vector2.new(0,0.5)
aN.BackgroundColor3=i.Color
aN.BorderColor3=Color3.fromRGB(0,0,0)
aN.BorderSizePixel=0
aN.Position=UDim2.new(1,-155,0.5,0)
aN.Size=UDim2.new(0,28,0,20)
aN.Name="SliderInput"
aN.Parent=aJ

aO.CornerRadius=UDim.new(0,2)
aO.Parent=aN

aP.Font=Enum.Font.GothamBold
aP.Text="90"
aP.TextColor3=Color3.fromRGB(255,255,255)
aP.TextSize=13
aP.TextWrapped=true
aP.BackgroundColor3=Color3.fromRGB(0,0,0)
aP.BackgroundTransparency=0.9990000128746033
aP.BorderColor3=Color3.fromRGB(0,0,0)
aP.BorderSizePixel=0
aP.Position=UDim2.new(0,-1,0,0)
aP.Size=UDim2.new(1,0,1,0)
aP.Parent=aN

aQ.AnchorPoint=Vector2.new(1,0.5)
aQ.BackgroundColor3=Color3.fromRGB(255,255,255)
aQ.BackgroundTransparency=0.800000011920929
aQ.BorderColor3=Color3.fromRGB(0,0,0)
aQ.BorderSizePixel=0
aQ.Position=UDim2.new(1,-20,0.5,0)
aQ.Size=UDim2.new(0,100,0,3)
aQ.Name="SliderFrame"
aQ.Parent=aJ

aR.Parent=aQ

aS.AnchorPoint=Vector2.new(0,0.5)
aS.BackgroundColor3=i.Color
aS.BorderColor3=Color3.fromRGB(0,0,0)
aS.BorderSizePixel=0
aS.Position=UDim2.new(0,0,0.5,0)
aS.Size=UDim2.new(0.899999976,0,0,1)
aS.Name="SliderDraggable"
aS.Parent=aQ

aT.Parent=aS

aU.AnchorPoint=Vector2.new(1,0.5)
aU.BackgroundColor3=i.Color
aU.BorderColor3=Color3.fromRGB(0,0,0)
aU.BorderSizePixel=0
aU.Position=UDim2.new(1,4,0.5,0)
aU.Size=UDim2.new(0,8,0,8)
aU.Name="SliderCircle"
aU.Parent=aS

aV.Parent=aU

aW.Color=i.Color
aW.Parent=aU

local aX=false
local function Round(aY,aZ)
local a_=math.floor(aY/aZ+(math.sign(aY)*0.5))*aZ
if a_<0 then
a_=a_+aZ
end
return a_
end
function aI.Set(aY,aZ)
aZ=math.clamp(Round(aZ,aH.Increment),aH.Min,aH.Max)
aI.Value=aZ
aP.Text=tostring(aZ)
b:Create(
aS,
TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
{Size=UDim2.fromScale((aZ-aH.Min)/(aH.Max-aH.Min),1)}
):Play()
end
aQ.InputBegan:Connect(function(aY)
if aY.UserInputType==Enum.UserInputType.MouseButton1 then
aX=true
end
end)
aQ.InputEnded:Connect(function(aY)
if aY.UserInputType==Enum.UserInputType.MouseButton1 then
aX=false
aH.Callback(aI.Value)
end
end)
a.InputChanged:Connect(function(aY)
if aX and aY.UserInputType==Enum.UserInputType.MouseMovement then
local aZ=math.clamp((aY.Position.X-aQ.AbsolutePosition.X)/aQ.AbsoluteSize.X,0,1)
aI:Set(aH.Min+((aH.Max-aH.Min)*aZ))
end
end)
aP:GetPropertyChangedSignal"Text":Connect(function()
local aY=aP.Text:gsub("[^%d]","")
if aY~=""then
local aZ=math.min(tonumber(aY),aH.Max)
aP.Text=tostring(aZ)
else
aP.Text=tostring(aY)
end
end)
aP.FocusLost:Connect(function()
if aP.Text~=""then
aI:Set(tonumber(aP.Text))
else
aI:Set(0)
end
end)
aI:Set(tonumber(aH.Default))
aE=aE+1
return aI
end
function aD.AddInput(aF,aG)
local aH=aG or{}
aH.Title=aH.Title or"Title"
aH.Content=aH.Content or"Content"
aH.Callback=aH.Callback or function()end
local aI={Value=""}

local aJ=Instance.new"Frame";
local aK=Instance.new"UICorner";
local aL=Instance.new"TextLabel";
local aM=Instance.new"TextLabel";
local aN=Instance.new"Frame";
local aO=Instance.new"UICorner";
local aP=Instance.new"TextBox";

aJ.BackgroundColor3=Color3.fromRGB(255,255,255)
aJ.BackgroundTransparency=0.9350000023841858
aJ.BorderColor3=Color3.fromRGB(0,0,0)
aJ.BorderSizePixel=0
aJ.LayoutOrder=aE
aJ.Size=UDim2.new(1,0,0,46)
aJ.Name="Input"
aJ.Parent=az

aK.CornerRadius=UDim.new(0,4)
aK.Parent=aJ

aL.Font=Enum.Font.GothamBold
aL.Text="TextBox"
aL.TextColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)
aL.TextSize=13
aL.TextXAlignment=Enum.TextXAlignment.Left
aL.TextYAlignment=Enum.TextYAlignment.Top
aL.BackgroundColor3=Color3.fromRGB(255,255,255)
aL.BackgroundTransparency=0.9990000128746033
aL.BorderColor3=Color3.fromRGB(0,0,0)
aL.BorderSizePixel=0
aL.Position=UDim2.new(0,10,0,10)
aL.Size=UDim2.new(1,-180,0,13)
aL.Name="InputTitle"
aL.Parent=aJ

aM.Font=Enum.Font.GothamBold
aM.Text="This is a TextBox"
aM.TextColor3=Color3.fromRGB(255,255,255)
aM.TextSize=12
aM.TextTransparency=0.6000000238418579
aM.TextWrapped=true
aM.TextXAlignment=Enum.TextXAlignment.Left
aM.TextYAlignment=Enum.TextYAlignment.Top
aM.BackgroundColor3=Color3.fromRGB(255,255,255)
aM.BackgroundTransparency=0.9990000128746033
aM.BorderColor3=Color3.fromRGB(0,0,0)
aM.BorderSizePixel=0
aM.Position=UDim2.new(0,10,0,23)
aM.Size=UDim2.new(1,-180,0,12)
aM.Name="InputContent"
aM.Parent=aJ

aM.Size=UDim2.new(1,-180,1,-23)
aM.TextWrapped=true
aJ.Size=UDim2.new(1,0,0,math.max(aM.AbsoluteSize.Y+40,46))

aM:GetPropertyChangedSignal"AbsoluteSize":Connect(function()
aM.TextWrapped=false
aM.Size=UDim2.new(1,-180,1,-23)
aJ.Size=UDim2.new(1,0,0,math.max(aM.TextBounds.Y+40,46))
aM.TextWrapped=true
UpdateSizeSection()
end)

aN.AnchorPoint=Vector2.new(1,0.5)
aN.BackgroundColor3=Color3.fromRGB(255,255,255)
aN.BackgroundTransparency=0.949999988079071
aN.BorderColor3=Color3.fromRGB(0,0,0)
aN.BorderSizePixel=0
aN.ClipsDescendants=true
aN.Position=UDim2.new(1,-7,0.5,0)
aN.Size=UDim2.new(0,148,0,30)
aN.Name="InputFrame"
aN.Parent=aJ

aO.CornerRadius=UDim.new(0,4)
aO.Parent=aN

aP.CursorPosition=-1
aP.Font=Enum.Font.GothamBold
aP.PlaceholderColor3=Color3.fromRGB(120.00000044703484,120.00000044703484,120.00000044703484)
aP.PlaceholderText="Write your input there"
aP.Text=""
aP.TextColor3=Color3.fromRGB(255,255,255)
aP.TextSize=12
aP.TextXAlignment=Enum.TextXAlignment.Left
aP.AnchorPoint=Vector2.new(0,0.5)
aP.BackgroundColor3=Color3.fromRGB(255,255,255)
aP.BackgroundTransparency=0.9990000128746033
aP.BorderColor3=Color3.fromRGB(0,0,0)
aP.BorderSizePixel=0
aP.Position=UDim2.new(0,5,0.5,0)
aP.Size=UDim2.new(1,-10,1,-8)
aP.Name="InputTextBox"
aP.Parent=aN
function aI.Set(aQ,aR)
aP.Text=aR
aI.Value=aR
aH.Callback(aR)
end
aP.FocusLost:Connect(function()
aI:Set(aP.Text)
end)
aE=aE+1
return aI
end
function aD.AddDropdown(aF,aG)
local aH=aG or{}
aH.Title=aH.Title or"Title"
aH.Content=aH.Content or"Content"
aH.Multi=aH.Multi or false
aH.Options=aH.Options or{}
aH.Default=aH.Default or{}
aH.Callback=aH.Callback or function()end

local aI={Value=(aH.Multi and aH.Default or{aH.Default}),Options=aH.Options}

local aJ=Instance.new"Frame";
local aK=Instance.new"TextButton";
local aL=Instance.new"UICorner";
local aM=Instance.new"TextLabel";
local aN=Instance.new"TextLabel";
local aO=Instance.new"Frame";
local aP=Instance.new"UICorner";
local aQ=Instance.new"TextLabel";
local aR=Instance.new"ImageLabel";

aJ.BackgroundColor3=Color3.fromRGB(255,255,255)
aJ.BackgroundTransparency=0.9350000023841858
aJ.BorderColor3=Color3.fromRGB(0,0,0)
aJ.BorderSizePixel=0
aJ.LayoutOrder=aE
aJ.Size=UDim2.new(1,0,0,46)
aJ.Name="Dropdown"
aJ.Parent=az

aK.Font=Enum.Font.SourceSans
aK.Text=""
aK.TextColor3=Color3.fromRGB(0,0,0)
aK.TextSize=14
aK.BackgroundColor3=Color3.fromRGB(0,0,0)
aK.BackgroundTransparency=0.9990000128746033
aK.BorderColor3=Color3.fromRGB(0,0,0)
aK.BorderSizePixel=0
aK.Size=UDim2.new(1,0,1,0)
aK.Name="ToggleButton"
aK.Parent=aJ

aL.CornerRadius=UDim.new(0,4)
aL.Parent=aJ

aM.Font=Enum.Font.GothamBold
aM.Text=aH.Title
aM.TextColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)
aM.TextSize=13
aM.TextXAlignment=Enum.TextXAlignment.Left
aM.TextYAlignment=Enum.TextYAlignment.Top
aM.BackgroundColor3=Color3.fromRGB(255,255,255)
aM.BackgroundTransparency=0.9990000128746033
aM.BorderColor3=Color3.fromRGB(0,0,0)
aM.BorderSizePixel=0
aM.Position=UDim2.new(0,10,0,10)
aM.Size=UDim2.new(1,-180,0,13)
aM.Name="DropdownTitle"
aM.Parent=aJ

aN.Font=Enum.Font.GothamBold
aN.Text=aH.Content
aN.TextColor3=Color3.fromRGB(255,255,255)
aN.TextSize=12
aN.TextTransparency=0.6000000238418579
aN.TextWrapped=true
aN.TextXAlignment=Enum.TextXAlignment.Left
aN.TextYAlignment=Enum.TextYAlignment.Top
aN.BackgroundColor3=Color3.fromRGB(255,255,255)
aN.BackgroundTransparency=0.9990000128746033
aN.BorderColor3=Color3.fromRGB(0,0,0)
aN.BorderSizePixel=0
aN.Position=UDim2.new(0,10,0,23)
aN.Size=UDim2.new(1,-180,0,12)
aN.Name="DropdownContent"
aN.Parent=aJ

aN.Size=UDim2.new(1,-180,1,-23)
aN.TextWrapped=true
aJ.Size=UDim2.new(1,0,0,math.max(aN.TextBounds.Y+40,46))

aN:GetPropertyChangedSignal"AbsoluteSize":Connect(function()
aN.TextWrapped=false
aN.Size=UDim2.new(1,-180,1,-23)
aJ.Size=UDim2.new(1,0,0,math.max(aN.TextBounds.Y+40,46))
aN.TextWrapped=true
UpdateSizeSection()
end)

aO.AnchorPoint=Vector2.new(1,0.5)
aO.BackgroundColor3=Color3.fromRGB(255,255,255)
aO.BackgroundTransparency=0.949999988079071
aO.BorderColor3=Color3.fromRGB(0,0,0)
aO.BorderSizePixel=0
aO.Position=UDim2.new(1,-7,0.5,0)
aO.Size=UDim2.new(0,148,0,30)
aO.Name="SelectOptionsFrame"
aO.LayoutOrder=_
aO.Parent=aJ

aP.CornerRadius=UDim.new(0,4)
aP.Parent=aO

aK.Activated:Connect(function()
if not N.Visible then
N.Visible=true
X:JumpToIndex(aO.LayoutOrder)
b:Create(N,TweenInfo.new(0.3),{BackgroundTransparency=0.7}):Play()
b:Create(S,TweenInfo.new(0.3),{Position=UDim2.new(1,-11,0.5,0)}):Play()
end
end)

aQ.Font=Enum.Font.GothamBold
aQ.Text=""
aQ.TextColor3=Color3.fromRGB(255,255,255)
aQ.TextSize=12
aQ.TextTransparency=0.6000000238418579
aQ.TextWrapped=true
aQ.TextXAlignment=Enum.TextXAlignment.Left
aQ.AnchorPoint=Vector2.new(0,0.5)
aQ.BackgroundColor3=Color3.fromRGB(255,255,255)
aQ.BackgroundTransparency=0.9990000128746033
aQ.BorderColor3=Color3.fromRGB(0,0,0)
aQ.BorderSizePixel=0
aQ.Position=UDim2.new(0,5,0.5,0)
aQ.Size=UDim2.new(1,-30,1,-8)
aQ.Name="OptionSelecting"
aQ.Parent=aO

aR.Image="rbxassetid://16851841101"
aR.ImageColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)
aR.AnchorPoint=Vector2.new(1,0.5)
aR.BackgroundColor3=Color3.fromRGB(255,255,255)
aR.BackgroundTransparency=0.9990000128746033
aR.BorderColor3=Color3.fromRGB(0,0,0)
aR.BorderSizePixel=0
aR.Position=UDim2.new(1,0,0.5,0)
aR.Size=UDim2.new(0,25,0,25)
aR.Name="OptionImg"
aR.Parent=aO

local aS=Instance.new"ScrollingFrame";
local aT=Instance.new"UIListLayout";

aS.CanvasSize=UDim2.new(0,0,0,0)
aS.ScrollBarImageColor3=Color3.fromRGB(0,0,0)
aS.ScrollBarThickness=0
aS.Active=true
aS.LayoutOrder=_
aS.BackgroundColor3=Color3.fromRGB(255,255,255)
aS.BackgroundTransparency=0.9990000128746033
aS.BorderColor3=Color3.fromRGB(0,0,0)
aS.BorderSizePixel=0
aS.Size=UDim2.new(1,0,1,0)
aS.Name="ScrollSelect"
aS.Parent=W

aT.Padding=UDim.new(0,3)
aT.SortOrder=Enum.SortOrder.LayoutOrder
aT.Parent=aS

local aU=0
function aI.Clear(aV)
for aW,aX in aS:GetChildren()do
if aX.Name=="Option"then
aI.Value={}
aI.Options={}
aQ.Text="Select Options"
aX:Destroy()
end
end
end
function aI.Set(aV,aW)
aI.Value=aW or aI.Value
for aX,aY in aS:GetChildren()do
if aY.Name~="UIListLayout"and not table.find(aI.Value,aY.OptionText.Text)then
b:Create(
aY.ChooseFrame,
TweenInfo.new(0.1,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Size=UDim2.new(0,0,0,0)}
):Play()
b:Create(
aY.ChooseFrame.UIStroke,
TweenInfo.new(0.1,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Transparency=0.999}
):Play()
b:Create(
aY,
TweenInfo.new(0.1,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{BackgroundTransparency=0.999}
):Play()
elseif aY.Name~="UIListLayout"and table.find(aI.Value,aY.OptionText.Text)then
b:Create(
aY.ChooseFrame.UIStroke,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Transparency=0}
):Play()
b:Create(
aY.ChooseFrame,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Size=UDim2.new(0,1,0,12)}
):Play()
b:Create(
aY,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{BackgroundTransparency=0.935}
):Play()
end
end
local aX=table.concat(aI.Value,", ")
if aX==""then
aQ.Text="Select Options"
else
aQ.Text=tostring(aX)
end
aH.Callback((aH.Multi and aI.Value or table.concat(aI.Value,",")))
end
function aI.AddOption(aV,aW)
aW=aW or"Option"
local aX=Instance.new"Frame";
local aY=Instance.new"UICorner";
local aZ=Instance.new"TextButton";
local a_=Instance.new"TextLabel"
local a0=Instance.new"Frame";
local a1=Instance.new"UIStroke";
local a2=Instance.new"UICorner";

aX.BackgroundColor3=Color3.fromRGB(255,255,255)
aX.BackgroundTransparency=0.999
aX.BorderColor3=Color3.fromRGB(0,0,0)
aX.BorderSizePixel=0
aX.LayoutOrder=aU
aX.Size=UDim2.new(1,0,0,30)
aX.Name="Option"
aX.Parent=aS

aY.CornerRadius=UDim.new(0,3)
aY.Parent=aX

aZ.Font=Enum.Font.GothamBold
aZ.Text=""
aZ.TextColor3=Color3.fromRGB(255,255,255)
aZ.TextSize=13
aZ.TextXAlignment=Enum.TextXAlignment.Left
aZ.BackgroundColor3=Color3.fromRGB(255,255,255)
aZ.BackgroundTransparency=0.9990000128746033
aZ.BorderColor3=Color3.fromRGB(0,0,0)
aZ.BorderSizePixel=0
aZ.Size=UDim2.new(1,0,1,0)
aZ.Name="OptionButton"
aZ.Parent=aX

a_.Font=Enum.Font.GothamBold
a_.Text=aW
a_.TextSize=13
a_.TextColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)
a_.TextXAlignment=Enum.TextXAlignment.Left
a_.TextYAlignment=Enum.TextYAlignment.Top
a_.BackgroundColor3=Color3.fromRGB(255,255,255)
a_.BackgroundTransparency=0.9990000128746033
a_.BorderColor3=Color3.fromRGB(0,0,0)
a_.BorderSizePixel=0
a_.Position=UDim2.new(0,8,0,8)
a_.Size=UDim2.new(1,-100,0,13)
a_.Name="OptionText"
a_.Parent=aX

a0.AnchorPoint=Vector2.new(0,0.5)
a0.BackgroundColor3=i.Color
a0.BorderColor3=Color3.fromRGB(0,0,0)
a0.BorderSizePixel=0
a0.Position=UDim2.new(0,2,0.5,0)
a0.Size=UDim2.new(0,0,0,0)
a0.Name="ChooseFrame"
a0.Parent=aX

a1.Color=i.Color
a1.Thickness=1.600000023841858
a1.Transparency=0.999
a1.Parent=a0

a2.Parent=a0

aZ.Activated:Connect(function()
CircleClick(aZ,d.X,d.Y)
if aH.Multi then
if aX.BackgroundTransparency>0.95 then
table.insert(aI.Value,aW)
aI:Set(aI.Value)
else
for a3,a4 in pairs(aI.Value)do
if a4==aW then
table.remove(aI.Value,a3)
break
end
end
aI:Set(aI.Value)
end
else
aI.Value={aW}
aI:Set(aI.Value)
end
end)
local a3=0
for a4,a5 in aS:GetChildren()do
if a5.Name~="UIListLayout"then
a3=a3+3+a5.Size.Y.Offset
end
end
aS.CanvasSize=UDim2.new(0,0,0,a3)
aU=aU+1
end
function aI.Refresh(aV,aW,aX)
aW=aW or{}
aX=aX or{}
aI:Clear()
for aY,aZ in pairs(aW)do
aI:AddOption(aZ)
wait()
end
aI.Options=aW
aI:Set(aX)
end
aI:Refresh(aI.Options,aI.Value)
aE=aE+1
_=_+1
return aI
end
al=al+1
return aD
end
Z=Z+1
return ak
end
return Y
end
return f
