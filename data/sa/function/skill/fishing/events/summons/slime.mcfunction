# Guardian an Spieler-Position summonen (etwas über Spieler)
    summon slime ~ ~1 ~ {Size:2,Health:20,Motion:[0d,0.2d,0d],Tags:["fishing_creature","slime_fished"],attributes:[{id:max_health,base:20f}]}
    # Sound-Effekt: Aggressive Musik
        playsound entity.guardian.ambient hostile @a[distance=0..30] ~ ~ ~ 1.0 1.2

    # Visueller Effekt: Particle-Explosion
        particle minecraft:falling_water ~ ~ ~ 0.5 0.5 0.5 0.1 10 normal

    # Optional: Title für Spieler
        title @p[distance=0..30] actionbar [{"text":"A slime appeared!","color":"green"}]

    # Nachricht an Spieler
        tellraw @p[distance=0..30] [{"text":"🐋 Slime ","color":"green","bold":true},{"text":"has attacked you!","color":"blue"}]
