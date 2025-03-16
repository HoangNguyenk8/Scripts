function LoaderScript(main)
  if main == 2753915549 or main == 4442272183 or main == 7449423635 then
    return https://raw.githubusercontent.com/HoangNguyenk8/Scripts/refs/heads/main/BF-Main.lua
  else
    return "Kick"
  end
end
if LoaderScript(game.PlaceId) ~= "Kick" then
  loadstring(game:HttpGet(LoaderScript(game.PlaceId)))()
else
  game.Players.LocalPlayer:Kick("Zinner Hub\n Not Support This Place")
end
