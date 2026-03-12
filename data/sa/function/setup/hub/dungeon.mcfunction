
kill @e[type=interaction,tag=enter_dungeon_1]
#Hub
place template sa:dungeon_1 -29 0 -9
place template sa:dungeon_2 19 0 -9


#summon minecraft:text_display -21 4 6 {text:{"text":"[Dungeon Master]","color":"dark_red"},see_through:true,billboard:"center",Tags:["npc","dungeon_master"]}
#summon mannequin -21 2 6 {profile:Dragonias01,immovable:true,Invulnerable:1b,NoGravity:1b,OnGround:1b,Silent:1b,Rotation:[180f,0f],Tags:["npc","dungeon_master"]}
#summon interaction -21 2 6 {width:1.0f,height:2.0f,Tags:["npc","dungeon_master","indungeon"]}

summon interaction -4 3 -7.4 {width:3.0f,height:3.0f,Tags:["button","enter_dungeon_1"]}
