# ============================================================================
# GOAL: Skill Rooms - Check
# Datei: sa:goals/skillrooms_goal/check
# Version: 1.21.11
# ============================================================================
# Wird z.B. von einer interaction-Entity mit Tag "goal_skillroom" per @s aufgerufen.
    data modify storage sa:goals_ctx call set value {"goal":"skillroom_goal"}
    function sa:goals/_lib/give with storage sa:goals_ctx call
