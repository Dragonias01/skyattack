#Werte Aktualiesierung

#steuerung der actionbar
#execute as @a[scores={timer=1000..}] run function spass:actionbar/a_stats

execute as @a[scores={timer=0..80}] run function sa:actionbar/mining
execute as @a[scores={timer=81..89}] run scoreboard players set @s timer 1000


execute as @a[scores={timer=90..170}] run function sa:actionbar/fishing
execute as @a[scores={timer=171..179}] run scoreboard players set @s timer 1000

execute as @a[scores={timer=190..270}] run function sa:actionbar/farming
execute as @a[scores={timer=271..279}] run scoreboard players set @s timer 1000

execute as @a[scores={timer=280..360}] run function sa:actionbar/logging
execute as @a[scores={timer=361..369}] run scoreboard players set @s timer 1000

execute as @a[scores={timer=370..450}] run function sa:actionbar/combat
execute as @a[scores={timer=451..459}] run scoreboard players set @s timer 1000

#wird noch für alle collecitons benötigt
execute as @a[scores={timer=1100..}] run scoreboard players set @s timer 1000