clear @s sweet_berries[item_name=[{"text":"foraging_fruit","italic":false}]] 1
tellraw @s ["[",{"text":"SERVER","color":"yellow"},"] ",{"text":"Foraging XP Boost Activated for 1h!","color":"green"}]
scoreboard players set @s Logging_fruit_timer 100
