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
function f.NewInstance(g,h:string,i:{})
local j=Instance.new(h)
for k,l in pairs(i)do
j[k]=l
end
return j
end
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
local J=Instance.new"Frame";
local K=Instance.new"ImageButton";
local L=Instance.new"UICorner";

k.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
k.Name="FlurioreGui"
k.Parent=e

J.Parent=k
J.Size=UDim2.fromOffset(50,50)
J.BackgroundColor3=Color3.fromRGB(10,10,10)
J.AnchorPoint=Vector2.new(0.5,0.5)
J.Position=UDim2.new(0.2,0,0.2,0)
J.BackgroundColor3=Color3.new(0,0,0)
J.BorderColor3=Color3.fromRGB(0,0,0)
J.BorderSizePixel=0
K.Parent=J
K.Size=UDim2.new(0,40,0,40)
K.BackgroundColor3=Color3.fromRGB(10,10,10)
K.BackgroundTransparency=1
K.Image="rbxassetid://130595948368073"
K.AnchorPoint=Vector2.new(0.5,0.5)
K.Position=UDim2.new(0.5,0,0.5,0)
K.BackgroundColor3=Color3.new(0,0,0)
K.BorderColor3=Color3.fromRGB(0,0,0)
K.BorderSizePixel=0
L.Parent=J
L.CornerRadius=UDim.new(0,100)
K.MouseButton1Click:Connect(function()
n.Visible=false
game:GetService"VirtualInputManager":SendKeyEvent(true,i.KeyCode,false,game)
game:GetService"VirtualInputManager":SendKeyEvent(false,i.KeyCode,false,game)
end)

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

local M=Instance.new"ScrollingFrame";
local N=Instance.new"UIListLayout";

M.CanvasSize=UDim2.new(0,0,1.10000002,0)
M.ScrollBarImageColor3=Color3.fromRGB(0,0,0)
M.ScrollBarThickness=0
M.Active=true
M.BackgroundColor3=Color3.fromRGB(255,255,255)
M.BackgroundTransparency=0.9990000128746033
M.BorderColor3=Color3.fromRGB(0,0,0)
M.BorderSizePixel=0
M.Size=UDim2.new(1,0,1,-50)
M.Name="ScrollTab"
M.Parent=A

N.Padding=UDim.new(0,3)
N.SortOrder=Enum.SortOrder.LayoutOrder
N.Parent=M

local function UpdateSize1()
local O=0
for P,Q in M:GetChildren()do
if Q.Name~="UIListLayout"then
O=O+3+Q.Size.Y.Offset
end
end
M.CanvasSize=UDim2.new(0,0,0,O)
end
M.ChildAdded:Connect(UpdateSize1)
M.ChildRemoved:Connect(UpdateSize1)

function j.DestroyGui(O)
if e:FindFirstChild"FlurioreGui"then
k:Destroy()
end
end
local O=l.Position
local P=l.Size
u.Activated:Connect(function()
CircleClick(u,d.X,d.Y)
if v.Image=="rbxassetid://9886659406"then
v.Image="rbxassetid://9886659001"
O=l.Position
P=l.Size
b:Create(l,TweenInfo.new(0.3),{Position=UDim2.new(0,0,0,0)}):Play()
b:Create(l,TweenInfo.new(0.3),{Size=UDim2.new(1,0,1,0)}):Play()
else
v.Image="rbxassetid://9886659406"
b:Create(l,TweenInfo.new(0.3),{Position=O}):Play()
b:Create(l,TweenInfo.new(0.3),{Size=P}):Play()
end
end)
y.Activated:Connect(function()
CircleClick(y,d.X,d.Y)
n.Visible=true
l.Visible=false
end)
w.Activated:Connect(function()
CircleClick(w,d.X,d.Y)
l.Visible=false
end)
a.InputBegan:Connect(function(Q)
if Q.KeyCode==Enum.KeyCode[i.KeyCode]then
if l.Visible then
n.Visible=false
l.Visible=false
else
n.Visible=true
l.Visible=true
end
end
end)
MakeDraggable(q,l)
MakeDraggable(K,J)

local Q=Instance.new"Frame";
local R=Instance.new"Frame";
local S=Instance.new"ImageLabel";
local T=Instance.new"UICorner";
local U=Instance.new"TextButton";
Q.BackgroundColor3=Color3.fromRGB(0,0,0)
Q.BackgroundTransparency=0.999
Q.BorderColor3=Color3.fromRGB(0,0,0)
Q.BorderSizePixel=0
Q.ClipsDescendants=true
Q.Size=UDim2.new(1,0,1,0)
Q.Visible=false
Q.Name="MoreBlur"
Q.Parent=n

R.BackgroundTransparency=1
R.BorderSizePixel=0
R.Size=UDim2.new(1,0,1,0)
R.ZIndex=0
R.Name="DropShadowHolder"
R.Parent=Q

S.Image="rbxassetid://6015897843"
S.ImageColor3=Color3.fromRGB(0,0,0)
S.ImageTransparency=0.5
S.ScaleType=Enum.ScaleType.Slice
S.SliceCenter=Rect.new(49,49,450,450)
S.AnchorPoint=Vector2.new(0.5,0.5)
S.BackgroundTransparency=1
S.BorderSizePixel=0
S.Position=UDim2.new(0.5,0,0.5,0)
S.Size=UDim2.new(1,35,1,35)
S.ZIndex=0
S.Name="DropShadow"
S.Parent=R

T.Parent=Q

U.Font=Enum.Font.SourceSans
U.Text=""
U.TextColor3=Color3.fromRGB(0,0,0)
U.TextSize=14
U.BackgroundColor3=Color3.fromRGB(255,255,255)
U.BackgroundTransparency=0.999
U.BorderColor3=Color3.fromRGB(0,0,0)
U.BorderSizePixel=0
U.Size=UDim2.new(1,0,1,0)
U.Name="ConnectButton"
U.Parent=Q

local V=Instance.new"Frame";
local W=Instance.new"UICorner";
local X=Instance.new"UIStroke";
local Y=Instance.new"Frame";
local Z=Instance.new"Folder";
local _=Instance.new"UIPageLayout";

V.AnchorPoint=Vector2.new(1,0.5)
V.BackgroundColor3=Color3.fromRGB(30.00000011175871,30.00000011175871,30.00000011175871)
V.BorderColor3=Color3.fromRGB(0,0,0)
V.BorderSizePixel=0
V.LayoutOrder=1
V.Position=UDim2.new(1,172,0.5,0)
V.Size=UDim2.new(0,160,1,-16)
V.Name="DropdownSelect"
V.ClipsDescendants=true
V.Parent=Q

U.Activated:Connect(function()
if Q.Visible then
b:Create(Q,TweenInfo.new(0.3),{BackgroundTransparency=0.999}):Play()
b:Create(V,TweenInfo.new(0.3),{Position=UDim2.new(1,172,0.5,0)}):Play()
task.wait(0.3)
Q.Visible=false
end
end)
W.CornerRadius=UDim.new(0,3)
W.Parent=V

X.Color=Color3.fromRGB(255,255,255)
X.Thickness=2.5
X.Transparency=0.8
X.Parent=V

