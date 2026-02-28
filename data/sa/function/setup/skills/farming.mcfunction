scoreboard objectives add potato_mined minecraft.mined:potatoes

#Scoreboards

scoreboard objectives add farming_goal dummy
scoreboard objectives add farming_lvl dummy
scoreboard objectives add farming_xp_gain dummy
scoreboard objectives add farming_xp dummy

scoreboard objectives add farming_drop_menge dummy
scoreboard objectives add f_hoe_gain dummy
scoreboard objectives add farming_drops dummy
scoreboard objectives add farming_multiplier_num dummy "farming Goal Multiplier (Numerator)"
scoreboard objectives add farming_multiplier_den dummy "farming Goal Multiplier (Denominator)"

scoreboard players set server farming_multiplier_num 11
scoreboard players set server farming_multiplier_den 10
 
#playerinit
# --- farming ---
scoreboard players set @a farming_xp 0
scoreboard players set @a farming_lvl 0
scoreboard players set @a farming_goal 100
scoreboard players set @a m_Drops 0
scoreboard players set @a m_drop_menge 0
scoreboard players set @a m_xp_gain 0
scoreboard players set @a m_pickaxe_gain 0

#Farming auf Initiatliziert setzten 
scoreboard players set server farming_initialized 1