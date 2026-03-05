#clear old
kill @e[type=mannequin,tag=pilot]
kill @e[type=interaction,tag=pilot]
kill @e[type=text_display,tag=pilot]

summon minecraft:text_display -34 110 -15 {text:{"text":"[Pilot]","color":"yellow"},see_through:true,billboard:"center",Tags:["npc","pilot"]}
summon mannequin -34 108 -15 {profile:Dragonias01,immovable:true,Invulnerable:1b,NoGravity:1b,OnGround:1b,Silent:1b,Rotation:[45f,0f],Tags:["npc","pilot"]}
summon interaction -34 108 -15 {width: 1.0f,height: 2.0f,Tags:["npc","pilot"]}