Y.AnchorPoint=Vector2.new(0.5,0.5)
Y.BackgroundColor3=Color3.fromRGB(0,0,0)
Y.BackgroundTransparency=0.9990000128746033
Y.BorderColor3=Color3.fromRGB(0,0,0)
Y.BorderSizePixel=0
Y.LayoutOrder=1
Y.Position=UDim2.new(0.5,0,0.5,0)
Y.Size=UDim2.new(1,-10,1,-10)
Y.Name="DropdownSelectReal"
Y.Parent=V

Z.Name="DropdownFolder"
Z.Parent=Y

_.EasingDirection=Enum.EasingDirection.InOut
_.EasingStyle=Enum.EasingStyle.Quad
_.TweenTime=0.009999999776482582
_.Padding=UDim.new(0,20)
_.SortOrder=Enum.SortOrder.LayoutOrder
_.Archivable=false
_.Name="DropPageLayout"
_.Parent=Z

local aa={}
function aa.ToggleUI(ab)
game:GetService"VirtualInputManager":SendKeyEvent(true,i.KeyCode,false,game)
game:GetService"VirtualInputManager":SendKeyEvent(false,i.KeyCode,false,game)
end
local ab=0
local ac=0
function aa.AddTab(ad,ae)
local af=ae or{}
af.Title=af.Title or"Tab"
af.Icon=af.Icon or""

local ag=Instance.new"ScrollingFrame";
local ah=Instance.new"UIListLayout";

ag.ScrollBarImageColor3=Color3.fromRGB(80.00000283122063,80.00000283122063,80.00000283122063)
ag.ScrollBarThickness=0
ag.Active=true
ag.LayoutOrder=ab
ag.BackgroundColor3=Color3.fromRGB(255,255,255)
ag.BackgroundTransparency=0.9990000128746033
ag.BorderColor3=Color3.fromRGB(0,0,0)
ag.BorderSizePixel=0
ag.Size=UDim2.new(1,0,1,0)
ag.Name="ScrolLayers"
ag.Parent=H

ah.Padding=UDim.new(0,3)
ah.SortOrder=Enum.SortOrder.LayoutOrder
ah.Parent=ag

local ai=Instance.new"Frame";
local aj=Instance.new"UICorner";
local ak=Instance.new"TextButton";
local al=Instance.new"TextLabel"
local am=Instance.new"ImageLabel";
Instance.new"UIStroke";
Instance.new"UICorner";

ai.BackgroundColor3=Color3.fromRGB(255,255,255)
if ab==0 then
F.Text=af.Title
ai.BackgroundTransparency=0.9200000166893005
else
ai.BackgroundTransparency=0.9990000128746033
end
ai.BorderColor3=Color3.fromRGB(0,0,0)
ai.BorderSizePixel=0
ai.LayoutOrder=ab
ai.Size=UDim2.new(1,0,0,30)
ai.Name="Tab"
ai.Parent=M

aj.CornerRadius=UDim.new(0,4)
aj.Parent=ai

ak.Font=Enum.Font.GothamBold
ak.Text=""
ak.TextColor3=Color3.fromRGB(255,255,255)
ak.TextSize=13
ak.TextXAlignment=Enum.TextXAlignment.Left
ak.BackgroundColor3=Color3.fromRGB(255,255,255)
ak.BackgroundTransparency=0.9990000128746033
ak.BorderColor3=Color3.fromRGB(0,0,0)
ak.BorderSizePixel=0
ak.Size=UDim2.new(1,0,1,0)
ak.Name="TabButton"
ak.Parent=ai

al.Font=Enum.Font.GothamBold
al.Text=af.Title
al.TextColor3=Color3.fromRGB(255,255,255)
al.TextSize=13
al.TextXAlignment=Enum.TextXAlignment.Left
al.BackgroundColor3=Color3.fromRGB(255,255,255)
al.BackgroundTransparency=0.9990000128746033
al.BorderColor3=Color3.fromRGB(0,0,0)
al.BorderSizePixel=0
al.Size=UDim2.new(1,0,1,0)
al.Position=UDim2.new(0,30,0,0)
al.Name="TabName"
al.Parent=ai

am.Image=af.Icon
am.BackgroundColor3=Color3.fromRGB(255,255,255)
am.BackgroundTransparency=0.9990000128746033
am.BorderColor3=Color3.fromRGB(0,0,0)
am.BorderSizePixel=0
am.Position=UDim2.new(0,9,0,7)
am.Size=UDim2.new(0,16,0,16)
am.Name="FeatureImg"
am.Parent=ai
ak.Activated:Connect(function()
CircleClick(ak,d.X,d.Y)
if ai.LayoutOrder~=I.CurrentPage.LayoutOrder then
for an,ao in M:GetChildren()do
if ao.Name=="Tab"then
b:Create(
ao,
TweenInfo.new(0.3,Enum.EasingStyle.Back,Enum.EasingDirection.InOut),
{BackgroundTransparency=0.9990000128746033}
):Play()
end
end
b:Create(
ai,
TweenInfo.new(0.6,Enum.EasingStyle.Back,Enum.EasingDirection.InOut),
{BackgroundTransparency=0.9200000166893005}
):Play()
I:JumpToIndex(ai.LayoutOrder)
task.wait(0.05)
F.Text=af.Title
end
end)

local an={}
local ao=0
function an.AddSection(ap,aq,ar)
local as=aq or"Title"
local at=Instance.new"Frame";
local au=ar or false
local av=Instance.new"Frame";
local aw=Instance.new"UICorner";
local ax=Instance.new"UIGradient";

at.BackgroundColor3=Color3.fromRGB(255,255,255)
at.BackgroundTransparency=0.9990000128746033
at.BorderColor3=Color3.fromRGB(0,0,0)
at.BorderSizePixel=0
at.LayoutOrder=ao
at.ClipsDescendants=true
at.LayoutOrder=1
at.Size=UDim2.new(1,0,0,30)
at.Name="Section"
at.Parent=ag

local ay=Instance.new"Frame";
local az=Instance.new"UICorner";
Instance.new"UIStroke";
local aA=Instance.new"TextButton";
local aB=Instance.new"Frame";
local aC=Instance.new"ImageLabel";
local aD=Instance.new"TextLabel";

ay.AnchorPoint=Vector2.new(0.5,0)
ay.BackgroundColor3=Color3.fromRGB(255,255,255)
ay.BackgroundTransparency=0.9350000023841858
ay.BorderColor3=Color3.fromRGB(0,0,0)
ay.BorderSizePixel=0
ay.LayoutOrder=1
ay.Position=UDim2.new(0.5,0,0,0)
ay.Size=UDim2.new(1,1,0,30)
ay.Name="SectionReal"
ay.Parent=at

az.CornerRadius=UDim.new(0,4)
az.Parent=ay

aA.Font=Enum.Font.SourceSans
aA.Text=""
aA.TextColor3=Color3.fromRGB(0,0,0)
aA.TextSize=14
aA.BackgroundColor3=Color3.fromRGB(255,255,255)
aA.BackgroundTransparency=0.9990000128746033
aA.BorderColor3=Color3.fromRGB(0,0,0)
aA.BorderSizePixel=0
aA.Size=UDim2.new(1,0,1,0)
aA.Name="SectionButton"
aA.Parent=ay

