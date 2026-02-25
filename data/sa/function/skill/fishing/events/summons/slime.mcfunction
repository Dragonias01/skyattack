# Guardian an Spieler-Position summonen (etwas über Spieler)
summon slime ~ ~1 ~ {NoAI:0b,Health:20f,Motion:[0.0,0.2,0.0],Tags:["fishing_creature","guardian_fished"]}

# Sound-Effekt: Aggressive Musik
playsound entity.guardian.ambient hostile @a[distance=0..30] ~ ~ ~ 1.0 1.2

# Visueller Effekt: Particle-Explosion
particle minecraft:falling_water ~ ~ ~ 0.5 0.5 0.5 0.1 10 normal

# Optional: Title für Spieler
title @p[distance=0..30] actionbar [{"text":"A slime appeared!","color":"green"}]

# Nachricht an Spieler
tellraw @p[distance=0..30] [{"text":"🐋 Slime ","color":"green","bold":true},{"text":"hat dich angegriffen!","color":"blue"}]