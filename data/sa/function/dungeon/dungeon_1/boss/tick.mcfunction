# ============================================================================
# DUNGEON 1 - BOSS TICK
# Prüft ob Boss noch lebt
# ============================================================================

execute unless entity @e[tag=dg1_boss,limit=1] if score server dg1_boss_state matches 1 run function sa:dungeon/dungeon_1/boss/kill_event
