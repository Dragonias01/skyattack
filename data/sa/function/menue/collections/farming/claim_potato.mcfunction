# ── potato Collection ─────────────────────────────────────────────────────────────
    scoreboard players add @s zombie_collection_progress 0
    # Level 1 = 001
        execute as @s[scores={combat_collection_collect=1}] if score @s zombie_collection_progress matches ..0 unless score @s zombie_collected matches 50.. run tellraw @s [{"text":"[Server]","color":"yellow"},{"text":" Not Enough Zombie Drops Obtained","color":"red"}]
        execute as @s[scores={combat_collection_collect=1}] if score @s zombie_collection_progress matches 1.. run tellraw @s [{"text":"[Server]","color":"yellow"},{"text":" You Already Claimed This Reward!","color":"red"}]
        execute as @s[scores={combat_collection_collect=1}] if score @s zombie_collection_progress matches ..0 if score @s zombie_collected matches 50.. run tellraw @s [{"text":"[Server]","color":"yellow"},{"text":" Claimed reward For Zombie Collection - Level 1","color":"green"}]
        execute as @s[scores={combat_collection_collect=1}] if score @s zombie_collection_progress matches ..0 if score @s zombie_collected matches 50.. run experience add @s 10 levels
        execute as @s[scores={combat_collection_collect=1}] if score @s zombie_collection_progress matches ..0 if score @s zombie_collected matches 50.. run scoreboard players set @s zombie_collection_progress 1
        execute as @s[scores={combat_collection_collect=1}] if score @s zombie_collection_progress matches ..0 if score @s zombie_collected matches 50.. run return 0


# Level 2 = 002
    execute as @s[scores={combat_collection_collect=2}] if score @s zombie_collection_progress matches 1 unless score @s zombie_collected matches 100.. run tellraw @s [{"text":"[Server]","color":"yellow"},{"text":" Not Enough Zombie Drops Obtained","color":"red"}]
    execute as @s[scores={combat_collection_collect=2}] if score @s zombie_collection_progress matches 2.. run tellraw @s [{"text":"[Server]","color":"yellow"},{"text":" You Already Claimed This Reward!","color":"red"}]
    execute as @s[scores={combat_collection_collect=2}] if score @s zombie_collection_progress matches 1 if score @s zombie_collected matches 100.. run tellraw @s [{"text":"[Server]","color":"yellow"},{"text":" Claimed reward For Zombie Collection - Level 2","color":"green"}]
    execute as @s[scores={combat_collection_collect=2}] if score @s zombie_collection_progress matches 1 if score @s zombie_collected matches 100.. run experience add @s 20 levels
    execute as @s[scores={combat_collection_collect=2}] if score @s zombie_collection_progress matches 1 if score @s zombie_collected matches 100.. run function sa:item/libary/foraging_fruit
    execute as @s[scores={combat_collection_collect=2}] if score @s zombie_collection_progress matches 1 if score @s zombie_collected matches 100.. run scoreboard players set @s zombie_collection_progress 2
    execute as @s[scores={combat_collection_collect=2}] if score @s zombie_collection_progress matches 1 if score @s zombie_collected matches 100.. run return 0

# Level 3 = 003
    execute as @s[scores={combat_collection_collect=3}] if score @s zombie_collection_progress matches 2 unless score @s zombie_collected matches 200.. run tellraw @s [{"text":"[Server]","color":"yellow"},{"text":" Not Enough Zombie Drops Obtained","color":"red"}]
    execute as @s[scores={combat_collection_collect=3}] if score @s zombie_collection_progress matches 3.. run tellraw @s [{"text":"[Server]","color":"yellow"},{"text":" You Already Claimed This Reward!","color":"red"}]
    execute as @s[scores={combat_collection_collect=3}] if score @s zombie_collection_progress matches 2 if score @s zombie_collected matches 200.. run tellraw @s [{"text":"[Server]","color":"yellow"},{"text":" Claimed reward For Zombie Collection - Level 3","color":"green"}]
    execute as @s[scores={combat_collection_collect=3}] if score @s zombie_collection_progress matches 2 if score @s zombie_collected matches 200.. run experience add @s 50 levels
    execute as @s[scores={combat_collection_collect=3}] if score @s zombie_collection_progress matches 2 if score @s zombie_collected matches 200.. run scoreboard players set @s zombie_collection_progress 3
    execute as @s[scores={combat_collection_collect=3}] if score @s zombie_collection_progress matches 2 if score @s zombie_collected matches 200.. run return 0

