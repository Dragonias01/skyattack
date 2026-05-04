execute store result score server event_num run random value 1..7
execute if score server event_num matches 1 run tellraw @a [{"text":"[","color":"white"},{"text":"Server","color":"yellow"},{"text":"]","color":"white"},{"text":" Event: Random Tickspeed X2 Activated!","color":"green"}]
execute if score server event_num matches 2 run tellraw @a [{"text":"[","color":"white"},{"text":"Server","color":"yellow"},{"text":"]","color":"white"},{"text":" Event: Random Tickspeed X4 Activated!","color":"green"}]
execute if score server event_num matches 3 run tellraw @a [{"text":"[","color":"white"},{"text":"Server","color":"yellow"},{"text":"]","color":"white"},{"text":" Event: Combat XP Boost Activated!","color":"green"}]
execute if score server event_num matches 4 run tellraw @a [{"text":"[","color":"white"},{"text":"Server","color":"yellow"},{"text":"]","color":"white"},{"text":" Event: Logging XP Boost Activated!","color":"green"}]
execute if score server event_num matches 5 run tellraw @a [{"text":"[","color":"white"},{"text":"Server","color":"yellow"},{"text":"]","color":"white"},{"text":" Event: Mining XP Boost Activated!","color":"green"}]
execute if score server event_num matches 6 run tellraw @a [{"text":"[","color":"white"},{"text":"Server","color":"yellow"},{"text":"]","color":"white"},{"text":" Event: Farming XP Boost Activated!","color":"green"}]
execute if score server event_num matches 7 run tellraw @a [{"text":"[","color":"white"},{"text":"Server","color":"yellow"},{"text":"]","color":"white"},{"text":" Event: Fishing XP Boost Activated!","color":"green"}]
