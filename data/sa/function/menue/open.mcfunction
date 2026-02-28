execute as @s if predicate sa:menue run scoreboard players enable @a menue
execute as @s if predicate sa:menue run dialog show @s sa:main_menue
execute as @s if predicate sa:menue run scoreboard players set @s menue_open 1
