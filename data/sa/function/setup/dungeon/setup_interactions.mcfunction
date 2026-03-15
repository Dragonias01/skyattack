execute in sa:dungeon_arena_1 run setblock 0 101 -28 minecraft:reinforced_deepslate
execute in sa:dungeon_arena_1 run summon minecraft:interaction 0 102 -28 {width:1.0f,height:1.0f,Tags:["button","spawn_boss1"]}
execute in sa:dungeon_arena_1 run summon minecraft:item_display 0 102.5 -28 {item:{id:trial_key},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.7f,0.7f,0.7f],translation:[0f,0f,0f]},Tags:["goal","spawn_boss1"],billboard:"vertical"}
execute in sa:dungeon_arena_1 run summon minecraft:text_display 0 103 -28 {text:{"text":"0/1"},Tags:["spawn_boss1"],billboard:"center"}

execute in sa:dungeon_arena_1 run summon minecraft:interaction -1 101 -28 {width:1.0f,height:1.0f,Tags:["npc","dungeon_master","indungeon"]}