# Level 1
    $execute as @s if score @s $(objective) matches 1.. run data modify storage sa:collection c.status_1 set value "Claimed"
    $execute as @s if score @s $(objective) matches 1.. run data modify storage sa:collection c.color_1 set value "green"
    $execute as @s if score @s $(objective) matches 0 if score @s $(collected) matches $(t1).. run data modify storage sa:collection c.status_1 set value "- Click to Claim - "
    $execute as @s if score @s $(objective) matches 0 if score @s $(collected) matches $(t1).. run data modify storage sa:collection c.color_1 set value "gold"
    $execute as @s if score @s $(objective) matches 0 unless score @s $(collected) matches $(t1).. run data modify storage sa:collection c.status_1 set value "In Progress"
    $execute as @s if score @s $(objective) matches 0 unless score @s $(collected) matches $(t1).. run data modify storage sa:collection c.color_1 set value "yellow"

# Level 2
    $execute as @s if score @s $(objective) matches 2.. run data modify storage sa:collection c.status_2 set value "Claimed"
    $execute as @s if score @s $(objective) matches 2.. run data modify storage sa:collection c.color_2 set value "green"
    $execute as @s if score @s $(objective) matches 1 if score @s $(collected) matches $(t2).. run data modify storage sa:collection c.status_2 set value "- Click to Claim - "
    $execute as @s if score @s $(objective) matches 1 if score @s $(collected) matches $(t2).. run data modify storage sa:collection c.color_2 set value "gold"
    $execute as @s if score @s $(objective) matches ..0 run data modify storage sa:collection c.status_2 set value "In Progress"
    $execute as @s if score @s $(objective) matches ..0 run data modify storage sa:collection c.color_2 set value "red"
    $execute as @s if score @s $(objective) matches 1 unless score @s $(collected) matches $(t2).. run data modify storage sa:collection c.status_2 set value "In Progress"
    $execute as @s if score @s $(objective) matches 1 unless score @s $(collected) matches $(t2).. run data modify storage sa:collection c.color_2 set value "yellow"

# Level 3
    $execute as @s if score @s $(objective) matches 3.. run data modify storage sa:collection c.status_3 set value "Claimed"
    $execute as @s if score @s $(objective) matches 3.. run data modify storage sa:collection c.color_3 set value "green"
    $execute as @s if score @s $(objective) matches 2 if score @s $(collected) matches $(t3).. run data modify storage sa:collection c.status_3 set value "- Click to Claim - "
    $execute as @s if score @s $(objective) matches 2 if score @s $(collected) matches $(t3).. run data modify storage sa:collection c.color_3 set value "gold"
    $execute as @s if score @s $(objective) matches ..1 run data modify storage sa:collection c.status_3 set value "In Progress"
    $execute as @s if score @s $(objective) matches ..1 run data modify storage sa:collection c.color_3 set value "red"
    $execute as @s if score @s $(objective) matches 2 unless score @s $(collected) matches $(t3).. run data modify storage sa:collection c.status_3 set value "In Progress"
    $execute as @s if score @s $(objective) matches 2 unless score @s $(collected) matches $(t3).. run data modify storage sa:collection c.color_3 set value "yellow"

# Level 4
    $execute as @s if score @s $(objective) matches 4.. run data modify storage sa:collection c.status_4 set value "Claimed"
    $execute as @s if score @s $(objective) matches 4.. run data modify storage sa:collection c.color_4 set value "green"
    $execute as @s if score @s $(objective) matches 3 if score @s $(collected) matches $(t4).. run data modify storage sa:collection c.status_4 set value "- Click to Claim - "
    $execute as @s if score @s $(objective) matches 3 if score @s $(collected) matches $(t4).. run data modify storage sa:collection c.color_4 set value "gold"
    $execute as @s if score @s $(objective) matches ..2 run data modify storage sa:collection c.status_4 set value "In Progress"
    $execute as @s if score @s $(objective) matches ..2 run data modify storage sa:collection c.color_4 set value "red"
    $execute as @s if score @s $(objective) matches 3 unless score @s $(collected) matches $(t4).. run data modify storage sa:collection c.status_4 set value "In Progress"
    $execute as @s if score @s $(objective) matches 3 unless score @s $(collected) matches $(t4).. run data modify storage sa:collection c.color_4 set value "yellow"

# Level 5
    $execute as @s if score @s $(objective) matches 5.. run data modify storage sa:collection c.status_5 set value "Claimed"
    $execute as @s if score @s $(objective) matches 5.. run data modify storage sa:collection c.color_5 set value "green"
    $execute as @s if score @s $(objective) matches 4 if score @s $(collected) matches $(t5).. run data modify storage sa:collection c.status_5 set value "- Click to Claim - "
    $execute as @s if score @s $(objective) matches 4 if score @s $(collected) matches $(t5).. run data modify storage sa:collection c.color_5 set value "gold"
    $execute as @s if score @s $(objective) matches ..3 run data modify storage sa:collection c.status_5 set value "In Progress"
    $execute as @s if score @s $(objective) matches ..3 run data modify storage sa:collection c.color_5 set value "red"
    $execute as @s if score @s $(objective) matches 4 unless score @s $(collected) matches $(t5).. run data modify storage sa:collection c.status_5 set value "In Progress"
    $execute as @s if score @s $(objective) matches 4 unless score @s $(collected) matches $(t5).. run data modify storage sa:collection c.color_5 set value "yellow"

