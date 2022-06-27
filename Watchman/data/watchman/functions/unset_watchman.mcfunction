execute if entity @e[tag=!watchman, type=#watchman:watchman, distance=..8] run tellraw @s {"text": "You need a Watchman Villager within 8 blocks.", "color": "red"}
execute if entity @e[tag=!watchman, type=#watchman:watchman, distance=..8] run tag @s add unset_watchman_failed

execute as @e[tag=!unset_watchman_failed] as @e[tag=watchman, limit=1, sort=nearest] at @s run function watchman:watchman_villager/unset
tellraw @s[tag=!unset_watchman_failed] {"text": "Watchman unset", "color": "yellow"}

tag @s remove unset_watchman_failed

scoreboard players set @s unset_watchman 0
