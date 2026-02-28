#Check
execute as @a[scores={zombie_killed=1..,combat_lvl=0..999}] run function sa:skill/combat/lvl/xp
execute as @a[scores={enderman_killed=1..,combat_lvl=0..999}] run function sa:skill/combat/lvl/xp
execute as @a[scores={creeper_killed=1..,combat_lvl=0..999}] run function sa:skill/combat/lvl/xp
execute as @a[scores={skeleton_killed=1..,combat_lvl=0..999}] run function sa:skill/combat/lvl/xp
execute as @a[scores={witch_killed=1..,combat_lvl=0..999}] run function sa:skill/combat/lvl/xp
execute as @a[scores={spider_killed=1..,combat_lvl=0..999}] run function sa:skill/combat/lvl/xp

execute as @a[scores={zombie_killed=1..}] run scoreboard players remove @s zombie_killed 1
execute as @a[scores={enderman_killed=1..}] run scoreboard players remove @s enderman_killed 1
execute as @a[scores={creeper_killed=1..}] run scoreboard players remove @s creeper_killed 1
execute as @a[scores={witch_killed=1..}] run scoreboard players remove @s witch_killed 1
execute as @a[scores={skeleton_killed=1..}] run scoreboard players remove @s skeleton_killed 1
execute as @a[scores={spider_killed=1..}] run scoreboard players remove @s spider_killed 1