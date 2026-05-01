setblock 0 101 -28 minecraft:reinforced_deepslate
summon minecraft:interaction 0 102 -28 {width:1.0f,height:1.0f,Tags:["button","spawn_boss1"]}
summon minecraft:item_display 0 102.5 -28 {item:{id:trial_key},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.7f,0.7f,0.7f],translation:[0f,0f,0f]},Tags:["goal","spawn_boss1"],billboard:"vertical"}
summon minecraft:text_display 0 103 -28 {text:{"text":"0/1"},Tags:["spawn_boss1"],billboard:"center"}

#summon minecraft:text_display 0 102 3 {text:{"text":"[Dungeon Master]","color":"dark_red"},see_through:true,billboard:"center",Tags:["npc","dungeon_master","indungeon"]}
#summon mannequin 0 100 3 {profile:Dragonias01,immovable:true,Invulnerable:1b,NoGravity:1b,OnGround:1b,Silent:1b,Rotation:[180f,0f],Tags:["npc","dungeon_master","indungeon"]}
#summon interaction 0 100 3 {width:1.0f,height:2.0f,Tags:["npc","dungeon_master","indungeon"]}
summon minecraft:interaction -1 101 -28 {width:1.0f,height:1.0f,Tags:["npc","dungeon_master","indungeon"]}
