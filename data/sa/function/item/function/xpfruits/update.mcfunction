execute as @a if score @s Logging_fruit_timer matches ..99 run scoreboard players set @s Logging_fruit_timer 1301
execute as @a if score @s Logging_fruit_timer matches 100..1300 run scoreboard players set @s Logging_fruit_gain 100
execute as @a if score @s Logging_fruit_timer matches 1301.. run scoreboard players set @s Logging_fruit_gain 0