# Level 4 = 004
    execute as @s[scores={combat_collection_collect=4}] if score @s zombie_collection_progress matches 3 unless score @s zombie_collected matches 500.. run tellraw @s [{"text":"[Server]","color":"yellow"},{"text":" Not Enough Zombie Drops Obtained","color":"red"}]
    execute as @s[scores={combat_collection_collect=4}] if score @s zombie_collection_progress matches 4.. run tellraw @s [{"text":"[Server]","color":"yellow"},{"text":" You Already Claimed This Reward!","color":"red"}]
    execute as @s[scores={combat_collection_collect=4}] if score @s zombie_collection_progress matches 3 if score @s zombie_collected matches 500.. run tellraw @s [{"text":"[Server]","color":"yellow"},{"text":" Claimed reward For Zombie Collection - Level 4","color":"green"}]
    execute as @s[scores={combat_collection_collect=4}] if score @s zombie_collection_progress matches 3 if score @s zombie_collected matches 500.. run experience add @s 100 levels
    execute as @s[scores={combat_collection_collect=4}] if score @s zombie_collection_progress matches 3 if score @s zombie_collected matches 500.. run function sa:item/libary/compressed/compressed_logs {"count":5}
    execute as @s[scores={combat_collection_collect=4}] if score @s zombie_collection_progress matches 3 if score @s zombie_collected matches 500.. run scoreboard players set @s zombie_collection_progress 4
    execute as @s[scores={combat_collection_collect=4}] if score @s zombie_collection_progress matches 3 if score @s zombie_collected matches 500.. run return 0

# Level 5 = 005
    execute as @s[scores={combat_collection_collect=5}] if score @s zombie_collection_progress matches 4 unless score @s zombie_collected matches 1000.. run tellraw @s [{"text":"[Server]","color":"yellow"},{"text":" Not Enough Zombie Drops Obtained","color":"red"}]
    execute as @s[scores={combat_collection_collect=5}] if score @s zombie_collection_progress matches 5.. run tellraw @s [{"text":"[Server]","color":"yellow"},{"text":" You Already Claimed This Reward!","color":"red"}]
    execute as @s[scores={combat_collection_collect=5}] if score @s zombie_collection_progress matches 4 if score @s zombie_collected matches 1000.. run tellraw @s [{"text":"[Server]","color":"yellow"},{"text":" Claimed reward For Zombie Collection - Level 5","color":"green"}]
    execute as @s[scores={combat_collection_collect=5}] if score @s zombie_collection_progress matches 4 if score @s zombie_collected matches 1000.. run experience add @s 200 levels
    execute as @s[scores={combat_collection_collect=5}] if score @s zombie_collection_progress matches 4 if score @s zombie_collected matches 1000.. run recipe give @s armor/vaccination_set/vaccination_helmet
    execute as @s[scores={combat_collection_collect=5}] if score @s zombie_collection_progress matches 4 if score @s zombie_collected matches 1000.. run recipe give @s armor/vaccination_set/vaccination_chestplate
    execute as @s[scores={combat_collection_collect=5}] if score @s zombie_collection_progress matches 4 if score @s zombie_collected matches 1000.. run recipe give @s armor/vaccination_set/vaccination_leggings
    execute as @s[scores={combat_collection_collect=5}] if score @s zombie_collection_progress matches 4 if score @s zombie_collected matches 1000.. run recipe give @s armor/vaccination_set/vaccination_boots
    execute as @s[scores={combat_collection_collect=5}] if score @s zombie_collection_progress matches 4 if score @s zombie_collected matches 1000.. run scoreboard players set @s zombie_collection_progress 5
    execute as @s[scores={combat_collection_collect=5}] if score @s zombie_collection_progress matches 4 if score @s zombie_collected matches 1000.. run return 0

# Level 6 = 006
    execute as @s[scores={combat_collection_collect=6}] if score @s zombie_collection_progress matches 5 unless score @s zombie_collected matches 2000.. run tellraw @s [{"text":"[Server]","color":"yellow"},{"text":" Not Enough Zombie Drops Obtained","color":"red"}]
    execute as @s[scores={combat_collection_collect=6}] if score @s zombie_collection_progress matches 6.. run tellraw @s [{"text":"[Server]","color":"yellow"},{"text":" You Already Claimed This Reward!","color":"red"}]
    execute as @s[scores={combat_collection_collect=6}] if score @s zombie_collection_progress matches 5 if score @s zombie_collected matches 2000.. run tellraw @s [{"text":"[Server]","color":"yellow"},{"text":" Claimed reward For Zombie Collection - Level 6","color":"green"}]
    execute as @s[scores={combat_collection_collect=6}] if score @s zombie_collection_progress matches 5 if score @s zombie_collected matches 2000.. run experience add @s 500 levels
    execute as @s[scores={combat_collection_collect=6}] if score @s zombie_collection_progress matches 5 if score @s zombie_collected matches 2000.. run scoreboard players set @s zombie_collection_progress 6
    execute as @s[scores={combat_collection_collect=6}] if score @s zombie_collection_progress matches 5 if score @s zombie_collected matches 2000.. run return 0

