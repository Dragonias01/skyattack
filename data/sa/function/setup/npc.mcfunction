#clear old
kill @e[type=mannequin]
kill @e[type=interaction]
kill @e[type=text_display]

#npc
summon minecraft:text_display -24 102 -2 {text:{"text":"[Tutorial]","color":"yellow"},see_through:true,billboard:"center"}
summon mannequin -24 100 -2 {profile:Dragonias01,Invulnerable:1b,NoGravity:1b,OnGround:1b,Rotation:[0f,0f],Tags:["npc","tutorial"]}
summon interaction -24 100 -2 {width: 1.0f,height: 2.0f,Tags:["npc","Teleporter"]}
