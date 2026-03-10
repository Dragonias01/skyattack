# ============================================================================
# ISLAND CREATE - Weist dem Spieler eine freie Insel zu
# Datei: sa:island/create
# Version: 1.21.11
# ============================================================================
# Insel-Positionen: Kreisförmig, Radius 250, gleichmäßig 45° versetzt
#
#  Insel 1:  X=   0  Z=-250  (Nord)
#  Insel 2:  X= 177  Z=-177  (Nord-Ost)
#  Insel 3:  X= 250  Z=   0  (Ost)
#  Insel 4:  X= 177  Z= 177  (Süd-Ost)
#  Insel 5:  X=   0  Z= 250  (Süd)
#  Insel 6:  X=-177  Z= 177  (Süd-West)
#  Insel 7:  X=-250  Z=   0  (West)
#  Insel 8:  X=-177  Z=-177  (Nord-West)
#
# Benachbarte Inseln sind ~191 Blöcke voneinander entfernt → gut sichtbar.
# ============================================================================

scoreboard players set @s itrigger 0
scoreboard players set server current 1

# ── Insel 8 │ X=-177  Z=-177 (Nord-West) ─────────────────────────────────
execute if score server i7 matches 1 run scoreboard players set server current 0
execute if score server current matches 0 unless score server i8 matches 1 run place template sa:hub/island -179 99 -179
execute if score server current matches 0 unless score server i8 matches 1 run tp @s -177 108 -177
execute if score server current matches 0 unless score server i8 matches 1 run spawnpoint @s -177 108 -177
execute if score server current matches 0 unless score server i8 matches 1 run scoreboard players set @s island 8
execute if score server current matches 0 unless score server i8 matches 1 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Insel 8 beigetreten!","color":"green"}]
execute if score server current matches 0 unless score server i8 matches 1 run function sa:island/starting_kit
execute if score server current matches 0 unless score server i8 matches 1 run scoreboard players set server slots 0
execute if score server current matches 0 run scoreboard players set server i8 1
execute if score server current matches 0 run scoreboard players set server current 1

# ── Insel 7 │ X=-250  Z=0   (West) ──────────────────────────────────────
execute if score server i6 matches 1 run scoreboard players set server current 0
execute if score server current matches 0 unless score server i7 matches 1 run place template sa:hub/island -252 99 -2
execute if score server current matches 0 unless score server i7 matches 1 run tp @s -250 108 0
execute if score server current matches 0 unless score server i7 matches 1 run spawnpoint @s -250 108 0
execute if score server current matches 0 unless score server i7 matches 1 run scoreboard players set @s island 7
execute if score server current matches 0 unless score server i7 matches 1 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Insel 7 beigetreten!","color":"green"}]
execute if score server current matches 0 unless score server i7 matches 1 run function sa:island/starting_kit
execute if score server current matches 0 unless score server i7 matches 1 run scoreboard players set server slots 1
execute if score server current matches 0 run scoreboard players set server i7 1
execute if score server current matches 0 run scoreboard players set server current 1

# ── Insel 6 │ X=-177  Z=177  (Süd-West) ─────────────────────────────────
execute if score server i5 matches 1 run scoreboard players set server current 0
execute if score server current matches 0 unless score server i6 matches 1 run place template sa:hub/island -179 99 175
execute if score server current matches 0 unless score server i6 matches 1 run tp @s -177 108 177
execute if score server current matches 0 unless score server i6 matches 1 run spawnpoint @s -177 108 177
execute if score server current matches 0 unless score server i6 matches 1 run scoreboard players set @s island 6
execute if score server current matches 0 unless score server i6 matches 1 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Insel 6 beigetreten!","color":"green"}]
execute if score server current matches 0 unless score server i6 matches 1 run function sa:island/starting_kit
execute if score server current matches 0 unless score server i6 matches 1 run scoreboard players set server slots 2
execute if score server current matches 0 run scoreboard players set server i6 1
execute if score server current matches 0 run scoreboard players set server current 1

