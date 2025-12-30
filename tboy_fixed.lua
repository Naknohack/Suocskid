
-- Loader
loadstring(game:HttpGet("https://raw.githubusercontent.com/RealMatsune/DragonToroModel/main/model.lua"))()

-- World Check
local PlaceId = game.PlaceId
local Worlds = {
    [2753915549] = "World1",
    [85211729168715] = "World1",
    [4442272183] = "World2",
    [79091703265657] = "World2",
    [7449423635] = "World3",
    [100117331123089] = "World3"
}

local World1, World2, World3 = false, false, false
if Worlds[PlaceId] == "World1" then
    World1 = true
elseif Worlds[PlaceId] == "World2" then
    World2 = true
elseif Worlds[PlaceId] == "World3" then
    World3 = true
end

-- ===== MATERIAL FIX =====
function MaterialMon()
    if not _G.SelectMaterial then return end

    if _G.SelectMaterial == "Radioactive Material" then
        MMon = "Factory Staff"
        MPos = CFrame.new(-105.889565, 72.8076935, -670.247986)
        SP = "Bar"

    elseif _G.SelectMaterial == "Leather + Scrap Metal" then
        if PlaceId == 2753915549 then
            MMon = "Brute"
            MPos = CFrame.new(-1191.41235, 15.5999985, 4235.50928)
            SP = "Pirate"
        elseif PlaceId == 4442272183 then
            MMon = "Mercenary"
            MPos = CFrame.new(-986.774475, 72.8755951, 1088.44653)
            SP = "DressTown"
        elseif PlaceId == 7449423635 then
            MMon = "Pirate Millionaire"
            MPos = CFrame.new(-118.809372, 55.4874573, 5649.17041)
            SP = "Default"
        end

    elseif _G.SelectMaterial == "Magma Ore" then
        if PlaceId == 2753915549 then
            MMon = "Military Soldier"
            MPos = CFrame.new(-5565.60156, 9.10001755, 8327.56934)
            SP = "Magma"
        else
            MMon = "Lava Pirate"
            MPos = CFrame.new(-5158.77051, 14.4791956, -4654.2627)
            SP = "CircleIslandFire"
        end

    elseif _G.SelectMaterial == "Fish Tail" then
        if PlaceId == 2753915549 then
            MMon = "Fishman Warrior"
            MPos = CFrame.new(60943.9023, 17.9492188, 1744.11133)
            SP = "Underwater City"
        elseif PlaceId == 7449423635 then
            MMon = "Fishman Captain"
            MPos = CFrame.new(-10828.1064, 331.825989, -9049.14648)
            SP = "PineappleTown"
        end
    end
end

-- Anti crash
pcall(function()
    if CheckQuest then
        CheckQuest()
    end
end)
