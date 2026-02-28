#Check
execute as @a[scores={zombie_killed=1..,combat_lvl=0..999}] run function sa:skill/combat/lvl/xp
execute as @a[scores={enderman_killed=1..,combat_lvl=0..999}] run function sa:skill/combat/lvl/xp
execute as @a[scores={creeper_killed=1..,combat_lvl=0..999}] run function sa:skill/combat/lvl/xp
execute as @a[scores={skeleton_killed=1..,combat_lvl=0..999}] run function sa:skill/combat/lvl/xp
execute as @a[scores={witch_killed=1..,combat_lvl=0..999}] run function sa:skill/combat/lvl/xp
execute as @a[scores={spider_killed=1..,combat_lvl=0..999}] run function sa:skill/combat/lvl/xp

execute as @a[scores={zombie_killed=1..}] run scoreboard players set @s zombie_killed 0
execute as @a[scores={enderman_killed=1..}] run scoreboard players set @s enderman_killed 0
execute as @a[scores={creeper_killed=1..}] run scoreboard players set @s creeper_killed 0
execute as @a[scores={witch_killed=1..}] run scoreboard players set @s witch_killed 0
execute as @a[scores={skeleton_killed=1..}] run scoreboard players set @s skeleton_killed 0
execute as @a[scores={spider_killed=1..}] run scoreboard players set @s spider_killed 0