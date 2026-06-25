# ============================================================================
# Datei: sa:item/passive_check
# Version: 1.21.11
# ============================================================================
# Passive Item Check
# ============================================================================

execute as @a if predicate sa:items/gravstone run function sa:item/function/gravstone


# Crypt Skeleton Armor Check (+2 Attack Damage)
    execute as @a if predicate sa:items/crypt_skeleton_armor run scoreboard players set @s crypt_skeleton_fullsetbonus 2
    execute as @a unless predicate sa:items/crypt_skeleton_armor run scoreboard players set @s crypt_skeleton_fullsetbonus 0

# Crypt Weaver Armor Check (step height +1)
    execute as @a if predicate sa:items/crypt_weaver_armor run scoreboard players set @s crypt_weaver_fullsetbonus 1
    execute as @a unless predicate sa:items/crypt_weaver_armor run scoreboard players set @s crypt_weaver_fullsetbonus 0

# crypt_ooze_armor Check (-0.5, gravitation)
    execute as @a if predicate sa:items/crypt_ooze_armor run scoreboard players set @s crypt_ooze_fullsetbonus -1
    execute as @a unless predicate sa:items/crypt_ooze_armor run scoreboard players set @s crypt_ooze_fullsetbonus 0

# Stonecarver Armor Check (+1 safe fall distance)
    execute as @a if predicate sa:items/stonecarver_armor run scoreboard players set @s stonecarver_fullsetbonus 1
    execute as @a unless predicate sa:items/stonecarver_armor run scoreboard players set @s stonecarver_fullsetbonus 0
