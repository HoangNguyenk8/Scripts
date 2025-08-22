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
local q=b:Create(i,TweenInfo.new(0.1),{Position=p})
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
local m=h.Size.X.Offset-100
local n=h.Size.Y.Offset-100
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
function f.NewNotify(g,h)
local i=h or{}
i.Title=i.Title or""
i.Description=i.Description or""
i.Content=i.Content or""
i.Color=i.Color or Color3.fromRGB(144,144,144)
i.Duration=i.Duration or 5
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
TweenInfo.new(tonumber(0.5),Enum.EasingStyle.Back,Enum.EasingDirection.InOut),
{Position=UDim2.new(0,400,0,0)}
):Play()
task.wait(0.7)
l:Destroy()
end
w.Activated:Connect(function()
j:Close()
end)
b:Create(
m,
TweenInfo.new(tonumber(0.5),Enum.EasingStyle.Back,Enum.EasingDirection.InOut),
{Position=UDim2.new(0,0,0,0)}
):Play()
task.wait(tonumber(i.Duration))
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
k.Name="FlurioreGui"
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
t.Size=UDim2.new(1,-150,1,0)
t.Position=UDim2.new(0,r.TextBounds.X+15,0,0)
t.Parent=q
game:GetService"RunService".Stepped:Connect(function()
t.Position=UDim2.new(0,r.TextBounds.X+15,0,0)
end)
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
if e:FindFirstChild"FlurioreGui"then
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
N.BackgroundColor3=Color3.fromRGB(0,0,0)
N.BackgroundTransparency=0.999
N.BorderColor3=Color3.fromRGB(0,0,0)
N.BorderSizePixel=0
N.ClipsDescendants=true
N.Size=UDim2.new(1,0,1,0)
N.Visible=false
N.Name="MoreBlur"
N.Parent=n

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
X.Padding=UDim.new(0,20)
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
function ak.AddSection(am,an,ao)
local ap=an or"Title"
local aq=Instance.new"Frame";
local ar=ao or false
local as=Instance.new"Frame";
local at=Instance.new"UICorner";
local au=Instance.new"UIGradient";

aq.BackgroundColor3=Color3.fromRGB(255,255,255)
aq.BackgroundTransparency=0.9990000128746033
aq.BorderColor3=Color3.fromRGB(0,0,0)
aq.BorderSizePixel=0
aq.LayoutOrder=al
aq.ClipsDescendants=true
aq.LayoutOrder=1
aq.Size=UDim2.new(1,0,0,30)
aq.Name="Section"
aq.Parent=ad

local av=Instance.new"Frame";
local aw=Instance.new"UICorner";
Instance.new"UIStroke";
local ax=Instance.new"TextButton";
local ay=Instance.new"Frame";
local az=Instance.new"ImageLabel";
local aA=Instance.new"TextLabel";

av.AnchorPoint=Vector2.new(0.5,0)
av.BackgroundColor3=Color3.fromRGB(255,255,255)
av.BackgroundTransparency=0.9350000023841858
av.BorderColor3=Color3.fromRGB(0,0,0)
av.BorderSizePixel=0
av.LayoutOrder=1
av.Position=UDim2.new(0.5,0,0,0)
av.Size=UDim2.new(1,1,0,30)
av.Name="SectionReal"
av.Parent=aq

aw.CornerRadius=UDim.new(0,4)
aw.Parent=av

ax.Font=Enum.Font.SourceSans
ax.Text=""
ax.TextColor3=Color3.fromRGB(0,0,0)
ax.TextSize=14
ax.BackgroundColor3=Color3.fromRGB(255,255,255)
ax.BackgroundTransparency=0.9990000128746033
ax.BorderColor3=Color3.fromRGB(0,0,0)
ax.BorderSizePixel=0
ax.Size=UDim2.new(1,0,1,0)
ax.Name="SectionButton"
ax.Parent=av

ay.AnchorPoint=Vector2.new(1,0.5)
ay.BackgroundColor3=Color3.fromRGB(0,0,0)
ay.BackgroundTransparency=0.9990000128746033
ay.BorderColor3=Color3.fromRGB(0,0,0)
ay.BorderSizePixel=0
ay.Position=UDim2.new(1,-5,0.5,0)
ay.Size=UDim2.new(0,20,0,20)
ay.Name="FeatureFrame"
ay.Parent=av

az.Image="rbxassetid://16851841101"
az.AnchorPoint=Vector2.new(0.5,0.5)
az.BackgroundColor3=Color3.fromRGB(255,255,255)
az.BackgroundTransparency=0.9990000128746033
az.BorderColor3=Color3.fromRGB(0,0,0)
az.BorderSizePixel=0
az.Position=UDim2.new(0.5,0,0.5,0)
az.Rotation=-90
az.Size=UDim2.new(1,6,1,6)
az.Name="FeatureImg"
az.Parent=ay

aA.Font=Enum.Font.GothamBold
aA.Text=ap
aA.TextColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)
aA.TextSize=13
aA.TextXAlignment=Enum.TextXAlignment.Left
aA.AnchorPoint=Vector2.new(0,0.5)
aA.BackgroundColor3=Color3.fromRGB(255,255,255)
aA.BackgroundTransparency=0.9990000128746033
aA.BorderColor3=Color3.fromRGB(0,0,0)
aA.BorderSizePixel=0
aA.Position=UDim2.new(0,10,0.5,0)
aA.Size=UDim2.new(1,-50,1,0)
aA.Name="SectionTitle"
aA.Parent=av

as.BackgroundColor3=Color3.fromRGB(255,255,255)
as.BorderColor3=Color3.fromRGB(0,0,0)
as.AnchorPoint=Vector2.new(0.5,0)
as.BorderSizePixel=0
as.Position=UDim2.new(0.5,0,0,33)
as.Size=UDim2.new(0,0,0,2)
as.Name="SectionDecideFrame"
as.Parent=aq

at.Parent=as

