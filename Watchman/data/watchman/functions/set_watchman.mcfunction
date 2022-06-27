execute unless entity @e[tag=!watchman, type=#watchman:watchman, distance=..8] run tellraw @s {"text": "You need a non-Watchman Villager within 8 blocks.", "color": "red"}
execute unless entity @e[tag=!watchman, type=#watchman:watchman, distance=..8] run tag @s add set_watchman_failed
execute unless entity @e[type=item, nbt={Item:{id:"minecraft:goat_horn"}}, distance=..8] run tellraw @s {"text": "You need a Goat Horn item within 8 blocks.", "color": "red"}
execute unless entity @e[type=item, nbt={Item:{id:"minecraft:goat_horn"}}, distance=..8] run tag @s add set_watchman_failed

execute as @s[tag=!set_watchman_failed] as @e[tag=!watchman, type=#watchman:watchman, limit=1, sort=nearest] at @s run function watchman:watchman_villager/set
tellraw @s[tag=!set_watchman_failed] {"text": "Watchman set", "color": "yellow"}

tag @s remove set_watchman_failed

scoreboard players set @s set_watchman 0