aB.AnchorPoint=Vector2.new(1,0.5)
aB.BackgroundColor3=Color3.fromRGB(0,0,0)
aB.BackgroundTransparency=0.9990000128746033
aB.BorderColor3=Color3.fromRGB(0,0,0)
aB.BorderSizePixel=0
aB.Position=UDim2.new(1,-5,0.5,0)
aB.Size=UDim2.new(0,20,0,20)
aB.Name="FeatureFrame"
aB.Parent=ay

aC.Image="rbxassetid://16851841101"
aC.AnchorPoint=Vector2.new(0.5,0.5)
aC.BackgroundColor3=Color3.fromRGB(255,255,255)
aC.BackgroundTransparency=0.9990000128746033
aC.BorderColor3=Color3.fromRGB(0,0,0)
aC.BorderSizePixel=0
aC.Position=UDim2.new(0.5,0,0.5,0)
aC.Rotation=-90
aC.Size=UDim2.new(1,6,1,6)
aC.Name="FeatureImg"
aC.Parent=aB

aD.Font=Enum.Font.GothamBold
aD.Text=as
aD.TextColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)
aD.TextSize=13
aD.TextXAlignment=Enum.TextXAlignment.Left
aD.AnchorPoint=Vector2.new(0,0.5)
aD.BackgroundColor3=Color3.fromRGB(255,255,255)
aD.BackgroundTransparency=0.9990000128746033
aD.BorderColor3=Color3.fromRGB(0,0,0)
aD.BorderSizePixel=0
aD.Position=UDim2.new(0,10,0.5,0)
aD.Size=UDim2.new(1,-50,1,0)
aD.Name="SectionTitle"
aD.Parent=ay

av.BackgroundColor3=Color3.fromRGB(255,255,255)
av.BorderColor3=Color3.fromRGB(0,0,0)
av.AnchorPoint=Vector2.new(0.5,0)
av.BorderSizePixel=0
av.Position=UDim2.new(0.5,0,0,33)
av.Size=UDim2.new(0,0,0,2)
av.Name="SectionDecideFrame"
av.Parent=at

aw.Parent=av

ax.Color=ColorSequence.new{
ColorSequenceKeypoint.new(0,Color3.fromRGB(20,20,20)),
ColorSequenceKeypoint.new(0.5,i.Color),
ColorSequenceKeypoint.new(1,Color3.fromRGB(20,20,20))
}
ax.Parent=av

local aE=Instance.new"Frame";
local aF=Instance.new"UICorner";
local aG=Instance.new"UIListLayout";

aE.AnchorPoint=Vector2.new(0.5,0)
aE.BackgroundColor3=Color3.fromRGB(255,255,255)
aE.BackgroundTransparency=0.9990000128746033
aE.BorderColor3=Color3.fromRGB(0,0,0)
aE.BorderSizePixel=0
aE.ClipsDescendants=true
aE.LayoutOrder=1
aE.Position=UDim2.new(0.5,0,0,38)
aE.Size=UDim2.new(1,0,0,100)
aE.Name="SectionAdd"
aE.Parent=at

aF.CornerRadius=UDim.new(0,2)
aF.Parent=aE

aG.Padding=UDim.new(0,3)
aG.SortOrder=Enum.SortOrder.LayoutOrder
aG.Parent=aE
local aH=true
local function UpdateSizeScroll()
local aI=0
for aJ,aK in ag:GetChildren()do
if aK.Name~="UIListLayout"then
aI=aI+3+aK.Size.Y.Offset
end
end
ag.CanvasSize=UDim2.new(0,0,0,aI)
end
local function UpdateSizeSection()
if aH then
local aI=38
for aJ,aK in aE:GetChildren()do
if aK.Name~="UIListLayout"and aK.Name~="UICorner"then
aI=aI+aK.Size.Y.Offset+3
end
end
b:Create(aB,TweenInfo.new(0.5),{Rotation=90}):Play()
b:Create(at,TweenInfo.new(0.5),{Size=UDim2.new(1,1,0,aI)}):Play()
b:Create(aE,TweenInfo.new(0.5),{Size=UDim2.new(1,0,0,aI-38)}):Play()
b:Create(av,TweenInfo.new(0.5),{Size=UDim2.new(1,0,0,2)}):Play()
task.wait(0.5)
UpdateSizeScroll()
end
end
if not au then
aB.Rotation=0
at.Size=UDim2.new(1,1,0,30)
av.Size=UDim2.new(0,0,0,2)
aH=false
UpdateSizeScroll()
end
aA.Activated:Connect(function()
CircleClick(aA,d.X,d.Y)
if aH then
b:Create(aB,TweenInfo.new(0.35),{Rotation=0}):Play()
b:Create(at,TweenInfo.new(0.35),{Size=UDim2.new(1,1,0,30)}):Play()
b:Create(av,TweenInfo.new(0.35),{Size=UDim2.new(0,0,0,2)}):Play()
aH=false
task.wait(0.35)
UpdateSizeScroll()
else
aH=true
UpdateSizeSection()
end
end)
aE.ChildAdded:Connect(UpdateSizeSection)
aE.ChildRemoved:Connect(UpdateSizeSection)
UpdateSizeScroll()

local aI={}
local aJ=0
function aI.AddSeperator(aK,aL)
local aM=aL or"Title"
local aN=Instance.new"Frame"
local aO=Instance.new"TextLabel"
aN.BackgroundColor3=Color3.fromRGB(255,255,255)
aN.BackgroundTransparency=1
aN.BorderColor3=Color3.fromRGB(0,0,0)
aN.BorderSizePixel=0
aN.LayoutOrder=aJ
aN.Size=UDim2.new(1,0,0,33)
aN.Name="Seperator"
aN.Parent=aE
aO.Font=Enum.Font.GothamBold
aO.Text=aM
aO.TextColor3=Color3.fromRGB(230,230,230)
aO.TextSize=13
aO.TextXAlignment=Enum.TextXAlignment.Left
aO.BackgroundColor3=Color3.fromRGB(255,255,255)
aO.BackgroundTransparency=1
aO.BorderColor3=Color3.fromRGB(0,0,0)
aO.BorderSizePixel=0
aO.Position=UDim2.new(0,10,0,0)
aO.Size=UDim2.new(1,-16,1,0)
aO.Name="SeperatorTitle"
aO.Parent=aN
aJ=aJ+1
end
function aI.AddParagraph(aK,aL)
local aM=aL or{}
aM.Title=aM.Title or"Title"
aM.Content=aM.Content or""
local aN={}

local aO=Instance.new"Frame";
local aP=Instance.new"UICorner";
local aQ=Instance.new"TextLabel";
local aR=Instance.new"TextLabel";

aO.BackgroundColor3=Color3.fromRGB(255,255,255)
aO.BackgroundTransparency=0.9350000023841858
aO.BorderColor3=Color3.fromRGB(0,0,0)
aO.BorderSizePixel=0
aO.LayoutOrder=aJ
aO.Size=UDim2.new(1,0,0,40)
aO.Name="Paragraph"
aO.Parent=aE

aP.CornerRadius=UDim.new(0,4)
aP.Parent=aO

aQ.Font=Enum.Font.GothamBold
aQ.Text=aM.Title
aQ.TextColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)
aQ.TextSize=13
aQ.TextXAlignment=Enum.TextXAlignment.Left
aQ.BackgroundColor3=Color3.fromRGB(255,255,255)
aQ.BackgroundTransparency=0.9990000128746033
aQ.BorderColor3=Color3.fromRGB(0,0,0)
aQ.BorderSizePixel=0
aQ.Position=UDim2.new(0,10,0,0)
aQ.Size=UDim2.new(1,-16,1,0)
aQ.Name="ParagraphTitle"
aQ.Parent=aO

