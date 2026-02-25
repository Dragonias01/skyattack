
#Menue
execute as @s if predicate sa:menue run say hi
execute as @s if predicate sa:menue run dialog show @s sa:main_menue
schedule function sa:item/advancment_reset 20t
