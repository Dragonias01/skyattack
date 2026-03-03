#clear old
kill @e[type=mannequin,tag=tutorial]
kill @e[type=interaction,tag=tutorial]
kill @e[type=text_display,tag=tutorial]

#npc
summon minecraft:text_display 4 102 0 {text:{"text":"[Tutorial]","color":"yellow"},see_through:true,billboard:"center",Tags:["npc","tutorial"]}
summon mannequin 4 100 0 {profile:Dragonias01,immovable:true,Invulnerable:1b,NoGravity:1b,OnGround:1b,Silent:1b,Rotation:[45f,0f],Tags:["npc","tutorial"]}
summon interaction 4 100 0 {width: 1.0f,height: 2.0f,Tags:["interaction","tutorial"]}
