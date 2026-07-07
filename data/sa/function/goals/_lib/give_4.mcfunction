# Gemeinsamer Abschluss fuer Item- und XP-Goals: Fortschritt in die Config
# schreiben, Chat-Bestaetigung, Text-Display aktualisieren, Completion pruefen.
# "total"/"progress" Scores kommen noch aus give_2_item/give_2_xp.

scoreboard players operation progress goal_math += @s goal_temp
$execute store result storage sa:config config.goals.$(goal).goal_progress int 1 run scoreboard players get progress goal_math

$tellraw @s [{"text":"✔ Du hast ","color":"green"},{"score":{"name":"@s","objective":"goal_temp"}},{"text":" $(success_text) abgegeben!","color":"green"}]
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1

$execute if entity @e[type=text_display,tag=$(display_tag),limit=1] run data modify entity @e[type=text_display,tag=$(display_tag),limit=1,sort=nearest] text set value [{"score":{"name":"progress","objective":"goal_math"},color:"green"},{"text":"/",color:"white"},{"score":{"name":"total","objective":"goal_math"},color:"white"}]

execute if score progress goal_math >= total goal_math run function sa:goals/_lib/complete with storage sa:goals_ctx ctx
