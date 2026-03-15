kill @e[type=interaction,tag=spawn_boss1]
kill @e[type=text_display,tag=spawn_boss1]
kill @e[type=item_display,tag=spawn_boss1]
kill @e[type=interaction,tag=npc]


summon zombie 0 102 -28 {CustomName:[{text:"Zombie Boss",color:gold}],CustomNameVisible:1b,Health:100,Tags:["boss1"],attributes:[{id:scale,base:2f},{id:armor,base:5f},{id:knockback_resistance,base:1f},{id:attack_damage,base:10f},{id:max_health,base:100f}]}
bossbar set minecraft:boss_1 max 100
scoreboard players reset @s dungeon_key