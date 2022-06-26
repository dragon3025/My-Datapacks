tag @s add villager_to_watchman

tag @e[type=item, nbt={Item:{id:"minecraft:goat_horn"}}, limit=1, sort=nearest] add watchman_goat_horn

execute as @e[tag=watchman_goat_horn, limit=1, sort=nearest] at @s run function watchman:watchman_villager/watchman_goat_horn

tag @s remove villager_to_watchman
tag @s add watchman