# Level 6
    $execute as @s if score @s $(objective) matches 6.. run data modify storage sa:collection c.status_6 set value "Claimed"
    $execute as @s if score @s $(objective) matches 6.. run data modify storage sa:collection c.color_6 set value "green"
    $execute as @s if score @s $(objective) matches 5 if score @s $(collected) matches $(t6).. run data modify storage sa:collection c.status_6 set value "- Click to Claim - "
    $execute as @s if score @s $(objective) matches 5 if score @s $(collected) matches $(t6).. run data modify storage sa:collection c.color_6 set value "gold"
    $execute as @s if score @s $(objective) matches ..4 run data modify storage sa:collection c.status_6 set value "In Progress"
    $execute as @s if score @s $(objective) matches ..4 run data modify storage sa:collection c.color_6 set value "red"
    $execute as @s if score @s $(objective) matches 5 unless score @s $(collected) matches $(t6).. run data modify storage sa:collection c.status_6 set value "In Progress"
    $execute as @s if score @s $(objective) matches 5 unless score @s $(collected) matches $(t6).. run data modify storage sa:collection c.color_6 set value "yellow"

# Level 7
    $execute as @s if score @s $(objective) matches 7.. run data modify storage sa:collection c.status_7 set value "Claimed"
    $execute as @s if score @s $(objective) matches 7.. run data modify storage sa:collection c.color_7 set value "green"
    $execute as @s if score @s $(objective) matches 6 if score @s $(collected) matches $(t7).. run data modify storage sa:collection c.status_7 set value "- Click to Claim - "
    $execute as @s if score @s $(objective) matches 6 if score @s $(collected) matches $(t7).. run data modify storage sa:collection c.color_7 set value "gold"
    $execute as @s if score @s $(objective) matches ..5 run data modify storage sa:collection c.status_7 set value "In Progress"
    $execute as @s if score @s $(objective) matches ..5 run data modify storage sa:collection c.color_7 set value "red"
    $execute as @s if score @s $(objective) matches 6 unless score @s $(collected) matches $(t7).. run data modify storage sa:collection c.status_7 set value "In Progress"
    $execute as @s if score @s $(objective) matches 6 unless score @s $(collected) matches $(t7).. run data modify storage sa:collection c.color_7 set value "yellow"

# Level 8
    $execute as @s if score @s $(objective) matches 8.. run data modify storage sa:collection c.status_8 set value "Claimed"
    $execute as @s if score @s $(objective) matches 8.. run data modify storage sa:collection c.color_8 set value "green"
    $execute as @s if score @s $(objective) matches 7 if score @s $(collected) matches $(t8).. run data modify storage sa:collection c.status_8 set value "- Click to Claim - "
    $execute as @s if score @s $(objective) matches 7 if score @s $(collected) matches $(t8).. run data modify storage sa:collection c.color_8 set value "gold"
    $execute as @s if score @s $(objective) matches ..6 run data modify storage sa:collection c.status_8 set value "In Progress"
    $execute as @s if score @s $(objective) matches ..6 run data modify storage sa:collection c.color_8 set value "red"
    $execute as @s if score @s $(objective) matches 7 unless score @s $(collected) matches $(t8).. run data modify storage sa:collection c.status_8 set value "In Progress"
    $execute as @s if score @s $(objective) matches 7 unless score @s $(collected) matches $(t8).. run data modify storage sa:collection c.color_8 set value "yellow"

# Level 9
    $execute as @s if score @s $(objective) matches 9.. run data modify storage sa:collection c.status_9 set value "Claimed"
    $execute as @s if score @s $(objective) matches 9.. run data modify storage sa:collection c.color_9 set value "green"
    $execute as @s if score @s $(objective) matches 8 if score @s $(collected) matches $(t9).. run data modify storage sa:collection c.status_9 set value "- Click to Claim - "
    $execute as @s if score @s $(objective) matches 8 if score @s $(collected) matches $(t9).. run data modify storage sa:collection c.color_9 set value "gold"
    $execute as @s if score @s $(objective) matches ..7 run data modify storage sa:collection c.status_9 set value "In Progress"
    $execute as @s if score @s $(objective) matches ..7 run data modify storage sa:collection c.color_9 set value "red"
    $execute as @s if score @s $(objective) matches 8 unless score @s $(collected) matches $(t9).. run data modify storage sa:collection c.status_9 set value "In Progress"
    $execute as @s if score @s $(objective) matches 8 unless score @s $(collected) matches $(t9).. run data modify storage sa:collection c.color_9 set value "yellow"

# Level 10
    $execute as @s if score @s $(objective) matches 10.. run data modify storage sa:collection c.status_10 set value "Claimed"
    $execute as @s if score @s $(objective) matches 10.. run data modify storage sa:collection c.color_10 set value "green"
    $execute as @s if score @s $(objective) matches 9 if score @s $(collected) matches $(t10).. run data modify storage sa:collection c.status_10 set value "- Click to Claim - "
    $execute as @s if score @s $(objective) matches 9 if score @s $(collected) matches $(t10).. run data modify storage sa:collection c.color_10 set value "gold"
    $execute as @s if score @s $(objective) matches ..8 run data modify storage sa:collection c.status_10 set value "In Progress"
    $execute as @s if score @s $(objective) matches ..8 run data modify storage sa:collection c.color_10 set value "red"
    $execute as @s if score @s $(objective) matches 9 unless score @s $(collected) matches $(t10).. run data modify storage sa:collection c.status_10 set value "In Progress"
    $execute as @s if score @s $(objective) matches 9 unless score @s $(collected) matches $(t10).. run data modify storage sa:collection c.color_10 set value "yellow"
