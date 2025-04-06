local Func = {}
GetAllBladeHits = function(Sized)
    local tablemob = {}
    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        if IsAlive(v) then
            if
                (v.HumanoidRootPart.Position -
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= Sized
             then
                table.insert(tablemob, v)
            end
        end
    end
    return tablemob
end
GetPlayersHit = function(Sized)
    local tablemob = {}
    for i, v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
        if
            v.Name ~= game.Players.LocalPlayer.Name and v:FindFirstChild("HumanoidRootPart") and
                v:FindFirstChild("Head") and
                v:FindFirstChild("Humanoid")
         then
            if
                (v.HumanoidRootPart.Position -
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= Sized
             then
                table.insert(tablemob, v)
            end
        end
    end
    return tablemob
end
function Func:Attack()
    bladehits = {}
    for r, v in pairs(GetAllBladeHits(65)) do
        table.insert(bladehits, v)
    end
    for r, v in pairs(GetPlayersHit(50)) do
        table.insert(bladehits, v)
    end
    if #bladehits == 0 then return end
    local args = {}
    args[1] = nil
    args[2] = {}
    for r, v in pairs(bladehits) do
        game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RE/RegisterAttack"):FireServer(0)
        if not args[1] then
            args[1] = v.Head
        end
        args[2][r] = {
            [1] = v,
            [2] = v.HumanoidRootPart
        }
    end
    game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RE/RegisterHit"):FireServer(unpack(args))
end
return Func
