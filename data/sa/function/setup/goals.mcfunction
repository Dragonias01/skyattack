kill @e[type=interaction,tag=goal_ship]
kill @e[type=text_display,tag=display_goal_ship]
kill @e[type=block_display,tag=block_goal_ship]


# 1. Scoreboards erstellen
scoreboard objectives add goal_ship dummy "Schiff Abgabe"
scoreboard objectives add goal1_cost dummy "Schiff Ziel"
scoreboard objectives add temp_goal_ship_check dummy
scoreboard objectives add goal_ship_remaining dummy

# 2. Werte initialisieren
scoreboard players set server goal_ship 0
scoreboard players set server goal1_cost 10

# 3. Entities spawnen
setblock -6 102 10 minecraft:reinforced_deepslate
summon minecraft:interaction -6 103 10 {Tags:["interaction","goal_ship"]}
#summon minecraft:block_display -6.0 103.0 10.0 {block_state: {Name: "minecraft:zombie_head", Properties: {axis: "y"}}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.8f, 0.8f, 0.8f], translation: [0.3f, 0.3f, 0.3f]},Tags:["block_goal_ship"]}
summon minecraft:block_display -4.8125 103.0 9.8125 {block_state: {Name: "minecraft:zombie_head", Properties: {powered: "false", rotation: "0"}}, transformation: {left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.8f, 0.79999995f, 0.8f], translation: [-0.3f, 0.3f, 0.3f]}}
summon minecraft:text_display -6 104 10 {text:{"text":"0/10"},Tags:["display_goal_ship"],billboard:"center"}

# 4. Storage Text setzen
data modify storage spass:goal_ship_text text set value [{"score":{"objective":"goal_ship","name":"server"},"color":"green"},{"text":"/","color":"white"},{"score":{"objective":"goal1_cost","name":"server"},"color":"white"}]
scoreboard players set server goal1 0
scoreboard players set server goals_initialized 1