execute if predicate watchman:light_0 unless block ~ ~ ~ #watchman:air run scoreboard players set @s watchman_search 0

execute unless score @s watchman_search matches ..0 if entity @e[tag=watchman_hostile, tag=!persistent, distance=..2, predicate=watchman:light_13_to_15] run function watchman:watchman_villager/found_mob
execute unless score @s watchman_search matches ..13 if entity @e[tag=watchman_hostile, tag=!persistent, distance=..2, predicate=watchman:light_10_to_12] run function watchman:watchman_villager/found_mob
execute unless score @s watchman_search matches ..26 if entity @e[tag=watchman_hostile, tag=!persistent, distance=..2, predicate=watchman:light_7_to_9] run function watchman:watchman_villager/found_mob
execute unless score @s watchman_search matches ..39 if entity @e[tag=watchman_hostile, tag=!persistent, distance=..2, predicate=watchman:light_4_to_6] run function watchman:watchman_villager/found_mob
execute unless score @s watchman_search matches ..51 if entity @e[tag=watchman_hostile, tag=!persistent, distance=..2, predicate=watchman:light_1_to_3] run function watchman:watchman_villager/found_mob

scoreboard players remove @s watchman_search 1
execute as @s[scores={watchman_search=1..}] positioned ^ ^ ^1 run function watchman:watchman_villager/look
