hookfunction(require(game.ReplicatedStorage.Effect.Container.Death), function() return nil end)
hookfunction(require(game.ReplicatedStorage.Effect.Container.Respawn), function() return nil end)
hookfunction(require(game.ReplicatedStorage:WaitForChild("GuideModule")).ChangeDisplayedNPC, function() return nil end)
require(game.ReplicatedStorage.Util.CameraShaker):Stop()
if workspace:FindFirstChild("Rocks") then workspace:FindFirstChild("Rocks"):Destroy() end
if workspace._WorldOrigin["Foam;"] then workspace._WorldOrigin["Foam;"]:Destroy() end
setfpscap(60)
