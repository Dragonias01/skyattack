kill @e[type=mannequin,tag=loot_master]
kill @e[type=interaction,tag=loot_master]
kill @e[type=text_display,tag=loot_master]


summon minecraft:text_display 10 101 -5 {text:{"text":"[lotterie]","color":"yellow"},see_through:true,billboard:"center",Tags:["npc","loot_master"]}
summon mannequin 10 99 -5 {profile:Y4M1LM8,immovable:true,Invulnerable:1b,NoGravity:1b,OnGround:1b,Silent:1b,Rotation:[0f,0f],Tags:["npc","loot_master"]}
summon interaction 10 99 -5 {width:1.0f,height:2.0f,Tags:["npc","loot_master"]}