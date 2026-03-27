execute as @a if score @s Logging_fruit_timer matches ..99 run scoreboard players set @s Logging_fruit_timer 1301
execute as @a if score @s Logging_fruit_timer matches 100..1300 run scoreboard players set @s Logging_fruit_gain 100
execute as @a if score @s Logging_fruit_timer matches 1301.. run scoreboard players set @s Logging_fruit_gain 0

execute as @a if score @s Mining_fruit_timer matches ..99 run scoreboard players set @s Mining_fruit_timer 1301
execute as @a if score @s Mining_fruit_timer matches 100..1300 run scoreboard players set @s m_xp_fruit_gain 100
execute as @a if score @s Mining_fruit_timer matches 1301.. run scoreboard players set @s m_xp_fruit_gain 0

execute as @a if score @s Farming_fruit_timer matches ..99 run scoreboard players set @s Farming_fruit_timer 1301
execute as @a if score @s Farming_fruit_timer matches 100..1300 run scoreboard players set @s farming_xp_fruit_gain 100
execute as @a if score @s Farming_fruit_timer matches 1301.. run scoreboard players set @s farming_xp_fruit_gain 0

execute as @a if score @s Combat_fruit_timer matches ..99 run scoreboard players set @s Combat_fruit_timer 1301
execute as @a if score @s Combat_fruit_timer matches 100..1300 run scoreboard players set @s combat_xp_fruit_gain 100
execute as @a if score @s Combat_fruit_timer matches 1301.. run scoreboard players set @s combat_xp_fruit_gain 0