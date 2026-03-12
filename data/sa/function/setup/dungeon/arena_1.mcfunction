place template sa:entry_arena -4 99 -4
place template sa:boss_arena_1 -23 98 -51


execute in sa:dungeon_arena_1 if score server dungeon_arena_one_init matches 1 run summon minecraft:text_display 3 102 3 {text:{"text":"[Dungeon Master]","color":"dark_red"},see_through:true,billboard:"center",Tags:["npc","dungeon_master","indungeon"]}
execute in sa:dungeon_arena_1 if score server dungeon_arena_one_init matches 1 run summon mannequin 3 100 3 {profile:Dragonias01,immovable:true,Invulnerable:1b,NoGravity:1b,OnGround:1b,Silent:1b,Rotation:[180f,0f],Tags:["npc","dungeon_master","indungeon"]}
execute in sa:dungeon_arena_1 if score server dungeon_arena_one_init matches 1 run summon interaction 3 100 3 {width:1.0f,height:2.0f,Tags:["npc","dungeon_master","indungeon"]}

tp @s 0 100 0
scoreboard players set server dungeon_arena_one_init 1