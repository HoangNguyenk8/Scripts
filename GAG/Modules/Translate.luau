local List = {
    {
      {"Auto Harvest","Auto collect all fruits in your garden"},
      {"Tự động thu hoạch trái","Tự động thu hoạch tất cả trái trong vườn của bạn"}
    },
    {
        {"Auto Sell","Auto Sell fruits in your inventory"},
        {"Tự động bán","Tự động bán trái cây trong túi"},
    },
    {
        {"Auto Plants","Auto plants seed"},
        {"Tự động trồng cây","Tự động trông cây"},
    },
    {
        {"Stop Weather","Stop Collect if currently weather is weather you selected to stop"},
        {"Dừng thời tiết","Dừng thu hoạch nếu thời tiết hiện tại là thời tiết nãy bạn chọn để dừng"},
    },
    {
        {"Auto Buy Sees",""},
        {"Tự mua hạt giống",""},
    },
    {
        {"Auto Buy Gear",""},
        {"Tự động mua gear",""},
    },
    {
        {"Auto Destroy Trees","Auto destroy tree selected in your garden"},
        {"Tự động xóa cây","Tự động xóa cây đã chọn trong vườn của bạn"},
    },
    {
        {"Select Plants to Delete",""},
        {"Chọn cây để xóa",""},
    },
    {
        {"WalkSpeed",""},
        {"Tốc độ chạy",""},
    },
    {
        {"JumpPower",""},
        {"Nhảy Cao",""},
    },
    {
        {"Auto Collect Pollinated Fruits",""},
        {"Tự động thu hoạch trái có hiêu ứng Pollinated",""},
    },
    {
        {"Auto Give Pollinated Fruits","Auto give you fruits have effect Pollinated to NPCs"},
        {"Tự động đưa trái cây có hiệu ứng Pollinted","Tự động đưa trái cây có hiệu ứng Pollinated cho NPCs"},
    },
    {
        {"Auto Honey",""},
        {"Tự động thu lấy honey",""},
    },
    {
        {"Auto Buy Eggs",""},
        {"Tự động mua trứng",""},
    },
    {
        {"Auto Hatch Eggs",""},
        {"Tự động mở trứng",""},
    },
    {
        {"ESP Eggs",""},
        {"Định vị trứng","Hiện thị pet trong trứng"},
    },
    {
        {"Auto Sell All Pets","Auto sell all pets in your inventory"},
        {"Tự động bán tất cả Pets","Tự dộng bán tất cả Pet trong túi đồ bạn"},
    },
    {
        {"Seeds List",""},
        {"Chọn hạt giống",""},
    },
    {
        {"Select Seeds",""},
        {"Chọn hạt giống để trồng",""},
    },
    {
        {"Select Side",""},
        {"Chọn bên để trồng",""},
    },
}
getgenv().Translate = false
local AlreadyTranslate = {}
for r,v in next, List do
    AlreadyTranslate[List[r][1][1]] = AlreadyTranslate[List[r][1][1]] or {}
    if getgenv().Translate then
        AlreadyTranslate[List[r][1][1]] = {
            Title = List[r][2][1],
            Description = List[r][2][2]
        }
    else
        AlreadyTranslate[List[r][1][1]] = {
            Title = List[r][1][1],
            Description = List[r][1][2]
        }
    end
end
function List:Translate(Name)
    return AlreadyTranslate[Name]
end
return List