au.Color=ColorSequence.new{
ColorSequenceKeypoint.new(0,Color3.fromRGB(20,20,20)),
ColorSequenceKeypoint.new(0.5,i.Color),
ColorSequenceKeypoint.new(1,Color3.fromRGB(20,20,20))
}
au.Parent=as

local aB=Instance.new"Frame";
local aC=Instance.new"UICorner";
local aD=Instance.new"UIListLayout";

aB.AnchorPoint=Vector2.new(0.5,0)
aB.BackgroundColor3=Color3.fromRGB(255,255,255)
aB.BackgroundTransparency=0.9990000128746033
aB.BorderColor3=Color3.fromRGB(0,0,0)
aB.BorderSizePixel=0
aB.ClipsDescendants=true
aB.LayoutOrder=1
aB.Position=UDim2.new(0.5,0,0,38)
aB.Size=UDim2.new(1,0,0,100)
aB.Name="SectionAdd"
aB.Parent=aq

aC.CornerRadius=UDim.new(0,2)
aC.Parent=aB

aD.Padding=UDim.new(0,3)
aD.SortOrder=Enum.SortOrder.LayoutOrder
aD.Parent=aB
local aE=true
local function UpdateSizeScroll()
local aF=0
for aG,aH in ad:GetChildren()do
if aH.Name~="UIListLayout"then
aF=aF+3+aH.Size.Y.Offset
end
end
ad.CanvasSize=UDim2.new(0,0,0,aF)
end
local function UpdateSizeSection()
if aE then
local aF=38
for aG,aH in aB:GetChildren()do
if aH.Name~="UIListLayout"and aH.Name~="UICorner"then
aF=aF+aH.Size.Y.Offset+3
end
end
b:Create(ay,TweenInfo.new(0.5),{Rotation=90}):Play()
b:Create(aq,TweenInfo.new(0.5),{Size=UDim2.new(1,1,0,aF)}):Play()
b:Create(aB,TweenInfo.new(0.5),{Size=UDim2.new(1,0,0,aF-38)}):Play()
b:Create(as,TweenInfo.new(0.5),{Size=UDim2.new(1,0,0,2)}):Play()
task.wait(0.5)
UpdateSizeScroll()
end
end
if not ar then
ay.Rotation=0
aq.Size=UDim2.new(1,1,0,30)
as.Size=UDim2.new(0,0,0,2)
aE=false
UpdateSizeScroll()
end
ax.Activated:Connect(function()
CircleClick(ax,d.X,d.Y)
if aE then
b:Create(ay,TweenInfo.new(0.35),{Rotation=0}):Play()
b:Create(aq,TweenInfo.new(0.35),{Size=UDim2.new(1,1,0,30)}):Play()
b:Create(as,TweenInfo.new(0.35),{Size=UDim2.new(0,0,0,2)}):Play()
aE=false
task.wait(0.35)
UpdateSizeScroll()
else
aE=true
UpdateSizeSection()
end
end)
aB.ChildAdded:Connect(UpdateSizeSection)
aB.ChildRemoved:Connect(UpdateSizeSection)
UpdateSizeScroll()

local aF={}
local aG=0
function aF.AddParagraph(aH,aI)
local aJ=aI or{}
aJ.Title=aJ.Title or"Title"
aJ.Content=aJ.Content or""
local aK={}

local aL=Instance.new"Frame";
local aM=Instance.new"UICorner";
local aN=Instance.new"TextLabel";
local aO=Instance.new"TextLabel";

aL.BackgroundColor3=Color3.fromRGB(255,255,255)
aL.BackgroundTransparency=0.9350000023841858
aL.BorderColor3=Color3.fromRGB(0,0,0)
aL.BorderSizePixel=0
aL.LayoutOrder=aG
aL.Size=UDim2.new(1,0,0,40)
aL.Name="Paragraph"
aL.Parent=aB

aM.CornerRadius=UDim.new(0,4)
aM.Parent=aL

aN.Font=Enum.Font.GothamBold
aN.Text=aJ.Title
aN.TextColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)
aN.TextSize=13
aN.TextXAlignment=Enum.TextXAlignment.Left
aN.BackgroundColor3=Color3.fromRGB(255,255,255)
aN.BackgroundTransparency=0.9990000128746033
aN.BorderColor3=Color3.fromRGB(0,0,0)
aN.BorderSizePixel=0
aN.Position=UDim2.new(0,10,0,0)
aN.Size=UDim2.new(1,-16,1,0)
aN.Name="ParagraphTitle"
aN.Parent=aL

aO.Font=Enum.Font.GothamBold
aO.Text=aJ.Content
aO.RichText=true
aO.TextColor3=Color3.fromRGB(122,122,122)
aO.TextSize=12
aO.TextTransparency=0
aO.TextXAlignment=Enum.TextXAlignment.Left
aO.TextYAlignment=Enum.TextYAlignment.Top
aO.BackgroundColor3=Color3.fromRGB(255,255,255)
aO.BackgroundTransparency=0.9990000128746033
aO.BorderColor3=Color3.fromRGB(0,0,0)
aO.BorderSizePixel=0
aO.Position=UDim2.new(0,10,0,23)
aO.Name="ParagraphDescription"
aO.Parent=aL

if aO.Text~=""then
aN.Size=UDim2.new(1,-16,0,13)
aN.Position=UDim2.new(0,10,0,10)
aO.Size=UDim2.new(1,-16,0,1,-23)
aO.TextWrapped=true
aL.Size=UDim2.new(1,0,0,math.max(aO.TextBounds.Y+40,46))
end
aO:GetPropertyChangedSignal"AbsoluteSize":Connect(function()
if aO.Text~=""then
aN.Size=UDim2.new(1,-16,0,13)
aN.Position=UDim2.new(0,10,0,10)
aO.TextWrapped=false
aO.Size=UDim2.new(1,-16,1,-23)
aL.Size=UDim2.new(1,0,0,math.max(aO.TextBounds.Y+40,46))
aO.TextWrapped=true
UpdateSizeSection()
end
end)