# Level 7 = 007
    execute as @s[scores={combat_collection_collect=7}] if score @s zombie_collection_progress matches 6 unless score @s zombie_collected matches 5000.. run tellraw @s [{"text":"[Server]","color":"yellow"},{"text":" Not Enough Zombie Drops Obtained","color":"red"}]
    execute as @s[scores={combat_collection_collect=7}] if score @s zombie_collection_progress matches 7.. run tellraw @s [{"text":"[Server]","color":"yellow"},{"text":" You Already Claimed This Reward!","color":"red"}]
    execute as @s[scores={combat_collection_collect=7}] if score @s zombie_collection_progress matches 6 if score @s zombie_collected matches 5000.. run tellraw @s [{"text":"[Server]","color":"yellow"},{"text":" Claimed reward For Zombie Collection - Level 7","color":"green"}]
    execute as @s[scores={combat_collection_collect=7}] if score @s zombie_collection_progress matches 6 if score @s zombie_collected matches 5000.. run experience add @s 1000 levels
    execute as @s[scores={combat_collection_collect=7}] if score @s zombie_collection_progress matches 6 if score @s zombie_collected matches 5000.. run scoreboard players set @s zombie_collection_progress 7
    execute as @s[scores={combat_collection_collect=7}] if score @s zombie_collection_progress matches 6 if score @s zombie_collected matches 5000.. run return 0

# Level 8 = 008
    execute as @s[scores={combat_collection_collect=8}] if score @s zombie_collection_progress matches 7 unless score @s zombie_collected matches 10000.. run tellraw @s [{"text":"[Server]","color":"yellow"},{"text":" Not Enough Zombie Drops Obtained","color":"red"}]
    execute as @s[scores={combat_collection_collect=8}] if score @s zombie_collection_progress matches 8.. run tellraw @s [{"text":"[Server]","color":"yellow"},{"text":" You Already Claimed This Reward!","color":"red"}]
    execute as @s[scores={combat_collection_collect=8}] if score @s zombie_collection_progress matches 7 if score @s zombie_collected matches 10000.. run tellraw @s [{"text":"[Server]","color":"yellow"},{"text":" Claimed reward For Zombie Collection - Level 8","color":"green"}]
    execute as @s[scores={combat_collection_collect=8}] if score @s zombie_collection_progress matches 7 if score @s zombie_collected matches 10000.. run experience add @s 2000 levels
    execute as @s[scores={combat_collection_collect=8}] if score @s zombie_collection_progress matches 7 if score @s zombie_collected matches 10000.. run scoreboard players set @s zombie_collection_progress 8
    execute as @s[scores={combat_collection_collect=8}] if score @s zombie_collection_progress matches 7 if score @s zombie_collected matches 10000.. run return 0

# Level 9 = 009
    execute as @s[scores={combat_collection_collect=9}] if score @s zombie_collection_progress matches 8 unless score @s zombie_collected matches 15000.. run tellraw @s [{"text":"[Server]","color":"yellow"},{"text":" Not Enough Zombie Drops Obtained","color":"red"}]
    execute as @s[scores={combat_collection_collect=9}] if score @s zombie_collection_progress matches 9.. run tellraw @s [{"text":"[Server]","color":"yellow"},{"text":" You Already Claimed This Reward!","color":"red"}]
    execute as @s[scores={combat_collection_collect=9}] if score @s zombie_collection_progress matches 8 if score @s zombie_collected matches 15000.. run tellraw @s [{"text":"[Server]","color":"yellow"},{"text":" Claimed reward For Zombie Collection - Level 9","color":"green"}]
    execute as @s[scores={combat_collection_collect=9}] if score @s zombie_collection_progress matches 8 if score @s zombie_collected matches 15000.. run experience add @s 5000 levels
    execute as @s[scores={combat_collection_collect=9}] if score @s zombie_collection_progress matches 8 if score @s zombie_collected matches 15000.. run scoreboard players set @s zombie_collection_progress 9
    execute as @s[scores={combat_collection_collect=9}] if score @s zombie_collection_progress matches 8 if score @s zombie_collected matches 15000.. run return 0

# Level 10 = 010
    execute as @s[scores={combat_collection_collect=10}] if score @s zombie_collection_progress matches 9 unless score @s zombie_collected matches 20000.. run tellraw @s [{"text":"[Server]","color":"yellow"},{"text":" Not Enough Zombie Drops Obtained","color":"red"}]
    execute as @s[scores={combat_collection_collect=10}] if score @s zombie_collection_progress matches 10.. run tellraw @s [{"text":"[Server]","color":"yellow"},{"text":" You Already Claimed This Reward!","color":"red"}]
    execute as @s[scores={combat_collection_collect=10}] if score @s zombie_collection_progress matches 9 if score @s zombie_collected matches 20000.. run tellraw @s [{"text":"[Server]","color":"yellow"},{"text":" Claimed reward For Zombie Collection - Level 10","color":"green"}]
    execute as @s[scores={combat_collection_collect=10}] if score @s zombie_collection_progress matches 9 if score @s zombie_collected matches 20000.. run experience add @s 10000 levels
    execute as @s[scores={combat_collection_collect=10}] if score @s zombie_collection_progress matches 9 if score @s zombie_collected matches 20000.. run scoreboard players set @s zombie_collection_progress 10
    execute as @s[scores={combat_collection_collect=10}] if score @s zombie_collection_progress matches 9 if score @s zombie_collected matches 20000.. run return 0
    