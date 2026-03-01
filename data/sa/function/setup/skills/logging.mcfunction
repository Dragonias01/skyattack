scoreboard objectives add oak_mined minecraft.mined:oak_log

#Scoreboards

scoreboard objectives add logging_goal dummy
scoreboard objectives add logging_lvl dummy
scoreboard objectives add logging_xp_gain dummy
scoreboard objectives add logging_xp dummy

scoreboard objectives add logging_drop_menge dummy
scoreboard objectives add l_axe_gain dummy
scoreboard objectives add logging_drops dummy

 
#playerinit
# --- logging ---
scoreboard players set @a logging_xp 0
scoreboard players set @a logging_lvl 0
scoreboard players set @a logging_goal 10
scoreboard players set @a logging_drops 0
scoreboard players set @a logging_drop_menge 0
scoreboard players set @a logging_xp_gain 0
scoreboard players set @a l_axe_gain 0

#logging auf Initiatliziert setzten 
scoreboard players set server logging_initialized 1