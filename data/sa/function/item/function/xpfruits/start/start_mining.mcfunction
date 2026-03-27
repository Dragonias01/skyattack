clear @s glow_berries[item_name=[{"text":"mining_fruit","italic":false}]] 1
tellraw @s ["[",{"text":"SERVER","color":"yellow"},"] ",{"text":"Mining XP Boost Aktiviert 1h!","color":"green"}]
scoreboard players set @s Mining_fruit_timer 100
