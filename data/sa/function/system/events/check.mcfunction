scoreboard players add server event_counter 1

#Event Funktion
execute if score server event_num matches 1 run gamerule random_tick_speed 30
execute if score server event_num matches 2 run gamerule random_tick_speed 60
execute unless score server event_num matches 1 unless score server event_num matches 2 run gamerule random_tick_speed 15
execute if score server event_num matches 3 run scoreboard players set server eventboost_combat 100
execute unless score server event_num matches 3 run scoreboard players set server eventboost_combat 0

execute if score server event_num matches 4 run scoreboard players set server eventboost_logging 100
execute unless score server event_num matches 4 run scoreboard players set server eventboost_logging 0

execute if score server event_num matches 5 run scoreboard players set server eventboost_mining 100
execute unless score server event_num matches 5 run scoreboard players set server eventboost_mining 0

execute if score server event_num matches 6 run scoreboard players set server eventboost_farming 100
execute unless score server event_num matches 6 run scoreboard players set server eventboost_farming 0

execute if score server event_num matches 7 run scoreboard players set server eventboost_fishing 100
execute unless score server event_num matches 7 run scoreboard players set server eventboost_fishing 0







#72000 = 1h
execute if score server event_counter matches 72000 run function sa:system/events/select
execute if score server event_counter matches 72000 run scoreboard players set server event_counter 0