aR.Font=Enum.Font.GothamBold
aR.Text=aM.Content
aR.RichText=true
aR.TextColor3=Color3.fromRGB(122,122,122)
aR.TextSize=12
aR.TextTransparency=0
aR.TextXAlignment=Enum.TextXAlignment.Left
aR.TextYAlignment=Enum.TextYAlignment.Top
aR.BackgroundColor3=Color3.fromRGB(255,255,255)
aR.BackgroundTransparency=0.9990000128746033
aR.BorderColor3=Color3.fromRGB(0,0,0)
aR.BorderSizePixel=0
aR.Position=UDim2.new(0,10,0,23)
aR.Name="ParagraphDescription"
aR.Parent=aO
aR.Size=UDim2.new(1,-16,1,-23)
aR.TextWrapped=true

if aR.Text~=""then
aQ.Size=UDim2.new(1,-16,0,13)
aQ.Position=UDim2.new(0,10,0,10)
aO.Size=UDim2.new(1,0,0,math.max(aR.TextBounds.Y+40,46))
end
aR:GetPropertyChangedSignal"AbsoluteSize":Connect(function()
if aR.Text~=""then
aQ.Size=UDim2.new(1,-16,0,13)
aQ.Position=UDim2.new(0,10,0,10)
aO.Size=UDim2.new(1,0,0,math.max(aR.TextBounds.Y+40,46))
UpdateSizeSection()
end
end)

function aN.Set(aS,aT)
local aU=aT or{}
aU.Title=aU.Title or aQ.Text
aU.Content=aU.Content or aR.Text

aQ.Text=aU.Title
aR.Text=aU.Content
aR.TextWrapped=false
aR.Size=UDim2.new(1,-16,1,-23)
aO.Size=UDim2.new(1,0,0,math.max(aR.TextBounds.Y+40,46))
end
aJ=aJ+1
return aN
end
function aI.AddButton(aK,aL)
local aM=aL or{}
aM.Title=aM.Title or"Title"
aM.Description=aM.Description or""
aM.Icon=aM.Icon or"rbxassetid://16932740082"
aM.Callback=aM.Callback or function()end
local aN={}

local aO=Instance.new"Frame";
local aP=Instance.new"UICorner";
local aQ=Instance.new"TextLabel";
local aR=Instance.new"TextLabel";
local aS=Instance.new"TextButton";
local aT=Instance.new"Frame";
local aU=Instance.new"ImageLabel";

aO.BackgroundColor3=Color3.fromRGB(255,255,255)
aO.BackgroundTransparency=0.9350000023841858
aO.BorderColor3=Color3.fromRGB(0,0,0)
aO.BorderSizePixel=0
aO.LayoutOrder=aJ
aO.Size=UDim2.new(1,0,0,38)
aO.Name="Button"
aO.Parent=aE

aP.CornerRadius=UDim.new(0,4)
aP.Parent=aO

aQ.Font=Enum.Font.GothamBold
aQ.Text=aM.Title
aQ.TextColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)
aQ.TextSize=13
aQ.TextXAlignment=Enum.TextXAlignment.Left
aQ.BackgroundColor3=Color3.fromRGB(255,255,255)
aQ.BackgroundTransparency=0.9990000128746033
aQ.BorderColor3=Color3.fromRGB(0,0,0)
aQ.BorderSizePixel=0
aQ.Position=UDim2.new(0,10,0,0)
aQ.Size=UDim2.new(1,-100,1,0)
aQ.Name="ButtonTitle"
aQ.Parent=aO

aR.Font=Enum.Font.GothamBold
aR.Text=aM.Description
aR.TextColor3=Color3.fromRGB(122,122,122)
aR.TextSize=12
aR.TextTransparency=0
aR.TextXAlignment=Enum.TextXAlignment.Left
aR.TextYAlignment=Enum.TextYAlignment.Top
aR.BackgroundColor3=Color3.fromRGB(255,255,255)
aR.BackgroundTransparency=0.9990000128746033
aR.BorderColor3=Color3.fromRGB(0,0,0)
aR.BorderSizePixel=0
aR.Position=UDim2.new(0,10,0,23)
aR.Name="ButtonDescription"
aR.RichText=true
aR.Parent=aO

if aR.Text~=""then
aR.Size=UDim2.new(1,-100,1,-23)
aR.TextWrapped=true
aO.Size=UDim2.new(1,0,0,math.max(aR.AbsoluteSize.Y+40,46))
aR:GetPropertyChangedSignal"AbsoluteSize":Connect(function()
aR.TextWrapped=false
aQ.Position=UDim2.new(0,10,0,10)
aQ.Size=UDim2.new(1,-100,0,13)
aR.Size=UDim2.new(1,-100,1,-23)
aO.Size=UDim2.new(1,0,0,math.max(aR.TextBounds.Y+40,46))
aR.TextWrapped=true
UpdateSizeSection()
end)
end

aS.Font=Enum.Font.SourceSans
aS.Text=""
aS.TextColor3=Color3.fromRGB(0,0,0)
aS.TextSize=14
aS.BackgroundColor3=Color3.fromRGB(0,0,0)
aS.BackgroundTransparency=0.9990000128746033
aS.BorderColor3=Color3.fromRGB(0,0,0)
aS.BorderSizePixel=0
aS.Size=UDim2.new(1,0,1,0)
aS.Name="ButtonButton"
aS.Parent=aO

aT.AnchorPoint=Vector2.new(1,0.5)
aT.BackgroundColor3=Color3.fromRGB(0,0,0)
aT.BackgroundTransparency=0.9990000128746033
aT.BorderColor3=Color3.fromRGB(0,0,0)
aT.BorderSizePixel=0
aT.Position=UDim2.new(1,-15,0.5,0)
aT.Size=UDim2.new(0,25,0,25)
aT.Name="FeatureFrame"
aT.Parent=aO

aU.Image=aM.Icon
aU.AnchorPoint=Vector2.new(0.5,0.5)
aU.BackgroundColor3=Color3.fromRGB(255,255,255)
aU.BackgroundTransparency=0.9990000128746033
aU.BorderColor3=Color3.fromRGB(0,0,0)
aU.BorderSizePixel=0
aU.Position=UDim2.new(0.5,0,0.5,0)
aU.Size=UDim2.new(1,0,1,0)
aU.Name="FeatureImg"
aU.Parent=aT

aS.Activated:Connect(function()
CircleClick(aS,d.X,d.Y)
aM.Callback()
end)
aJ=aJ+1
return aN
end
function aI.AddToggle(aK,aL)
local aM=aL or{}
aM.Title=aM.Title or"Title"
aM.Description=aM.Description or""
aM.Default=aM.Default or false
aM.Callback=aM.Callback or function()end
local aN={Value=aM.Default,Options=aM.Options,Selecting=aM.Selecting}