function aK.Set(aP,aQ)
local aR=aQ or{}
aR.Title=aR.Title or aN.Text
aR.Content=aR.Content or aO.Text

aN.Text=aR.Title
aO.Text=aR.Content
aO.TextWrapped=false
aO.Size=UDim2.new(1,-16,0,1,-23)
aO.TextWrapped=true
aL.Size=UDim2.new(1,0,0,math.max(aO.TextBounds.Y+40,46))
end
aG=aG+1
return aK
end
function aF.AddButton(aH,aI)
local aJ=aI or{}
aJ.Title=aJ.Title or"Title"
aJ.Description=aJ.Description or""
aJ.Icon=aJ.Icon or"rbxassetid://16932740082"
aJ.Callback=aJ.Callback or function()end
local aK={}

local aL=Instance.new"Frame";
local aM=Instance.new"UICorner";
local aN=Instance.new"TextLabel";
local aO=Instance.new"TextLabel";
local aP=Instance.new"TextButton";
local aQ=Instance.new"Frame";
local aR=Instance.new"ImageLabel";

aL.BackgroundColor3=Color3.fromRGB(255,255,255)
aL.BackgroundTransparency=0.9350000023841858
aL.BorderColor3=Color3.fromRGB(0,0,0)
aL.BorderSizePixel=0
aL.LayoutOrder=aG
aL.Size=UDim2.new(1,0,0,38)
aL.Name="Button"
aL.Parent=aB

aM.CornerRadius=UDim.new(0,4)
aM.Parent=aL

aN.Font=Enum.Font.GothamBold
aN.Text=aJ.Title
aN.TextColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)
aN.TextSize=13
aN.TextXAlignment=Enum.TextXAlignment.Left
aN.BackgroundColor3=Color3.fromRGB(255,255,255)
aN.BackgroundTransparency=0.9990000128746033
aN.BorderColor3=Color3.fromRGB(0,0,0)
aN.BorderSizePixel=0
aN.Position=UDim2.new(0,10,0,0)
aN.Size=UDim2.new(1,-100,1,0)
aN.Name="ButtonTitle"
aN.Parent=aL

aO.Font=Enum.Font.GothamBold
aO.Text=aJ.Description
aO.TextColor3=Color3.fromRGB(122,122,122)
aO.TextSize=12
aO.TextTransparency=0
aO.TextXAlignment=Enum.TextXAlignment.Left
aO.TextYAlignment=Enum.TextYAlignment.Top
aO.BackgroundColor3=Color3.fromRGB(255,255,255)
aO.BackgroundTransparency=0.9990000128746033
aO.BorderColor3=Color3.fromRGB(0,0,0)
aO.BorderSizePixel=0
aO.Position=UDim2.new(0,10,0,23)
aO.Name="ButtonDescription"
aO.RichText=true
aO.Parent=aL

if aO.Text~=""then
aO.Size=UDim2.new(1,-100,1,-23)
aO.TextWrapped=true
aL.Size=UDim2.new(1,0,0,math.max(aO.AbsoluteSize.Y+40,46))
aO:GetPropertyChangedSignal"AbsoluteSize":Connect(function()
aO.TextWrapped=false
aN.Position=UDim2.new(0,10,0,10)
aN.Size=UDim2.new(1,-100,0,13)
aO.Size=UDim2.new(1,-100,1,-23)
aL.Size=UDim2.new(1,0,0,math.max(aO.TextBounds.Y+40,46))
aO.TextWrapped=true
UpdateSizeSection()
end)
end

aP.Font=Enum.Font.SourceSans
aP.Text=""
aP.TextColor3=Color3.fromRGB(0,0,0)
aP.TextSize=14
aP.BackgroundColor3=Color3.fromRGB(0,0,0)
aP.BackgroundTransparency=0.9990000128746033
aP.BorderColor3=Color3.fromRGB(0,0,0)
aP.BorderSizePixel=0
aP.Size=UDim2.new(1,0,1,0)
aP.Name="ButtonButton"
aP.Parent=aL

aQ.AnchorPoint=Vector2.new(1,0.5)
aQ.BackgroundColor3=Color3.fromRGB(0,0,0)
aQ.BackgroundTransparency=0.9990000128746033
aQ.BorderColor3=Color3.fromRGB(0,0,0)
aQ.BorderSizePixel=0
aQ.Position=UDim2.new(1,-15,0.5,0)
aQ.Size=UDim2.new(0,25,0,25)
aQ.Name="FeatureFrame"
aQ.Parent=aL

aR.Image=aJ.Icon
aR.AnchorPoint=Vector2.new(0.5,0.5)
aR.BackgroundColor3=Color3.fromRGB(255,255,255)
aR.BackgroundTransparency=0.9990000128746033
aR.BorderColor3=Color3.fromRGB(0,0,0)
aR.BorderSizePixel=0
aR.Position=UDim2.new(0.5,0,0.5,0)
aR.Size=UDim2.new(1,0,1,0)
aR.Name="FeatureImg"
aR.Parent=aQ

aP.Activated:Connect(function()
CircleClick(aP,d.X,d.Y)
aJ.Callback()
end)
aG=aG+1
return aK
end
function aF.AddToggle(aH,aI)
local aJ=aI or{}
aJ.Title=aJ.Title or"Title"
aJ.Description=aJ.Description or""
aJ.Default=aJ.Default or false
aJ.Callback=aJ.Callback or function()end
local aK={Value=aJ.Default,Options=aJ.Options,Selecting=aJ.Selecting}

local aL=Instance.new"Frame";
local aM=Instance.new"UICorner";
local aN=Instance.new"TextLabel";
local aO=Instance.new"TextLabel";
local aP=Instance.new"TextButton";
Instance.new"Frame";
Instance.new"ImageLabel";
Instance.new"UICorner";
Instance.new"TextButton";
local aQ=Instance.new"Frame";
local aR=Instance.new"UICorner";
local aS=Instance.new"UIStroke";
local aT=Instance.new"Frame";
local aU=Instance.new"UICorner";

