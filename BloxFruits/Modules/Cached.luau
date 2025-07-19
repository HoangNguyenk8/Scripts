local Cached = {
    Players = game:GetService("Players"),
    LocalPlayer = game:GetService("Players").LocalPlayer,
    WS = workspace,
    RS = game:GetService("ReplicatedStorage"),
    Lighting = game:GetService("Lighting"),
    Remotes = game:GetService("ReplicatedStorage").Remotes,
    CommF_ = game:GetService("ReplicatedStorage").Remotes.CommF_,
    World = (game.PlaceId == 2753915549 and 1 or game.PlaceId == 4442272183 and 2 or game.PlaceId == 7449423635 and 3),
    UnlockPortal = false,
    Gift1MFruit = false,
    TweenService = game:GetService("TweenService"),
    FastLoader = loadstring(game:HttpGet("https://raw.githubusercontent.com/HoangNguyenk8/Roblox/refs/heads/main/Util/FastAttack.luau"))(),
    AllMelee = {
        ["Black Leg"] = {"BuyBlackLeg"}, 
        ["Electro"] = {"BuyElectro"}, 
        ["Fishman Karate"] = {"BuyFishmanKarate"}, 
        ["Dragon Claw"] = {"BlackbeardReward", "DragonClaw", "2"}, 
        ["Superhuman"] = {"BuySuperhuman"}, 
        ["Death Step"] = {"BuyDeathStep"}, 
        ["Electric Claw"] = {"BuyElectricClaw"}, 
        ["Sharkman Karate"] = {"BuySharkmanKarate"}, 
        ["Dragon Talon"] = {"BuyDragonTalon"}, 
        ["Godhuman"] = {"BuyGodhuman"}, 
        ["Sanguine Art"] = {"BuySanguineArt"}
    },
    CollectionService = game:GetService("CollectionService"),
    GuideModule = require(game.ReplicatedStorage:WaitForChild("GuideModule")),
    Quests = require(game.ReplicatedStorage:WaitForChild("Quests")),
    BlackListQuests = {"BartiloQuest","CitizenQuest","Trainees"},
    TableMelees = {},
    TotalChest = 0,
    AllBoss = {
        ["Saber Expert"] = {
            IsQuest = false
        },
        ["The Saw"] = {
            IsQuest = false
        },
        ["Greybeard"] = {
            IsQuest = false
        },
        ["The Gorilla King"] = {
            IsQuest = true,
            LevelReq = 20,
            Quest = {"JungleQuest", CFrame.new(-1598, 37, 153)}
        },
        ["Chef"] = {
            IsQuest = true,
            LevelReq = 55,
            Quest = {"BuggyQuest1", CFrame.new(-1140, 4, 3829)}
        },
        ["Yeti"] = {
            IsQuest = true,
            LevelReq = 105,
            Quest = {"SnowQuest", CFrame.new(1385, 87, -1298)}
        },
        ["Vice Admiral"] = {
            IsQuest = true,
            LevelReq = 130,
            Quest = {"MarineQuest2", CFrame.new(-5035, 29, 4326), 2}
        },
        ["Swan"] = {
            IsQuest = true,
            LevelReq = 240,
            Quest = {"ImpelQuest", CFrame.new(5191, 4, 692)}
        },
        ["Chief Warden"] = {
            IsQuest = true,
            LevelReq = 230,
            Quest = {"ImpelQuest", CFrame.new(5191, 4, 692), 2}
        },
        ["Warden"] = {
            IsQuest = true,
            LevelReq = 220,
            Quest = {"ImpelQuest", CFrame.new(5191, 4, 692), 1}
        },
        ["Magma Admiral"] = {
            IsQuest = true,
            LevelReq = 350,
            Quest = {"MagmaQuest", CFrame.new(-5319, 12, 8515)}
        },
        ["Fishman Lord"] = {
            IsQuest = true,
            LevelReq = 425,
            Quest = {"FishmanQuest", CFrame.new(61122, 18, 1567)}
        },
        ["Wysper"] = {
            IsQuest = true,
            LevelReq = 500,
            Quest = {"SkyExp1Quest", CFrame.new(-7861, 5545, -381)}
        },
        ["Thunder God"] = {
            IsQuest = true,
            LevelReq = 575,
            Quest = {"SkyExp2Quest", CFrame.new(-7903, 5636, -1412)}
        },
        ["Cyborg"] = {
            IsQuest = true,
            LevelReq = 675,
            Quest = {"FountainQuest", CFrame.new(5258, 39, 4052)}
        },
        ["Don Swan"] = {
            IsQuest = false
        },
        ["Cursed Captain"] = {
            IsQuest = false
        },
        ["Darkbeard"] = {
            IsQuest = false
        },
        ["Diamond"] = {
            IsQuest = true,
            LevelReq = 750,
            Quest = {"Area1Quest", CFrame.new(-427, 73, 1835)}
        },
        ["Jeremy"] = {
            IsQuest = true,
            LevelReq = 850,
            Quest = {"Area2Quest", CFrame.new(635, 73, 919)}
        },
        ["Orbitus"] = {
            IsQuest = true,
            LevelReq = 925,
            Quest = {"MarineQuest3", CFrame.new(-2441, 73, -3219)}
        },
        ["Smoke Admiral"] = {
            IsQuest = true,
            LevelReq = 1150,
            Quest = {"IceSideQuest", CFrame.new(-6061, 16, -4904)}
        },
        ["Awakened Ice Admiral"] = {
            IsQuest = true,
            LevelReq = 1400,
            Quest = {"FrostQuest", CFrame.new(5668, 28, -6484)}
        },
        ["Tide Keeper"] = {
            IsQuest = true,
            LevelReq = 1475,
            Quest = {"ForgottenQuest", CFrame.new(-3056, 240, -10145)}
        },
        ["Tyrant of the Skies"] = {
            IsQuest = false
        },
        ["Cake Prince"] = {
            IsQuest = false
        },
        ["Dough King"] = {
            IsQuest = false
        },
        ["rip_indra True Form"] = {
            IsQuest = false
        },
        ["Stone"] = {
            IsQuest = true,
            LevelReq = 1550,
            Quest = {"PiratePortQuest", CFrame.new(-449, 109, 5950)}
        },
        ["Hydra Leader"] = {
            IsQuest = true,
            LevelReq = 1675,
            Quest = {"VenomCrewQuest", CFrame.new(5214, 1004, 761)}
        },
        ["Kilo Admiral"] = {
            IsQuest = true,
            LevelReq = 1750,
            Quest = {"MarineTreeIsland", CFrame.new(2485, 74, -6788)}
        },
        ["Captain Elephant"] = {
            IsQuest = true,
            LevelReq = 1875,
            Quest = {"DeepForestIsland", CFrame.new(-13233, 332, -7626)}
        },
        ["Beautiful Pirate"] = {
            IsQuest = true,
            LevelReq = 1950,
            Quest = {"DeepForestIsland2", CFrame.new(-12682, 391, -9901)}
        },
        ["Cake Queen"] = {
            IsQuest = true,
            LevelReq = 2175,
            Quest = {"IceCreamIslandQuest", CFrame.new(-818, 66, -10964)}
        },
        ["Longma"] = {
            IsQuest = false
        }
    }    ,
    Elites = {
        "Urban",
        "Deandre",
        "Diablo"
    },
    Mobs = {
        TikiOutpost = {
            "Island Boy",
            "Isle Outlaw",
            "Isle Champion",
            "Serpent Hunter",
            "Skull Slayer",
            "Sun-kissed Warrior"
        },
        ripindra = {
            "rip_indra",
            "rip_indra True Form"
        },
        CocoaMobs = {
            "Cocoa Warrior",
            "Chocolate Bar Battler",
            "Candy Rebel",
            "Sweet Thief",
        },
        SeaMobs = {
            "Shark",
            "Fish Crew Member",
            "Piranha",
            "Terrorshark"
        },
        RengokuMobs = {
            "Awakened Ice Admiral",
            "Arctic Warrior",
            "Snow Lurker"
        },
    },
    Combo = {
        ["Screen1"] = {"Button1",Color3.fromRGB(255, 0, 0)},
        ["Screen2"] = {"Button2",Color3.fromRGB(0, 0, 255)},
        ["Screen3"] = {"Button3",Color3.fromRGB(0, 255, 0)},
        ["Screen4"] = {"Button4",Color3.fromRGB(0, 0, 255)}
    },
    ["Fruit Price"] = {
        ["Rocket-Rocket"] = 5000,
        ["Spin-Spin"] = 7500,
        ["Blade-Blade"] = 30000,
        ["Spring-Spring"] = 60000,
        ["Bomb-Bomb"] = 80000,
        ["Smoke-Smoke"] = 100000,
        ["Spike-Spike"] = 180000,
        ["Flame-Flame"] = 250000,
        ["Ice-Ice"] = 350000,
        ["Sand-Sand"] = 420000,
        ["Dark-Dark"] = 500000,
        ["Eagle-Eagle"] = 550000,
        ["Diamond-Diamond"] = 600000,
        ["Light-Light"] = 650000,
        ["Rubber-Rubber"] = 750000,
        ["Ghost-Ghost"] = 940000,
        ["Magma-Magma"] = 960000,
        ["Quake-Quake"] = 1000000,
        ["Buddha-Buddha"] = 1200000,
        ["Love-Love"] = 1300000,
        ["Creation-Creation"] = 1400000,
        ["Spider-Spider"] = 1500000,
        ["Sound-Sound"] = 1700000,
        ["Phoenix-Phoenix"] = 1800000,
        ["Portal-Portal"] = 1900000,
        ["Rumble-Rumble"] = 2100000,
        ["Pain-Pain"] = 2300000,
        ["Blizzard-Blizzard"] = 2400000,
        ["Gravity-Gravity"] = 2500000,
        ["Mammoth-Mammoth"] = 2700000,
        ["T-Rex-T-Rex"] = 2700000,
        ["Dough-Dough"] = 2800000,
        ["Shadow-Shadow"] = 2900000,
        ["Venom-Venom"] = 3000000,
        ["Control-Control"] = 3200000,
        ["Gas-Gas"] = 3200000,
        ["Spirit-Spirit"] = 3400000,
        ["Leopard-Leopard"] = 5000000,
        ["Yeti-Yeti"] = 5000000,
        ["Kitsune-Kitsune"] = 8000000,
        ["Dragon-Dragon"] = 15000000,        
    },
    ["1M Fruits"] = {},
    ["Fruits Name"] = {},
}
print("[Zinner Hub] Loadded Cached Success!")
return Cached