local aO=Instance.new"Frame";
local aP=Instance.new"UICorner";
local aQ=Instance.new"TextLabel";
local aR=Instance.new"TextLabel";
local aS=Instance.new"TextButton";
Instance.new"Frame";
Instance.new"ImageLabel";
Instance.new"UICorner";
Instance.new"TextButton";
local aT=Instance.new"Frame";
local aU=Instance.new"UICorner";
local aV=Instance.new"UIStroke";
local aW=Instance.new"Frame";
local aX=Instance.new"UICorner";

aO.BackgroundColor3=Color3.fromRGB(255,255,255)
aO.BackgroundTransparency=0.9350000023841858
aO.BorderColor3=Color3.fromRGB(0,0,0)
aO.BorderSizePixel=0
aO.LayoutOrder=aJ
aO.Size=UDim2.new(1,0,0,38)
aO.Name="Toggle"
aO.Parent=aE

aP.CornerRadius=UDim.new(0,4)
aP.Parent=aO

aQ.Font=Enum.Font.GothamBold
aQ.Text=aM.Title
aQ.TextSize=13
aQ.TextColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)
aQ.TextXAlignment=Enum.TextXAlignment.Left
aQ.BackgroundColor3=Color3.fromRGB(255,255,255)
aQ.BackgroundTransparency=0.9990000128746033
aQ.BorderColor3=Color3.fromRGB(0,0,0)
aQ.BorderSizePixel=0
aQ.Position=UDim2.new(0,10,0,0)
aQ.Size=UDim2.new(1,-100,1,0)
aQ.Name="ToggleTitle"
aQ.Parent=aO

aR.Font=Enum.Font.GothamBold
aR.Text=aM.Description
aR.TextColor3=Color3.fromRGB(122,122,122)
aR.TextSize=12
aR.TextTransparency=0
aR.TextXAlignment=Enum.TextXAlignment.Left
aR.TextYAlignment=Enum.TextYAlignment.Top
aR.BackgroundColor3=Color3.fromRGB(255,255,255)
aR.BackgroundTransparency=0.9990000128746033
aR.BorderColor3=Color3.fromRGB(0,0,0)
aR.BorderSizePixel=0
aR.Position=UDim2.new(0,10,0,23)
aR.Size=UDim2.new(1,-100,0,12)
aR.RichText=true
aR.Name="ToggleDescription"
aR.Parent=aO
if aR.Text~=""then
aR.Size=UDim2.new(1,-100,1,-23)
aR.TextWrapped=true
aO.Size=UDim2.new(1,0,0,math.max(aR.AbsoluteSize.Y+40,46))
aR:GetPropertyChangedSignal"AbsoluteSize":Connect(function()
aQ.Position=UDim2.new(0,10,0,10)
aQ.Size=UDim2.new(1,-100,0,13)
aO.Size=UDim2.new(1,0,0,math.max(aR.TextBounds.Y+40,46))
aR.Size=UDim2.new(1,-100,1,-23)
aR.TextWrapped=true
UpdateSizeSection()
end)
end

aS.Font=Enum.Font.SourceSans
aS.Text=""
aS.TextColor3=Color3.fromRGB(0,0,0)
aS.TextSize=14
aS.BackgroundColor3=Color3.fromRGB(0,0,0)
aS.BackgroundTransparency=0.9990000128746033
aS.BorderColor3=Color3.fromRGB(0,0,0)
aS.BorderSizePixel=0
aS.Size=UDim2.new(1,0,1,0)
aS.Name="ToggleButton"
aS.Parent=aO

aT.AnchorPoint=Vector2.new(1,0.5)
aT.BackgroundColor3=Color3.fromRGB(255,255,255)
aT.BackgroundTransparency=0.9200000166893005
aT.BorderColor3=Color3.fromRGB(0,0,0)
aT.BorderSizePixel=0
aT.Position=UDim2.new(1,-10,0.5,0)
aT.Size=UDim2.new(0,30,0,15)
aT.Name="FeatureFrame"
aT.Parent=aO

aU.Parent=aT

aV.Color=Color3.fromRGB(255,255,255)
aV.Thickness=2
aV.Transparency=0.9
aV.Parent=aT

aW.BackgroundColor3=Color3.fromRGB(230.00000149011612,230.00000149011612,230.00000149011612)
aW.BorderColor3=Color3.fromRGB(0,0,0)
aW.BorderSizePixel=0
aW.Position=UDim2.new(0,0,0,0)
aW.Size=UDim2.new(0,14,0,14)
aW.Name="ToggleCircle"
aW.Parent=aT

aX.CornerRadius=UDim.new(0,15)
aX.Parent=aW

aS.Activated:Connect(function()
CircleClick(aS,d.X,d.Y)
aN.Value=not aN.Value
aN:Set(aN.Value)
end)
function aN.Set(aY,aZ)
aM.Callback(aZ)
if aZ then
b:Create(
aW,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Position=UDim2.new(0,15,0,0)}
):Play()
b:Create(
aV,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Color=i.Color,Transparency=0}
):Play()
b:Create(
aT,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{BackgroundColor3=i.Color,BackgroundTransparency=0}
):Play()
else
b:Create(
aW,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Position=UDim2.new(0,0,0,0)}
):Play()
b:Create(
aV,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Color=Color3.fromRGB(255,255,255),Transparency=0.9}
):Play()
b:Create(
aT,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=0.9200000166893005}
):Play()
end
end
aN:Set(aN.Value)
aJ=aJ+1
return aN
end
function aI.AddSlider(aK,aL)
local aM=aL or{}
aM.Title=aM.Title or"Slider"
aM.Description=aM.Description or""
aM.Increment=aM.Increment or 1
aM.Min=aM.Min or 0
aM.Max=aM.Max or 100
aM.Default=aM.Default or 50
aM.Callback=aM.Callback or function()end
local aN={Value=aM.Default}

local aO=Instance.new"Frame";
local aP=Instance.new"UICorner";
local aQ=Instance.new"TextLabel";
local aR=Instance.new"TextLabel";
local aS=Instance.new"Frame";
local aT=Instance.new"UICorner";
local aU=Instance.new"TextBox";
local aV=Instance.new"Frame";
local aW=Instance.new"UICorner";
local aX=Instance.new"Frame";
local aY=Instance.new"UICorner";
Instance.new"UIStroke";
local aZ=Instance.new"Frame";
local a_=Instance.new"UICorner";
local a0=Instance.new"UIStroke";
Instance.new"UIStroke";

aO.BackgroundColor3=Color3.fromRGB(255,255,255)
aO.BackgroundTransparency=0.9350000023841858
aO.BorderColor3=Color3.fromRGB(0,0,0)
aO.BorderSizePixel=0
aO.LayoutOrder=aJ
aO.Size=UDim2.new(1,0,0,38)
aO.Name="Slider"
aO.Parent=aE

aP.CornerRadius=UDim.new(0,4)
aP.Parent=aO

aQ.Font=Enum.Font.GothamBold
aQ.Text=aM.Title
aQ.TextColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)
aQ.TextSize=13
aQ.TextXAlignment=Enum.TextXAlignment.Left
aQ.BackgroundColor3=Color3.fromRGB(255,255,255)
aQ.BackgroundTransparency=0.9990000128746033
aQ.BorderColor3=Color3.fromRGB(0,0,0)
aQ.BorderSizePixel=0
aQ.Position=UDim2.new(0,10,0,0)
aQ.Size=UDim2.new(1,-180,1,0)
aQ.Name="SliderTitle"
aQ.Parent=aO

