local CharacterBuilder = include("lib.CharacterTemplateLib")

local skrik = CharacterBuilder.newCharacterSet("Skrik")

skrik:addCostume("character_skrik_mask")

skrik:GetItemIdByName("Weird Pen")

skrik:setCharge(true)

local normalStats = CharacterBuilder.newStatTable()
normalStats.Damage = 4.20
normalStats.Firedelay = 2.19
normalStats.Shotspeed = 1.00
normalStats.Range = 8.00
normalStats.Speed = 1.20
normalStats.Tearflags = TearFlags.TEAR_HOMING
normalStats.Tearcolor = Color(0.8, 0, 0.8, 1.0, 0, 0, 0)
normalStats.Flying = false
normalStats.Luck = 0.00

skrik:setStats(normalStats)

--skrik:setHeartType(2) -- lets you set the character to be a blackheart or soulheart only character
-- USE AT YOUR OWN RISK!

local taintedStats = CharacterBuilder.newStatTable() -- create a new stat table
taintedStats.Damage = 4.20
taintedStats.Firedelay = 2.19
taintedStats.Shotspeed = 1.00
taintedStats.Range = 18.00
taintedStats.Speed = 1.00
taintedStats.Tearflags = TearFlags.TEAR_PULSE | TearFlags.TEAR_OCCULT | TearFlags.TEAR_ORBIT | TearFlags.TEAR_ORBIT_ADVANCED | TearFlags.TEAR_BIG_SPIRAL | TearFlags.TEAR_SPIRAL
taintedStats.Tearcolor = Color(1.0, 1.0, 1.0, 1.0, 0, 0, 0) -- Color, first four arguments between 0 and 1
taintedStats.Flying = false
taintedStats.Luck = 1.00

skrik:setStats(taintedStats, true)

return CharacterBuilder.build()