aL.BackgroundColor3=Color3.fromRGB(255,255,255)
aL.BackgroundTransparency=0.9350000023841858
aL.BorderColor3=Color3.fromRGB(0,0,0)
aL.BorderSizePixel=0
aL.LayoutOrder=aG
aL.Size=UDim2.new(1,0,0,38)
aL.Name="Toggle"
aL.Parent=aB

aM.CornerRadius=UDim.new(0,4)
aM.Parent=aL

aN.Font=Enum.Font.GothamBold
aN.Text=aJ.Title
aN.TextSize=13
aN.TextColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)
aN.TextXAlignment=Enum.TextXAlignment.Left
aN.BackgroundColor3=Color3.fromRGB(255,255,255)
aN.BackgroundTransparency=0.9990000128746033
aN.BorderColor3=Color3.fromRGB(0,0,0)
aN.BorderSizePixel=0
aN.Position=UDim2.new(0,10,0,0)
aN.Size=UDim2.new(1,-100,1,0)
aN.Name="ToggleTitle"
aN.Parent=aL

aO.Font=Enum.Font.GothamBold
aO.Text=aJ.Description
aO.TextColor3=Color3.fromRGB(122,122,122)
aO.TextSize=12
aO.TextTransparency=0
aO.TextXAlignment=Enum.TextXAlignment.Left
aO.TextYAlignment=Enum.TextYAlignment.Top
aO.BackgroundColor3=Color3.fromRGB(255,255,255)
aO.BackgroundTransparency=0.9990000128746033
aO.BorderColor3=Color3.fromRGB(0,0,0)
aO.BorderSizePixel=0
aO.Position=UDim2.new(0,10,0,23)
aO.Size=UDim2.new(1,-100,0,12)
aO.RichText=true
aO.Name="ToggleDescription"
aO.Parent=aL
if aO.Text~=""then
aO.Size=UDim2.new(1,-100,1,-23)
aO.TextWrapped=true
aL.Size=UDim2.new(1,0,0,math.max(aO.AbsoluteSize.Y+40,46))
aO:GetPropertyChangedSignal"AbsoluteSize":Connect(function()
aN.Position=UDim2.new(0,10,0,10)
aN.Size=UDim2.new(1,-100,0,13)
aL.Size=UDim2.new(1,0,0,math.max(aO.TextBounds.Y+40,46))
aO.Size=UDim2.new(1,-100,1,-23)
aO.TextWrapped=true
UpdateSizeSection()
end)
end

aP.Font=Enum.Font.SourceSans
aP.Text=""
aP.TextColor3=Color3.fromRGB(0,0,0)
aP.TextSize=14
aP.BackgroundColor3=Color3.fromRGB(0,0,0)
aP.BackgroundTransparency=0.9990000128746033
aP.BorderColor3=Color3.fromRGB(0,0,0)
aP.BorderSizePixel=0
aP.Size=UDim2.new(1,0,1,0)
aP.Name="ToggleButton"
aP.Parent=aL

aQ.AnchorPoint=Vector2.new(1,0.5)
aQ.BackgroundColor3=Color3.fromRGB(255,255,255)
aQ.BackgroundTransparency=0.9200000166893005
aQ.BorderColor3=Color3.fromRGB(0,0,0)
aQ.BorderSizePixel=0
aQ.Position=UDim2.new(1,-10,0.5,0)
aQ.Size=UDim2.new(0,30,0,15)
aQ.Name="FeatureFrame"
aQ.Parent=aL

aR.Parent=aQ

aS.Color=Color3.fromRGB(255,255,255)
aS.Thickness=2
aS.Transparency=0.9
aS.Parent=aQ

aT.BackgroundColor3=Color3.fromRGB(230.00000149011612,230.00000149011612,230.00000149011612)
aT.BorderColor3=Color3.fromRGB(0,0,0)
aT.BorderSizePixel=0
aT.Position=UDim2.new(0,0,0,0)
aT.Size=UDim2.new(0,14,0,14)
aT.Name="ToggleCircle"
aT.Parent=aQ

aU.CornerRadius=UDim.new(0,15)
aU.Parent=aT

aP.Activated:Connect(function()
CircleClick(aP,d.X,d.Y)
aK.Value=not aK.Value
aK:Set(aK.Value)
end)
function aK.Set(aV,aW)
aJ.Callback(aW)
if aW then
b:Create(
aT,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Position=UDim2.new(0,15,0,0)}
):Play()
b:Create(
aS,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Color=i.Color,Transparency=0}
):Play()
b:Create(
aQ,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{BackgroundColor3=i.Color,BackgroundTransparency=0}
):Play()
else
b:Create(
aT,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Position=UDim2.new(0,0,0,0)}
):Play()
b:Create(
aS,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Color=Color3.fromRGB(255,255,255),Transparency=0.9}
):Play()
b:Create(
aQ,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=0.9200000166893005}
):Play()
end
end
aK:Set(aK.Value)
aG=aG+1
return aK
end
function aF.AddSlider(aH,aI)
local aJ=aI or{}
aJ.Title=aJ.Title or"Slider"
aJ.Description=aJ.Description or""
aJ.Increment=aJ.Increment or 1
aJ.Min=aJ.Min or 0
aJ.Max=aJ.Max or 100
aJ.Default=aJ.Default or 50
aJ.Callback=aJ.Callback or function()end
local aK={Value=aJ.Default}

local aL=Instance.new"Frame";
local aM=Instance.new"UICorner";
local aN=Instance.new"TextLabel";
local aO=Instance.new"TextLabel";
local aP=Instance.new"Frame";
local aQ=Instance.new"UICorner";
local aR=Instance.new"TextBox";
local aS=Instance.new"Frame";
local aT=Instance.new"UICorner";
local aU=Instance.new"Frame";
local aV=Instance.new"UICorner";
Instance.new"UIStroke";
local aW=Instance.new"Frame";
local aX=Instance.new"UICorner";
local aY=Instance.new"UIStroke";
Instance.new"UIStroke";