aR.Font=Enum.Font.GothamBold
aR.Text=aM.Description
aR.TextColor3=Color3.fromRGB(122,122,122)
aR.TextSize=12
aR.TextTransparency=0
aR.TextXAlignment=Enum.TextXAlignment.Left
aR.TextYAlignment=Enum.TextYAlignment.Top
aR.BackgroundColor3=Color3.fromRGB(255,255,255)
aR.BackgroundTransparency=0.9990000128746033
aR.BorderColor3=Color3.fromRGB(0,0,0)
aR.BorderSizePixel=0
aR.Position=UDim2.new(0,10,0,23)
aR.Size=UDim2.new(1,-180,0,12)
aR.RichText=true
aR.Name="SliderDescription"
aR.Parent=aO

if aR.Text~=""then
aR.Size=UDim2.new(1,-180,1,-23)
aR.TextWrapped=true
aO.Size=UDim2.new(1,0,0,math.max(aR.AbsoluteSize.Y+40,46))

aR:GetPropertyChangedSignal"AbsoluteSize":Connect(function()
aQ.Position=UDim2.new(0,10,0,10)
aQ.Size=UDim2.new(1,-180,0,13)
aR.TextWrapped=false
aR.Size=UDim2.new(1,-180,1,-23)
aO.Size=UDim2.new(1,0,0,math.max(aR.TextBounds.Y+40,46))
aR.TextWrapped=true
UpdateSizeSection()
end)
end

aS.AnchorPoint=Vector2.new(0,0.5)
aS.BackgroundColor3=i.Color
aS.BorderColor3=Color3.fromRGB(0,0,0)
aS.BorderSizePixel=0
aS.Position=UDim2.new(1,-155,0.5,0)
aS.Size=UDim2.new(0,28,0,20)
aS.Name="SliderInput"
aS.Parent=aO

aT.CornerRadius=UDim.new(0,2)
aT.Parent=aS

aU.Font=Enum.Font.GothamBold
aU.Text="90"
aU.TextColor3=Color3.fromRGB(255,255,255)
aU.TextSize=13
aU.TextWrapped=true
aU.BackgroundColor3=Color3.fromRGB(0,0,0)
aU.BackgroundTransparency=0.9990000128746033
aU.BorderColor3=Color3.fromRGB(0,0,0)
aU.BorderSizePixel=0
aU.Position=UDim2.new(0,-1,0,0)
aU.Size=UDim2.new(1,0,1,0)
aU.Parent=aS

aV.AnchorPoint=Vector2.new(1,0.5)
aV.BackgroundColor3=Color3.fromRGB(255,255,255)
aV.BackgroundTransparency=0.800000011920929
aV.BorderColor3=Color3.fromRGB(0,0,0)
aV.BorderSizePixel=0
aV.Position=UDim2.new(1,-20,0.5,0)
aV.Size=UDim2.new(0,100,0,3)
aV.Name="SliderFrame"
aV.Parent=aO

aW.Parent=aV

aX.AnchorPoint=Vector2.new(0,0.5)
aX.BackgroundColor3=i.Color
aX.BorderColor3=Color3.fromRGB(0,0,0)
aX.BorderSizePixel=0
aX.Position=UDim2.new(0,0,0.5,0)
aX.Size=UDim2.new(0.899999976,0,0,1)
aX.Name="SliderDraggable"
aX.Parent=aV

aY.Parent=aX

aZ.AnchorPoint=Vector2.new(1,0.5)
aZ.BackgroundColor3=i.Color
aZ.BorderColor3=Color3.fromRGB(0,0,0)
aZ.BorderSizePixel=0
aZ.Position=UDim2.new(1,4,0.5,0)
aZ.Size=UDim2.new(0,8,0,8)
aZ.Name="SliderCircle"
aZ.Parent=aX

a_.Parent=aZ

a0.Color=i.Color
a0.Parent=aZ

local a1=false
local function Round(a2,a3)
local a4=math.floor(a2/a3+(math.sign(a2)*0.5))*a3
if a4<0 then
a4=a4+a3
end
return a4
end
function aN.Set(a2,a3)
a3=math.clamp(Round(a3,aM.Increment),aM.Min,aM.Max)
aN.Value=a3
aU.Text=tostring(a3)
b:Create(
aX,
TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
{Size=UDim2.fromScale((a3-aM.Min)/(aM.Max-aM.Min),1)}
):Play()
end
aV.InputBegan:Connect(function(a2)
if a2.UserInputType==Enum.UserInputType.MouseButton1 then
a1=true
end
end)
aV.InputEnded:Connect(function(a2)
if a2.UserInputType==Enum.UserInputType.MouseButton1 then
a1=false
aM.Callback(aN.Value)
end
end)
a.InputChanged:Connect(function(a2)
if a1 and a2.UserInputType==Enum.UserInputType.MouseMovement then
local a3=math.clamp((a2.Position.X-aV.AbsolutePosition.X)/aV.AbsoluteSize.X,0,1)
aN:Set(aM.Min+((aM.Max-aM.Min)*a3))
end
end)
aU:GetPropertyChangedSignal"Text":Connect(function()
local a2=aU.Text:gsub("[^%d]","")
if a2~=""then
local a3=math.min(tonumber(a2),aM.Max)
aU.Text=tostring(a3)
else
aU.Text=tostring(a2)
end
end)
aU.FocusLost:Connect(function()
if aU.Text~=""then
aN:Set(tonumber(aU.Text))
else
aN:Set(0)
end
end)
aN:Set(tonumber(aM.Default))
aJ=aJ+1
return aN
end
function aI.AddInput(aK,aL)
local aM=aL or{}
aM.Title=aM.Title or"Title"
aM.Description=aM.Description or""
aM.PlaceHolder=aM.PlaceHolder or"Input Here"
aM.Default=aM.Default or""
aM.Callback=aM.Callback or function()end
local aN={Value=""}

local aO=Instance.new"Frame";
local aP=Instance.new"UICorner";
local aQ=Instance.new"TextLabel";
local aR=Instance.new"TextLabel";
local aS=Instance.new"Frame";
local aT=Instance.new"UICorner";
local aU=Instance.new"TextBox";

aO.BackgroundColor3=Color3.fromRGB(255,255,255)
aO.BackgroundTransparency=0.9350000023841858
aO.BorderColor3=Color3.fromRGB(0,0,0)
aO.BorderSizePixel=0
aO.LayoutOrder=aJ
aO.Size=UDim2.new(1,0,0,46)
aO.Name="Input"
aO.Parent=aE

aP.CornerRadius=UDim.new(0,4)
aP.Parent=aO

aQ.Font=Enum.Font.GothamBold
aQ.Text=aM.Title
aQ.TextColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)
aQ.TextSize=13
aQ.TextXAlignment=Enum.TextXAlignment.Left
aQ.BackgroundColor3=Color3.fromRGB(255,255,255)
aQ.BackgroundTransparency=0.9990000128746033
aQ.BorderColor3=Color3.fromRGB(0,0,0)
aQ.BorderSizePixel=0
aQ.Position=UDim2.new(0,10,0,0)
aQ.Size=UDim2.new(1,-180,1,0)
aQ.Name="InputTitle"
aQ.Parent=aO

