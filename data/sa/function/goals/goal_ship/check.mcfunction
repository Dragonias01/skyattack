# Wird z.B. von einer interaction-Entity mit Tag "goal_ship" per @s aufgerufen.
    data modify storage sa:goals_ctx call set value {"goal":"ship_goal"}
    function sa:goals/_lib/give with storage sa:goals_ctx call
