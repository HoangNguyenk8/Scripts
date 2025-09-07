if require then
    local AllMutations: TableMutations = {}
    local MutationHandler = require(game:GetService("ReplicatedStorage").Modules.MutationHandler)
    for i, _ in next, MutationHandler.MutationNames do
        AllMutations[#AllMutations + 1] = i
    end
    return AllMutations
else
    return {
        "Eclipsed", "Meteoric", "Cosmic", "Cyclonic", "Fried", "Toxic", "Tempestuous",
        "Shocked", "Aurora", "Choc", "Bloodlit", "Spaghetti", "Sliced", "Luminous",
        "Flaming", "Verdant", "Glimmering", "Infected", "Enchanted", "Junkshock",
        "AncientAmber", "AscendedChakra", "Twisted", "Alienlike", "FoxfireChakra",
        "CorruptChakra", "Cooked", "Chilled", "Ceramic", "Beanbound", "Radioactive",
        "Aromatic", "Heavenly", "Boil", "Celestial", "Galactic", "Warped", "Windstruck",
        "Wet", "Burnt", "Sundried", "Blitzshock", "Cracked", "Subzero", "Abyssal",
        "Corrosive", "Disco", "Gloom", "Zombified", "Rot", "Dawnbound", "Friendbound",
        "Molten", "Paradisal", "Infernal", "Clay", "Bloom", "Brainrot", "HoneyGlazed",
        "Frozen", "Corrupt", "OldAmber", "Pollinated", "Maelstrom", "Chakra", "Sandy",
        "Sauce", "HarmonisedChakra", "Oil", "CorruptFoxfireChakra", "Static", "Meatball",
        "Gnomed", "HarmonisedFoxfireChakra", "Stormcharged", "Enlightened", "Tranquil",
        "Moonlit", "Pasta", "Blazing", "Plasma", "Touchdown", "Cloudtouched",
        "Drenched", "Wiltproof", "Amber", "Fortune", "Lightcycle", "Jackpot",
        "Voidtouched", "Glitched", "Acidic"
    }
end