aL.BackgroundColor3=Color3.fromRGB(255,255,255)
aL.BackgroundTransparency=0.9350000023841858
aL.BorderColor3=Color3.fromRGB(0,0,0)
aL.BorderSizePixel=0
aL.LayoutOrder=aG
aL.Size=UDim2.new(1,0,0,38)
aL.Name="Slider"
aL.Parent=aB

aM.CornerRadius=UDim.new(0,4)
aM.Parent=aL

aN.Font=Enum.Font.GothamBold
aN.Text=aJ.Title
aN.TextColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)
aN.TextSize=13
aN.TextXAlignment=Enum.TextXAlignment.Left
aN.BackgroundColor3=Color3.fromRGB(255,255,255)
aN.BackgroundTransparency=0.9990000128746033
aN.BorderColor3=Color3.fromRGB(0,0,0)
aN.BorderSizePixel=0
aN.Position=UDim2.new(0,10,0,0)
aN.Size=UDim2.new(1,-180,1,0)
aN.Name="SliderTitle"
aN.Parent=aL

aO.Font=Enum.Font.GothamBold
aO.Text=aJ.Description
aO.TextColor3=Color3.fromRGB(122,122,122)
aO.TextSize=12
aO.TextTransparency=0
aO.TextXAlignment=Enum.TextXAlignment.Left
aO.TextYAlignment=Enum.TextYAlignment.Top
aO.BackgroundColor3=Color3.fromRGB(255,255,255)
aO.BackgroundTransparency=0.9990000128746033
aO.BorderColor3=Color3.fromRGB(0,0,0)
aO.BorderSizePixel=0
aO.Position=UDim2.new(0,10,0,23)
aO.Size=UDim2.new(1,-180,0,12)
aO.RichText=true
aO.Name="SliderDescription"
aO.Parent=aL

if aO.Text~=""then
aO.Size=UDim2.new(1,-180,1,-23)
aO.TextWrapped=true
aL.Size=UDim2.new(1,0,0,math.max(aO.AbsoluteSize.Y+40,46))

aO:GetPropertyChangedSignal"AbsoluteSize":Connect(function()
aN.Position=UDim2.new(0,10,0,10)
aN.Size=UDim2.new(1,-180,0,13)
aO.TextWrapped=false
aO.Size=UDim2.new(1,-180,1,-23)
aL.Size=UDim2.new(1,0,0,math.max(aO.TextBounds.Y+40,46))
aO.TextWrapped=true
UpdateSizeSection()
end)
end

aP.AnchorPoint=Vector2.new(0,0.5)
aP.BackgroundColor3=i.Color
aP.BorderColor3=Color3.fromRGB(0,0,0)
aP.BorderSizePixel=0
aP.Position=UDim2.new(1,-155,0.5,0)
aP.Size=UDim2.new(0,28,0,20)
aP.Name="SliderInput"
aP.Parent=aL

aQ.CornerRadius=UDim.new(0,2)
aQ.Parent=aP

aR.Font=Enum.Font.GothamBold
aR.Text="90"
aR.TextColor3=Color3.fromRGB(255,255,255)
aR.TextSize=13
aR.TextWrapped=true
aR.BackgroundColor3=Color3.fromRGB(0,0,0)
aR.BackgroundTransparency=0.9990000128746033
aR.BorderColor3=Color3.fromRGB(0,0,0)
aR.BorderSizePixel=0
aR.Position=UDim2.new(0,-1,0,0)
aR.Size=UDim2.new(1,0,1,0)
aR.Parent=aP

aS.AnchorPoint=Vector2.new(1,0.5)
aS.BackgroundColor3=Color3.fromRGB(255,255,255)
aS.BackgroundTransparency=0.800000011920929
aS.BorderColor3=Color3.fromRGB(0,0,0)
aS.BorderSizePixel=0
aS.Position=UDim2.new(1,-20,0.5,0)
aS.Size=UDim2.new(0,100,0,3)
aS.Name="SliderFrame"
aS.Parent=aL

aT.Parent=aS

aU.AnchorPoint=Vector2.new(0,0.5)
aU.BackgroundColor3=i.Color
aU.BorderColor3=Color3.fromRGB(0,0,0)
aU.BorderSizePixel=0
aU.Position=UDim2.new(0,0,0.5,0)
aU.Size=UDim2.new(0.899999976,0,0,1)
aU.Name="SliderDraggable"
aU.Parent=aS

aV.Parent=aU

aW.AnchorPoint=Vector2.new(1,0.5)
aW.BackgroundColor3=i.Color
aW.BorderColor3=Color3.fromRGB(0,0,0)
aW.BorderSizePixel=0
aW.Position=UDim2.new(1,4,0.5,0)
aW.Size=UDim2.new(0,8,0,8)
aW.Name="SliderCircle"
aW.Parent=aU

aX.Parent=aW

aY.Color=i.Color
aY.Parent=aW

