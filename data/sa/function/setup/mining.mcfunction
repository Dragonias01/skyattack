# Blockbreak Tracking
scoreboard objectives add stone_mined minecraft.mined:minecraft.stone
scoreboard objectives add cstone_mined minecraft.mined:minecraft.cobblestone

#Mining Scoreboards
scoreboard objectives add mining_xp dummy "Mining XP"
scoreboard objectives add mining_lvl dummy "Mining Level"
scoreboard objectives add mining_goal dummy "Mining Goal"
scoreboard objectives add mining_drop dummy "Stein Ertrag"
scoreboard objectives add m_xp_gain dummy "Xp Gain"
scoreboard objectives add m_Drops dummy "Dropchance"
scoreboard objectives add m_drop_menge dummy "drop menge"
scoreboard objectives add m_pickaxe_gain dummy "menge der pickaxe"
scoreboard objectives add m_xp_gain dummy ""


scoreboard objectives add dummy dummy

#Config
scoreboard objectives add goal_multiplyer dummy
scoreboard players set @a goal_multiplyer 2