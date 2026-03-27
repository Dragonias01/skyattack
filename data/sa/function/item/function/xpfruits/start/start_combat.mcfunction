clear @s glow_berries[item_name=[{"text":"combat_fruit","italic":false}]] 1
tellraw @s ["[",{"text":"SERVER","color":"yellow"},"] ",{"text":"Combat XP Boost Aktiviert 1h!","color":"green"}]
scoreboard players set @s Combat_fruit_timer 100