aR.Font=Enum.Font.GothamBold
aR.Text=aM.Description
aR.TextColor3=Color3.fromRGB(122,122,122)
aR.TextSize=12
aR.TextTransparency=0
aR.TextWrapped=true
aR.TextXAlignment=Enum.TextXAlignment.Left
aR.TextYAlignment=Enum.TextYAlignment.Top
aR.BackgroundColor3=Color3.fromRGB(255,255,255)
aR.BackgroundTransparency=0.9990000128746033
aR.BorderColor3=Color3.fromRGB(0,0,0)
aR.BorderSizePixel=0
aR.Position=UDim2.new(0,10,0,23)
aR.Size=UDim2.new(1,-180,0,12)
aR.Name="InputDescription"
aR.RichText=true
aR.Parent=aO

if aR.Text~=""then
aR.Size=UDim2.new(1,-180,1,-23)
aR.TextWrapped=true
aO.Size=UDim2.new(1,0,0,math.max(aR.AbsoluteSize.Y+40,46))

aR:GetPropertyChangedSignal"AbsoluteSize":Connect(function()
aR.TextWrapped=false
aQ.Position=UDim2.new(0,10,0,10)
aQ.Size=UDim2.new(1,-180,0,13)
aR.Size=UDim2.new(1,-180,1,-23)
aO.Size=UDim2.new(1,0,0,math.max(aR.TextBounds.Y+40,46))
aR.TextWrapped=true
UpdateSizeSection()
end)
end

aS.AnchorPoint=Vector2.new(1,0.5)
aS.BackgroundColor3=Color3.fromRGB(255,255,255)
aS.BackgroundTransparency=0.949999988079071
aS.BorderColor3=Color3.fromRGB(0,0,0)
aS.BorderSizePixel=0
aS.ClipsDescendants=true
aS.Position=UDim2.new(1,-7,0.5,0)
aS.Size=UDim2.new(0,148,0,30)
aS.Name="InputFrame"
aS.Parent=aO

aT.CornerRadius=UDim.new(0,4)
aT.Parent=aS

aU.CursorPosition=-1
aU.Font=Enum.Font.GothamBold
aU.PlaceholderColor3=Color3.fromRGB(120.00000044703484,120.00000044703484,120.00000044703484)
aU.PlaceholderText=aM.PlaceHolder
aU.Text=aM.Default
aU.TextColor3=Color3.fromRGB(255,255,255)
aU.TextSize=12
aU.TextXAlignment=Enum.TextXAlignment.Left
aU.AnchorPoint=Vector2.new(0,0.5)
aU.BackgroundColor3=Color3.fromRGB(255,255,255)
aU.BackgroundTransparency=0.9990000128746033
aU.BorderColor3=Color3.fromRGB(0,0,0)
aU.BorderSizePixel=0
aU.Position=UDim2.new(0,5,0.5,0)
aU.Size=UDim2.new(1,-10,1,-8)
aU.Name="InputTextBox"
aU.Parent=aS
function aN.Set(aV,aW)
aU.Text=aW
aN.Value=aW
aM.Callback(aW)
end
aU.FocusLost:Connect(function()
aN:Set(aU.Text)
end)
aJ=aJ+1
return aN
end
function aI.AddDropdown(aK,aL)
local aM=aL or{}
aM.Title=aM.Title or"Title"
aM.Description=aM.Description or""
aM.Multi=aM.Multi or false
aM.Values=aM.Values or{}
aM.Default=aM.Default or(aM.Multi and{}or"")
aM.Callback=aM.Callback or function()end

local aN={Value=aM.Default,Options=aM.Values}

local aO=Instance.new"Frame";
local aP=Instance.new"TextButton";
local aQ=Instance.new"UICorner";
local aR=Instance.new"TextLabel";
local aS=Instance.new"TextLabel";
local aT=Instance.new"Frame";
local aU=Instance.new"UICorner";
local aV=Instance.new"TextLabel";
local aW=Instance.new"ImageLabel";

aO.BackgroundColor3=Color3.fromRGB(255,255,255)
aO.BackgroundTransparency=0.9350000023841858
aO.BorderColor3=Color3.fromRGB(0,0,0)
aO.BorderSizePixel=0
aO.LayoutOrder=aJ
aO.Size=UDim2.new(1,0,0,46)
aO.Name="Dropdown"
aO.Parent=aE

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
aP.Parent=aO

aQ.CornerRadius=UDim.new(0,4)
aQ.Parent=aO

aR.Font=Enum.Font.GothamBold
aR.Text=aM.Title
aR.TextColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)
aR.TextSize=13
aR.TextXAlignment=Enum.TextXAlignment.Left
aR.BackgroundColor3=Color3.fromRGB(255,255,255)
aR.BackgroundTransparency=0.9990000128746033
aR.BorderColor3=Color3.fromRGB(0,0,0)
aR.BorderSizePixel=0
aR.Position=UDim2.new(0,10,0,0)
aR.Size=UDim2.new(1,-180,1,0)
aR.Name="DropdownTitle"
aR.Parent=aO

aS.Font=Enum.Font.GothamBold
aS.Text=aM.Description
aS.TextColor3=Color3.fromRGB(122,122,122)
aS.TextSize=12
aS.TextTransparency=0
aS.TextWrapped=true
aS.TextXAlignment=Enum.TextXAlignment.Left
aS.TextYAlignment=Enum.TextYAlignment.Top
aS.BackgroundColor3=Color3.fromRGB(255,255,255)
aS.BackgroundTransparency=0.9990000128746033
aS.BorderColor3=Color3.fromRGB(0,0,0)
aS.BorderSizePixel=0
aS.Position=UDim2.new(0,10,0,23)
aS.Size=UDim2.new(1,-180,0,12)
aS.RichText=true
aS.Name="DropdownDescription"
aS.Parent=aO

if aS.Text~=""then
aS.Size=UDim2.new(1,-180,1,-23)
aS.TextWrapped=true
aO.Size=UDim2.new(1,0,0,math.max(aS.TextBounds.Y+40,46))
aS:GetPropertyChangedSignal"AbsoluteSize":Connect(function()
aS.TextWrapped=false
aR.Position=UDim2.new(0,10,0,10)
aR.Size=UDim2.new(1,-180,0,13)
aS.Size=UDim2.new(1,-180,1,-23)
aO.Size=UDim2.new(1,0,0,math.max(aS.TextBounds.Y+40,46))
aS.TextWrapped=true
UpdateSizeSection()
end)
end

aT.AnchorPoint=Vector2.new(1,0.5)
aT.BackgroundColor3=Color3.fromRGB(255,255,255)
aT.BackgroundTransparency=0.949999988079071
aT.BorderColor3=Color3.fromRGB(0,0,0)
aT.BorderSizePixel=0
aT.Position=UDim2.new(1,-7,0.5,0)
aT.Size=UDim2.new(0,148,0,30)
aT.Name="SelectOptionsFrame"
aT.LayoutOrder=ac
aT.Parent=aO

aU.CornerRadius=UDim.new(0,4)
aU.Parent=aT

aP.Activated:Connect(function()
if not Q.Visible then
Q.Visible=true
_:JumpToIndex(aT.LayoutOrder)
b:Create(Q,TweenInfo.new(0.3),{BackgroundTransparency=0.7}):Play()
b:Create(V,TweenInfo.new(0.3),{Position=UDim2.new(1,-11,0.5,0)}):Play()
end
end)

