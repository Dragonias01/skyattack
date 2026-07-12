#haupt function die den status des dungeons überprüft

# status 0 = geschlossen
# status 1 = offen (timer läuft, Spieler können joinen)
# status 2 = aktiv (Boss fight läuft, Spieler können joinen)
# status 3 = Boss besiegt, Loot generiert, Spieler können joinen
# status 4 = Boss besiegt, Loot generiert, Spieler können nicht mehr joinen

# bei status 0 = Check ob item in inventory -> open -> status 1
    execute store result score @s temp run clear @s minecraft:trial_key[item_name={text:"dungeon_key",italic:0b}] 0
    execute as @s if score server dg2_state matches 0 if score @s temp matches 1.. run function sa:dungeon/internal/open with storage sa:config dungeon.floor1.dungeon2
    execute as @s if score server dg2_state matches 0 unless score @s temp matches 1.. run tellraw @s {"text":"You need a Dungeon Key to enter!","color":"red"}
    scoreboard players reset @s temp

# bei status 1-4 = join function

execute if score server dg2_state matches 1.. run function sa:dungeon/internal/join_dungeon with storage sa:config dungeon.floor1.dungeon2


    