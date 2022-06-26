execute if entity @e[tag=watchman_hostile, tag=!persistent, distance=..64] run scoreboard players set @s watchman_search 64
execute if entity @e[tag=watchman_hostile, tag=!persistent, distance=..64] facing entity @e[tag=watchman_hostile, tag=!persistent, distance=..64, limit=1, sort=nearest] eyes run function watchman:watchman_villager/look

execute as @s[tag=found_mob] at @s run function watchman:watchman_villager/warn