local aZ=false
local function Round(a_,a0)
local a1=math.floor(a_/a0+(math.sign(a_)*0.5))*a0
if a1<0 then
a1=a1+a0
end
return a1
end
function aK.Set(a_,a0)
a0=math.clamp(Round(a0,aJ.Increment),aJ.Min,aJ.Max)
aK.Value=a0
aR.Text=tostring(a0)
b:Create(
aU,
TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
{Size=UDim2.fromScale((a0-aJ.Min)/(aJ.Max-aJ.Min),1)}
):Play()
end
aS.InputBegan:Connect(function(a_)
if a_.UserInputType==Enum.UserInputType.MouseButton1 then
aZ=true
end
end)
aS.InputEnded:Connect(function(a_)
if a_.UserInputType==Enum.UserInputType.MouseButton1 then
aZ=false
aJ.Callback(aK.Value)
end
end)
a.InputChanged:Connect(function(a_)
if aZ and a_.UserInputType==Enum.UserInputType.MouseMovement then
local a0=math.clamp((a_.Position.X-aS.AbsolutePosition.X)/aS.AbsoluteSize.X,0,1)
aK:Set(aJ.Min+((aJ.Max-aJ.Min)*a0))
end
end)
aR:GetPropertyChangedSignal"Text":Connect(function()
local a_=aR.Text:gsub("[^%d]","")
if a_~=""then
local a0=math.min(tonumber(a_),aJ.Max)
aR.Text=tostring(a0)
else
aR.Text=tostring(a_)
end
end)
aR.FocusLost:Connect(function()
if aR.Text~=""then
aK:Set(tonumber(aR.Text))
else
aK:Set(0)
end
end)
aK:Set(tonumber(aJ.Default))
aG=aG+1
return aK
end
function aF.AddInput(aH,aI)
local aJ=aI or{}
aJ.Title=aJ.Title or"Title"
aJ.Description=aJ.Description or""
aJ.Callback=aJ.Callback or function()end
local aK={Value=""}

local aL=Instance.new"Frame";
local aM=Instance.new"UICorner";
local aN=Instance.new"TextLabel";
local aO=Instance.new"TextLabel";
local aP=Instance.new"Frame";
local aQ=Instance.new"UICorner";
local aR=Instance.new"TextBox";

aL.BackgroundColor3=Color3.fromRGB(255,255,255)
aL.BackgroundTransparency=0.9350000023841858
aL.BorderColor3=Color3.fromRGB(0,0,0)
aL.BorderSizePixel=0
aL.LayoutOrder=aG
aL.Size=UDim2.new(1,0,0,46)
aL.Name="Input"
aL.Parent=aB

aM.CornerRadius=UDim.new(0,4)
aM.Parent=aL

aN.Font=Enum.Font.GothamBold
aN.Text="TextBox"
aN.TextColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)
aN.TextSize=13
aN.TextXAlignment=Enum.TextXAlignment.Left
aN.BackgroundColor3=Color3.fromRGB(255,255,255)
aN.BackgroundTransparency=0.9990000128746033
aN.BorderColor3=Color3.fromRGB(0,0,0)
aN.BorderSizePixel=0
aN.Position=UDim2.new(0,10,0,0)
aN.Size=UDim2.new(1,-180,1,0)
aN.Name="InputTitle"
aN.Parent=aL

aO.Font=Enum.Font.GothamBold
aO.Text=aJ.Description
aO.TextColor3=Color3.fromRGB(122,122,122)
aO.TextSize=12
aO.TextTransparency=0
aO.TextWrapped=true
aO.TextXAlignment=Enum.TextXAlignment.Left
aO.TextYAlignment=Enum.TextYAlignment.Top
aO.BackgroundColor3=Color3.fromRGB(255,255,255)
aO.BackgroundTransparency=0.9990000128746033
aO.BorderColor3=Color3.fromRGB(0,0,0)
aO.BorderSizePixel=0
aO.Position=UDim2.new(0,10,0,23)
aO.Size=UDim2.new(1,-180,0,12)
aO.Name="InputDescription"
aO.RichText=true
aO.Parent=aL

if aO.Text~=""then
aO.Size=UDim2.new(1,-180,1,-23)
aO.TextWrapped=true
aL.Size=UDim2.new(1,0,0,math.max(aO.AbsoluteSize.Y+40,46))

aO:GetPropertyChangedSignal"AbsoluteSize":Connect(function()
aO.TextWrapped=false
aN.Position=UDim2.new(0,10,0,10)
aN.Size=UDim2.new(1,-180,0,13)
aO.Size=UDim2.new(1,-180,1,-23)
aL.Size=UDim2.new(1,0,0,math.max(aO.TextBounds.Y+40,46))
aO.TextWrapped=true
UpdateSizeSection()
end)
end

aP.AnchorPoint=Vector2.new(1,0.5)
aP.BackgroundColor3=Color3.fromRGB(255,255,255)
aP.BackgroundTransparency=0.949999988079071
aP.BorderColor3=Color3.fromRGB(0,0,0)
aP.BorderSizePixel=0
aP.ClipsDescendants=true
aP.Position=UDim2.new(1,-7,0.5,0)
aP.Size=UDim2.new(0,148,0,30)
aP.Name="InputFrame"
aP.Parent=aL

aQ.CornerRadius=UDim.new(0,4)
aQ.Parent=aP

aR.CursorPosition=-1
aR.Font=Enum.Font.GothamBold
aR.PlaceholderColor3=Color3.fromRGB(120.00000044703484,120.00000044703484,120.00000044703484)
aR.PlaceholderText="Write your input there"
aR.Text=""
aR.TextColor3=Color3.fromRGB(255,255,255)
aR.TextSize=12
aR.TextXAlignment=Enum.TextXAlignment.Left
aR.AnchorPoint=Vector2.new(0,0.5)
aR.BackgroundColor3=Color3.fromRGB(255,255,255)
aR.BackgroundTransparency=0.9990000128746033
aR.BorderColor3=Color3.fromRGB(0,0,0)
aR.BorderSizePixel=0
aR.Position=UDim2.new(0,5,0.5,0)
aR.Size=UDim2.new(1,-10,1,-8)
aR.Name="InputTextBox"
aR.Parent=aP
function aK.Set(aS,aT)
aR.Text=aT
aK.Value=aT
aJ.Callback(aT)
end
aR.FocusLost:Connect(function()
aK:Set(aR.Text)
end)
aG=aG+1
return aK
end
function aF.AddDropdown(aH,aI)
local aJ=aI or{}
aJ.Title=aJ.Title or"Title"
aJ.Description=aJ.Description or""
aJ.Multi=aJ.Multi or false
aJ.Values=aJ.Values or{}
aJ.Default=aJ.Default or(aJ.Multi and{}or"")
aJ.Callback=aJ.Callback or function()end

