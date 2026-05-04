clear @s pitcher_pod[item_name=[{"text":"farming_fruit","italic":false}]] 1
tellraw @s ["[",{"text":"SERVER","color":"yellow"},"] ",{"text":"Farming XP Boost Activated for 1h!","color":"green"}]
scoreboard players set @s Farming_fruit_timer 100
