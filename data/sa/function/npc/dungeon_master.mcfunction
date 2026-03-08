# ============================================================================
# NPC: DungeonMaster
# Datei: sa:npc/dungeon_master
# Version: 1.21.11
# ============================================================================
# Position: 13 99 5  (Hub-Dimension)
# Wird aufgerufen durch: sa:goals/skillrooms_goal/reward
# Dialog: sa:dungeon_master  (WIP – Text wird später angepasst)
# ============================================================================

# ── Alte Entities entfernen ───────────────────────────────────────────────
kill @e[type=mannequin,tag=dungeon_master]
kill @e[type=interaction,tag=dungeon_master]
kill @e[type=text_display,tag=dungeon_master]

# ── NPC spawnen ───────────────────────────────────────────────────────────
# Name-Label über dem NPC
summon minecraft:text_display 13 101 5 {text:{"text":"[Dungeon Master]","color":"dark_red"},see_through:true,billboard:"center",Tags:["npc","dungeon_master"]}

# Mannequin (Skin wird später angepasst – aktuell Dragonias01 als Platzhalter)
# ACHTUNG: Rotation anpassen damit der NPC in die richtige Richtung schaut
summon mannequin 13 99 5 {profile:Dragonias01,immovable:true,Invulnerable:1b,NoGravity:1b,OnGround:1b,Silent:1b,Rotation:[180f,0f],Tags:["npc","dungeon_master"]}

# Interaction-Box (1x2 Blöcke, über dem NPC)
summon interaction 13 99 5 {width:1.0f,height:2.0f,Tags:["npc","dungeon_master"]}