local aK={Value=aJ.Default,Options=aJ.Values}

local aL=Instance.new"Frame";
local aM=Instance.new"TextButton";
local aN=Instance.new"UICorner";
local aO=Instance.new"TextLabel";
local aP=Instance.new"TextLabel";
local aQ=Instance.new"Frame";
local aR=Instance.new"UICorner";
local aS=Instance.new"TextLabel";
local aT=Instance.new"ImageLabel";

aL.BackgroundColor3=Color3.fromRGB(255,255,255)
aL.BackgroundTransparency=0.9350000023841858
aL.BorderColor3=Color3.fromRGB(0,0,0)
aL.BorderSizePixel=0
aL.LayoutOrder=aG
aL.Size=UDim2.new(1,0,0,46)
aL.Name="Dropdown"
aL.Parent=aB

aM.Font=Enum.Font.SourceSans
aM.Text=""
aM.TextColor3=Color3.fromRGB(0,0,0)
aM.TextSize=14
aM.BackgroundColor3=Color3.fromRGB(0,0,0)
aM.BackgroundTransparency=0.9990000128746033
aM.BorderColor3=Color3.fromRGB(0,0,0)
aM.BorderSizePixel=0
aM.Size=UDim2.new(1,0,1,0)
aM.Name="ToggleButton"
aM.Parent=aL

aN.CornerRadius=UDim.new(0,4)
aN.Parent=aL

aO.Font=Enum.Font.GothamBold
aO.Text=aJ.Title
aO.TextColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)
aO.TextSize=13
aO.TextXAlignment=Enum.TextXAlignment.Left
aO.BackgroundColor3=Color3.fromRGB(255,255,255)
aO.BackgroundTransparency=0.9990000128746033
aO.BorderColor3=Color3.fromRGB(0,0,0)
aO.BorderSizePixel=0
aO.Position=UDim2.new(0,10,0,0)
aO.Size=UDim2.new(1,-180,1,0)
aO.Name="DropdownTitle"
aO.Parent=aL

aP.Font=Enum.Font.GothamBold
aP.Text=aJ.Description
aP.TextColor3=Color3.fromRGB(122,122,122)
aP.TextSize=12
aP.TextTransparency=0
aP.TextWrapped=true
aP.TextXAlignment=Enum.TextXAlignment.Left
aP.TextYAlignment=Enum.TextYAlignment.Top
aP.BackgroundColor3=Color3.fromRGB(255,255,255)
aP.BackgroundTransparency=0.9990000128746033
aP.BorderColor3=Color3.fromRGB(0,0,0)
aP.BorderSizePixel=0
aP.Position=UDim2.new(0,10,0,23)
aP.Size=UDim2.new(1,-180,0,12)
aP.RichText=true
aP.Name="DropdownDescription"
aP.Parent=aL

if aP.Text~=""then
aP.Size=UDim2.new(1,-180,1,-23)
aP.TextWrapped=true
aL.Size=UDim2.new(1,0,0,math.max(aP.TextBounds.Y+40,46))
aP:GetPropertyChangedSignal"AbsoluteSize":Connect(function()
aP.TextWrapped=false
aO.Position=UDim2.new(0,10,0,10)
aO.Size=UDim2.new(1,-180,0,13)
aP.Size=UDim2.new(1,-180,1,-23)
aL.Size=UDim2.new(1,0,0,math.max(aP.TextBounds.Y+40,46))
aP.TextWrapped=true
UpdateSizeSection()
end)
end

aQ.AnchorPoint=Vector2.new(1,0.5)
aQ.BackgroundColor3=Color3.fromRGB(255,255,255)
aQ.BackgroundTransparency=0.949999988079071
aQ.BorderColor3=Color3.fromRGB(0,0,0)
aQ.BorderSizePixel=0
aQ.Position=UDim2.new(1,-7,0.5,0)
aQ.Size=UDim2.new(0,148,0,30)
aQ.Name="SelectOptionsFrame"
aQ.LayoutOrder=_
aQ.Parent=aL

aR.CornerRadius=UDim.new(0,4)
aR.Parent=aQ

aM.Activated:Connect(function()
if not N.Visible then
N.Visible=true
X:JumpToIndex(aQ.LayoutOrder)
b:Create(N,TweenInfo.new(0.3),{BackgroundTransparency=0.7}):Play()
b:Create(S,TweenInfo.new(0.3),{Position=UDim2.new(1,-11,0.5,0)}):Play()
end
end)

aS.Font=Enum.Font.GothamBold
aS.Text=""
aS.TextColor3=Color3.fromRGB(255,255,255)
aS.TextSize=12
aS.TextTransparency=0
aS.TextWrapped=true
aS.TextXAlignment=Enum.TextXAlignment.Left
aS.AnchorPoint=Vector2.new(0,0.5)
aS.BackgroundColor3=Color3.fromRGB(255,255,255)
aS.BackgroundTransparency=0.9990000128746033
aS.BorderColor3=Color3.fromRGB(0,0,0)
aS.BorderSizePixel=0
aS.Position=UDim2.new(0,5,0.5,0)
aS.Size=UDim2.new(1,-30,1,-8)
aS.Name="OptionSelecting"
aS.Parent=aQ

aT.Image="rbxassetid://16851841101"
aT.ImageColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)
aT.AnchorPoint=Vector2.new(1,0.5)
aT.BackgroundColor3=Color3.fromRGB(255,255,255)
aT.BackgroundTransparency=0.9990000128746033
aT.BorderColor3=Color3.fromRGB(0,0,0)
aT.BorderSizePixel=0
aT.Position=UDim2.new(1,0,0.5,0)
aT.Size=UDim2.new(0,25,0,25)
aT.Name="OptionImg"
aT.Parent=aQ

local aU=Instance.new"ScrollingFrame";
local aV=Instance.new"UIListLayout";

