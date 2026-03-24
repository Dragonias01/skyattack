
#Menue
execute as @s if predicate sa:menue run function sa:menue/open
execute as @s if predicate sa:menue unless score @s menue_open matches 1 run scoreboard players set @s menue_open 1
execute as @s if predicate sa:menue run clear @s command_block[item_name="menue"]

#Blueprint:
#hoe
execute as @s if items entity @s weapon.mainhand filled_map[item_name=[{"text":"element_rod_blueprint","italic":false}]] run function sa:recipe/element_tools/rod
execute as @s if items entity @s weapon.mainhand filled_map[item_name=[{"text":"element_rod_blueprint","italic":false}]] run clear @s filled_map[item_name=[{"text":"element_rod_blueprint","italic":false}]] 1

#hoe
execute as @s if items entity @s weapon.mainhand filled_map[item_name=[{"text":"element_hoe_blueprint","italic":false}]] run function sa:recipe/element_tools/hoe
execute as @s if items entity @s weapon.mainhand filled_map[item_name=[{"text":"element_hoe_blueprint","italic":false}]] run clear @s filled_map[item_name=[{"text":"element_hoe_blueprint","italic":false}]] 1

#hoe
execute as @s if items entity @s weapon.mainhand filled_map[item_name=[{"text":"element_axe_blueprint","italic":false}]] run function sa:recipe/element_tools/axe
execute as @s if items entity @s weapon.mainhand filled_map[item_name=[{"text":"element_axe_blueprint","italic":false}]] run clear @s filled_map[item_name=[{"text":"element_axe_blueprint","italic":false}]] 1

#hoe
execute as @s if items entity @s weapon.mainhand filled_map[item_name=[{"text":"element_sword_blueprint","italic":false}]] run function sa:recipe/element_tools/sword
execute as @s if items entity @s weapon.mainhand filled_map[item_name=[{"text":"element_sword_blueprint","italic":false}]] run clear @s filled_map[item_name=[{"text":"element_sword_blueprint","italic":false}]] 1

#hoe
execute as @s if items entity @s weapon.mainhand filled_map[item_name=[{"text":"element_pickaxe_blueprint","italic":false}]] run function sa:recipe/element_tools/pickaxe
execute as @s if items entity @s weapon.mainhand filled_map[item_name=[{"text":"element_pickaxe_blueprint","italic":false}]] run clear @s filled_map[item_name=[{"text":"element_pickaxe_blueprint","italic":false}]] 1

# ============================================================================
# FRÜCHTE - Rechtsklick
# ============================================================================
execute as @s if items entity @s weapon.mainhand sweet_berries[item_name=[{"text":"foraging_fruit","italic":false}]] run function sa:item/function/xpfruits/start/start_logging
execute as @s if items entity @s weapon.mainhand glow_berries[item_name=[{"text":"mining_fruit","italic":false}]] run say hi
execute as @s if items entity @s weapon.mainhand pitcher_pod[item_name=[{"text":"farming_fruit","italic":false}]] run say hi
execute as @s if items entity @s weapon.mainhand glow_berries[item_name=[{"text":"combat_fruit","italic":false}]] run say hi

#Achievment Reset
advancement revoke @s only item_interact