aV.Font=Enum.Font.GothamBold
aV.Text=""
aV.TextColor3=Color3.fromRGB(255,255,255)
aV.TextSize=12
aV.TextTransparency=0
aV.TextWrapped=true
aV.TextXAlignment=Enum.TextXAlignment.Left
aV.AnchorPoint=Vector2.new(0,0.5)
aV.BackgroundColor3=Color3.fromRGB(255,255,255)
aV.BackgroundTransparency=0.9990000128746033
aV.BorderColor3=Color3.fromRGB(0,0,0)
aV.BorderSizePixel=0
aV.Position=UDim2.new(0,5,0.5,0)
aV.Size=UDim2.new(1,-30,1,-8)
aV.Name="OptionSelecting"
aV.Parent=aT

aW.Image="rbxassetid://16851841101"
aW.ImageColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)
aW.AnchorPoint=Vector2.new(1,0.5)
aW.BackgroundColor3=Color3.fromRGB(255,255,255)
aW.BackgroundTransparency=0.9990000128746033
aW.BorderColor3=Color3.fromRGB(0,0,0)
aW.BorderSizePixel=0
aW.Position=UDim2.new(1,0,0.5,0)
aW.Size=UDim2.new(0,25,0,25)
aW.Name="OptionImg"
aW.Parent=aT

local aX=Instance.new"ScrollingFrame";
local aY=Instance.new"UIListLayout";

aX.CanvasSize=UDim2.new(0,0,0,0)
aX.ScrollBarImageColor3=Color3.fromRGB(0,0,0)
aX.ScrollBarThickness=0
aX.Active=true
aX.LayoutOrder=ac
aX.BackgroundColor3=Color3.fromRGB(255,255,255)
aX.BackgroundTransparency=0.9990000128746033
aX.BorderColor3=Color3.fromRGB(0,0,0)
aX.BorderSizePixel=0
aX.Size=UDim2.new(1,0,1,0)
aX.Name="ScrollSelect"
aX.Parent=Z

aY.Padding=UDim.new(0,3)
aY.SortOrder=Enum.SortOrder.LayoutOrder
aY.Parent=aX

local aZ=0
function aN.Clear(a_)
for a0,a1 in aX:GetChildren()do
if a1.Name=="Option"then
aN.Value={}
aN.Options={}
aV.Text="Select Options"
a1:Destroy()
end
end
end
function aN.Set(a_,a0)
aN.Value=a0 or aN.Value
for a1,a2 in aX:GetChildren()do
if a2.Name~="UIListLayout"and not table.find(aN.Value,a2.OptionText.Text)then
b:Create(
a2.ChooseFrame,
TweenInfo.new(0.1,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Size=UDim2.new(0,0,0,0)}
):Play()
b:Create(
a2.ChooseFrame.UIStroke,
TweenInfo.new(0.1,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Transparency=0.999}
):Play()
b:Create(
a2,
TweenInfo.new(0.1,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{BackgroundTransparency=0.999}
):Play()
elseif a2.Name~="UIListLayout"and table.find(aN.Value,a2.OptionText.Text)then
b:Create(
a2.ChooseFrame.UIStroke,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Transparency=0}
):Play()
b:Create(
a2.ChooseFrame,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Size=UDim2.new(0,1,0,12)}
):Play()
b:Create(
a2,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{BackgroundTransparency=0.935}
):Play()
end
end
local a1=table.concat(aN.Value,", ")
if a1==""then
aV.Text="Select Options"
else
aV.Text=tostring(a1)
end
aM.Callback((aM.Multi and aN.Value or table.concat(aN.Value,",")))
end
function aN.AddOption(a_,a0)
a0=a0 or"Option"
local a1=Instance.new"Frame";
local a2=Instance.new"UICorner";
local a3=Instance.new"TextButton";
local a4=Instance.new"TextLabel"
local a5=Instance.new"Frame";
local a6=Instance.new"UIStroke";
local a7=Instance.new"UICorner";

a1.BackgroundColor3=Color3.fromRGB(255,255,255)
a1.BackgroundTransparency=0.999
a1.BorderColor3=Color3.fromRGB(0,0,0)
a1.BorderSizePixel=0
a1.LayoutOrder=aZ
a1.Size=UDim2.new(1,0,0,30)
a1.Name="Option"
a1.Parent=aX

a2.CornerRadius=UDim.new(0,3)
a2.Parent=a1

a3.Font=Enum.Font.GothamBold
a3.Text=""
a3.TextColor3=Color3.fromRGB(255,255,255)
a3.TextSize=13
a3.TextXAlignment=Enum.TextXAlignment.Left
a3.BackgroundColor3=Color3.fromRGB(255,255,255)
a3.BackgroundTransparency=0.9990000128746033
a3.BorderColor3=Color3.fromRGB(0,0,0)
a3.BorderSizePixel=0
a3.Size=UDim2.new(1,0,1,0)
a3.Name="OptionButton"
a3.Parent=a1

a4.Font=Enum.Font.GothamBold
a4.Text=a0
a4.TextSize=13
a4.TextColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)
a4.TextXAlignment=Enum.TextXAlignment.Left
a4.TextYAlignment=Enum.TextYAlignment.Top
a4.BackgroundColor3=Color3.fromRGB(255,255,255)
a4.BackgroundTransparency=0.9990000128746033
a4.BorderColor3=Color3.fromRGB(0,0,0)
a4.BorderSizePixel=0
a4.Position=UDim2.new(0,8,0,8)
a4.Size=UDim2.new(1,-100,0,13)
a4.Name="OptionText"
a4.Parent=a1

a5.AnchorPoint=Vector2.new(0,0.5)
a5.BackgroundColor3=i.Color
a5.BorderColor3=Color3.fromRGB(0,0,0)
a5.BorderSizePixel=0
a5.Position=UDim2.new(0,2,0.5,0)
a5.Size=UDim2.new(0,0,0,0)
a5.Name="ChooseFrame"
a5.Parent=a1

a6.Color=i.Color
a6.Thickness=1.600000023841858
a6.Transparency=0.999
a6.Parent=a5

a7.Parent=a5

a3.Activated:Connect(function()
CircleClick(a3,d.X,d.Y)
if aM.Multi then
if a1.BackgroundTransparency>0.95 then
table.insert(aN.Value,a0)
aN:Set(aN.Value)
else
for a8,a9 in pairs(aN.Value)do
if a9==a0 then
table.remove(aN.Value,a8)
break
end
end
aN:Set(aN.Value)
end
else
aN.Value={a0}
aN:Set(aN.Value)
end
end)
local a8=0
for a9,ba in aX:GetChildren()do
if ba.Name~="UIListLayout"then
a8=a8+3+ba.Size.Y.Offset
end
end
aX.CanvasSize=UDim2.new(0,0,0,a8)
aZ=aZ+1
end
function aN.Refresh(a_,a0,a1)
a0=a0 or{}
a1=a1 or{}
aN:Clear()
for a2,a3 in pairs(a0)do
aN:AddOption(a3)
end
aN.Options=a0
aN:Set(a1)
end
aN:Refresh(aN.Options,(aM.Multi and aN.Value or{aN.Value}))
aJ=aJ+1
ac=ac+1
return aN
end
ao=ao+1
return aI
end
ab=ab+1
return an
end
return aa
end
return f