aU.CanvasSize=UDim2.new(0,0,0,0)
aU.ScrollBarImageColor3=Color3.fromRGB(0,0,0)
aU.ScrollBarThickness=0
aU.Active=true
aU.LayoutOrder=_
aU.BackgroundColor3=Color3.fromRGB(255,255,255)
aU.BackgroundTransparency=0.9990000128746033
aU.BorderColor3=Color3.fromRGB(0,0,0)
aU.BorderSizePixel=0
aU.Size=UDim2.new(1,0,1,0)
aU.Name="ScrollSelect"
aU.Parent=W

aV.Padding=UDim.new(0,3)
aV.SortOrder=Enum.SortOrder.LayoutOrder
aV.Parent=aU

local aW=0
function aK.Clear(aX)
for aY,aZ in aU:GetChildren()do
if aZ.Name=="Option"then
aK.Value={}
aK.Options={}
aS.Text="Select Options"
aZ:Destroy()
end
end
end
function aK.Set(aX,aY)
aK.Value=aY or aK.Value
for aZ,a_ in aU:GetChildren()do
if a_.Name~="UIListLayout"and not table.find(aK.Value,a_.OptionText.Text)then
b:Create(
a_.ChooseFrame,
TweenInfo.new(0.1,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Size=UDim2.new(0,0,0,0)}
):Play()
b:Create(
a_.ChooseFrame.UIStroke,
TweenInfo.new(0.1,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Transparency=0.999}
):Play()
b:Create(
a_,
TweenInfo.new(0.1,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{BackgroundTransparency=0.999}
):Play()
elseif a_.Name~="UIListLayout"and table.find(aK.Value,a_.OptionText.Text)then
b:Create(
a_.ChooseFrame.UIStroke,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Transparency=0}
):Play()
b:Create(
a_.ChooseFrame,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Size=UDim2.new(0,1,0,12)}
):Play()
b:Create(
a_,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{BackgroundTransparency=0.935}
):Play()
end
end
local aZ=table.concat(aK.Value,", ")
if aZ==""then
aS.Text="Select Options"
else
aS.Text=tostring(aZ)
end
aJ.Callback((aJ.Multi and aK.Value or table.concat(aK.Value,",")))
end
function aK.AddOption(aX,aY)
aY=aY or"Option"
local aZ=Instance.new"Frame";
local a_=Instance.new"UICorner";
local a0=Instance.new"TextButton";
local a1=Instance.new"TextLabel"
local a2=Instance.new"Frame";
local a3=Instance.new"UIStroke";
local a4=Instance.new"UICorner";

aZ.BackgroundColor3=Color3.fromRGB(255,255,255)
aZ.BackgroundTransparency=0.999
aZ.BorderColor3=Color3.fromRGB(0,0,0)
aZ.BorderSizePixel=0
aZ.LayoutOrder=aW
aZ.Size=UDim2.new(1,0,0,30)
aZ.Name="Option"
aZ.Parent=aU

a_.CornerRadius=UDim.new(0,3)
a_.Parent=aZ

a0.Font=Enum.Font.GothamBold
a0.Text=""
a0.TextColor3=Color3.fromRGB(255,255,255)
a0.TextSize=13
a0.TextXAlignment=Enum.TextXAlignment.Left
a0.BackgroundColor3=Color3.fromRGB(255,255,255)
a0.BackgroundTransparency=0.9990000128746033
a0.BorderColor3=Color3.fromRGB(0,0,0)
a0.BorderSizePixel=0
a0.Size=UDim2.new(1,0,1,0)
a0.Name="OptionButton"
a0.Parent=aZ

a1.Font=Enum.Font.GothamBold
a1.Text=aY
a1.TextSize=13
a1.TextColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)
a1.TextXAlignment=Enum.TextXAlignment.Left
a1.TextYAlignment=Enum.TextYAlignment.Top
a1.BackgroundColor3=Color3.fromRGB(255,255,255)
a1.BackgroundTransparency=0.9990000128746033
a1.BorderColor3=Color3.fromRGB(0,0,0)
a1.BorderSizePixel=0
a1.Position=UDim2.new(0,8,0,8)
a1.Size=UDim2.new(1,-100,0,13)
a1.Name="OptionText"
a1.Parent=aZ

a2.AnchorPoint=Vector2.new(0,0.5)
a2.BackgroundColor3=i.Color
a2.BorderColor3=Color3.fromRGB(0,0,0)
a2.BorderSizePixel=0
a2.Position=UDim2.new(0,2,0.5,0)
a2.Size=UDim2.new(0,0,0,0)
a2.Name="ChooseFrame"
a2.Parent=aZ

a3.Color=i.Color
a3.Thickness=1.600000023841858
a3.Transparency=0.999
a3.Parent=a2

a4.Parent=a2

a0.Activated:Connect(function()
CircleClick(a0,d.X,d.Y)
if aJ.Multi then
if aZ.BackgroundTransparency>0.95 then
table.insert(aK.Value,aY)
aK:Set(aK.Value)
else
for a5,a6 in pairs(aK.Value)do
if a6==aY then
table.remove(aK.Value,a5)
break
end
end
aK:Set(aK.Value)
end
else
aK.Value={aY}
aK:Set(aK.Value)
end
end)
local a5=0
for a6,a7 in aU:GetChildren()do
if a7.Name~="UIListLayout"then
a5=a5+3+a7.Size.Y.Offset
end
end
aU.CanvasSize=UDim2.new(0,0,0,a5)
aW=aW+1
end
function aK.Refresh(aX,aY,aZ)
aY=aY or{}
aZ=aZ or{}
aK:Clear()
for a_,a0 in pairs(aY)do
aK:AddOption(a0)
wait()
end
aK.Options=aY
aK:Set(aZ)
end
aK:Refresh(aK.Options,(aJ.Multi and aK.Value or{aK.Value}))
aG=aG+1
_=_+1
return aK
end
al=al+1
return aF
end
Z=Z+1
return ak
end
return Y
end
return f
