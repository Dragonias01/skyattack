# Dispatcher: liest currency-Flag (uses_xp) aus dem Kontext und verzweigt zur
# passenden Variante. Der Rest der Kette (Kosten-/Restmengen-Logik, Overflow-
# Schutz, Fortschritt schreiben, Display, Completion) ist fuer beide identisch
# und lebt in give_4.mcfunction.

execute store result score uses_xp goal_math run data get storage sa:goals_ctx ctx.uses_xp

execute unless score uses_xp goal_math matches 1 run function sa:goals/_lib/give_2_item with storage sa:goals_ctx ctx
execute if score uses_xp goal_math matches 1 run function sa:goals/_lib/give_2_xp with storage sa:goals_ctx ctx
