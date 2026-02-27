
#Menue
execute as @s if predicate sa:menue run function sa:menue/open
execute as @s if predicate sa:menue unless score @s menue_open matches 1 run scoreboard players set @s menue_open 1
execute as @s if predicate sa:menue run clear @s command_block[item_name="menue"]



#Achievment Reset
advancement revoke @s only item_interact