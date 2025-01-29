hookfunction(require(game.ReplicatedStorage.Effect.Container.Death), function() return nil end)
hookfunction(require(game.ReplicatedStorage.Effect.Container.Respawn), function() return nil end)
hookfunction(require(game.ReplicatedStorage:WaitForChild("GuideModule")).ChangeDisplayedNPC, function() return nil end)
require(game.ReplicatedStorage.Util.CameraShaker):Stop()
if workspace:FindFirstChild("Rocks") then workspace:FindFirstChild("Rocks"):Destroy() end
if workspace._WorldOrigin["Foam;"] then workspace._WorldOrigin["Foam;"]:Destroy() end
game.Lighting.FogEnd = 100000 for r, v in pairsgame.Lightingc:GetDescendants()) do if v:IsA("Atmosphere") then v:Destroy() end end
setfpscap(60)
