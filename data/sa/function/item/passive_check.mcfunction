# ============================================================================
# Datei: sa:item/passive_check
# Version: 1.21.11
# ============================================================================
# Passive Item Check
# ============================================================================

execute as @a if predicate sa:items/gravstone run function sa:item/function/gravstone
execute as @a if predicate sa:items/crypt_skeleton_armor run scoreboard players set @s crypt_skeleton_fullsetbonus 2
execute as @a unless predicate sa:items/crypt_skeleton_armor run scoreboard players set @s crypt_skeleton_fullsetbonus 0