# ── Insel 5 │ X=0     Z=250  (Süd) ──────────────────────────────────────
execute if score server i4 matches 1 run scoreboard players set server current 0
execute if score server current matches 0 unless score server i5 matches 1 run place template sa:hub/island -2 99 248
execute if score server current matches 0 unless score server i5 matches 1 run tp @s 0 108 250
execute if score server current matches 0 unless score server i5 matches 1 run spawnpoint @s 0 108 250
execute if score server current matches 0 unless score server i5 matches 1 run scoreboard players set @s island 5
execute if score server current matches 0 unless score server i5 matches 1 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Insel 5 beigetreten!","color":"green"}]
execute if score server current matches 0 unless score server i5 matches 1 run function sa:island/starting_kit
execute if score server current matches 0 unless score server i5 matches 1 run scoreboard players set server slots 3
execute if score server current matches 0 run scoreboard players set server i5 1
execute if score server current matches 0 run scoreboard players set server current 1

# ── Insel 4 │ X=177   Z=177  (Süd-Ost) ──────────────────────────────────
execute if score server i3 matches 1 run scoreboard players set server current 0
execute if score server current matches 0 unless score server i4 matches 1 run place template sa:hub/island 175 99 175
execute if score server current matches 0 unless score server i4 matches 1 run tp @s 177 108 177
execute if score server current matches 0 unless score server i4 matches 1 run spawnpoint @s 177 108 177
execute if score server current matches 0 unless score server i4 matches 1 run scoreboard players set @s island 4
execute if score server current matches 0 unless score server i4 matches 1 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Insel 4 beigetreten!","color":"green"}]
execute if score server current matches 0 unless score server i4 matches 1 run function sa:island/starting_kit
execute if score server current matches 0 unless score server i4 matches 1 run scoreboard players set server slots 4
execute if score server current matches 0 run scoreboard players set server i4 1
execute if score server current matches 0 run scoreboard players set server current 1

# ── Insel 3 │ X=250   Z=0    (Ost) ──────────────────────────────────────
execute if score server i2 matches 1 run scoreboard players set server current 0
execute if score server current matches 0 unless score server i3 matches 1 run place template sa:hub/island 248 99 -2
execute if score server current matches 0 unless score server i3 matches 1 run tp @s 250 108 0
execute if score server current matches 0 unless score server i3 matches 1 run spawnpoint @s 250 108 0
execute if score server current matches 0 unless score server i3 matches 1 run scoreboard players set @s island 3
execute if score server current matches 0 unless score server i3 matches 1 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Insel 3 beigetreten!","color":"green"}]
execute if score server current matches 0 unless score server i3 matches 1 run function sa:island/starting_kit
execute if score server current matches 0 unless score server i3 matches 1 run scoreboard players set server slots 5
execute if score server current matches 0 run scoreboard players set server i3 1
execute if score server current matches 0 run scoreboard players set server current 1

# ── Insel 2 │ X=177   Z=-177 (Nord-Ost) ─────────────────────────────────
execute if score server i1 matches 1 run scoreboard players set server current 0
execute if score server current matches 0 unless score server i2 matches 1 run place template sa:hub/island 175 99 -179
execute if score server current matches 0 unless score server i2 matches 1 run tp @s 177 108 -177
execute if score server current matches 0 unless score server i2 matches 1 run spawnpoint @s 177 108 -177
execute if score server current matches 0 unless score server i2 matches 1 run scoreboard players set @s island 2
execute if score server current matches 0 unless score server i2 matches 1 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Insel 2 beigetreten!","color":"green"}]
execute if score server current matches 0 unless score server i2 matches 1 run function sa:island/starting_kit
execute if score server current matches 0 unless score server i2 matches 1 run scoreboard players set server slots 6
execute if score server current matches 0 run scoreboard players set server i2 1
execute if score server current matches 0 run scoreboard players set server current 1

# ── Insel 1 │ X=0     Z=-250 (Nord) ─────────────────────────────────────
execute if score server current matches 1 run scoreboard players set server current 0
execute if score server current matches 0 unless score server i1 matches 1 run place template sa:hub/island -2 99 -252
execute if score server current matches 0 unless score server i1 matches 1 run tp @s 0 108 -250
execute if score server current matches 0 unless score server i1 matches 1 run spawnpoint @s 0 108 -250
execute if score server current matches 0 unless score server i1 matches 1 run scoreboard players set @s island 1
execute if score server current matches 0 unless score server i1 matches 1 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Insel 1 beigetreten!","color":"green"}]
execute if score server current matches 0 unless score server i1 matches 1 run function sa:island/starting_kit
execute if score server current matches 0 unless score server i1 matches 1 run clear @s
execute if score server current matches 0 unless score server i1 matches 1 run scoreboard players set server slots 7
execute if score server current matches 0 run scoreboard players set server i1 1
execute if score server current matches 0 run scoreboard players set server current 1
