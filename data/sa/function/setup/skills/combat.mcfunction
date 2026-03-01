scoreboard objectives add zombie_killed minecraft.killed:minecraft.zombie
scoreboard objectives add spider_killed minecraft.killed:minecraft.spider
scoreboard objectives add witch_killed minecraft.killed:minecraft.witch
scoreboard objectives add skeleton_killed minecraft.killed:minecraft.skeleton
scoreboard objectives add creeper_killed minecraft.killed:minecraft.creeper
scoreboard objectives add enderman_killed minecraft.killed:minecraft.enderman

#Scoreboards

scoreboard objectives add combat_goal dummy
scoreboard objectives add combat_lvl dummy
scoreboard objectives add combat_xp_gain dummy
scoreboard objectives add combat_xp dummy

scoreboard objectives add combat_drop_menge dummy
scoreboard objectives add c_sword_gain dummy
scoreboard objectives add combat_drops dummy
scoreboard objectives add combat_multiplier_num dummy "combat Goal Multiplier (Numerator)"
scoreboard objectives add combat_multiplier_den dummy "combat Goal Multiplier (Denominator)"

scoreboard players set server combat_multiplier_num 11
scoreboard players set server combat_multiplier_den 10
 
#playerinit
# --- combat ---
scoreboard players set @a combat_xp 0
scoreboard players set @a combat_lvl 0
scoreboard players set @a combat_goal 10
scoreboard players set @a combat_drops 0
scoreboard players set @a combat_drop_menge 0
scoreboard players set @a combat_xp_gain 0
scoreboard players set @a c_sword_gain 0

#combat auf Initiatliziert setzten 
scoreboard players set server Combat_initialized 1