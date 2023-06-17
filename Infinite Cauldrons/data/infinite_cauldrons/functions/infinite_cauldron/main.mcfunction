execute unless block ~ ~ ~ water_cauldron unless block ~ ~ ~ cauldron run tag @s add kill_infinite_cauldron
execute as @s[tag=!kill_infinite_cauldron] run function infinite_cauldrons:infinite_cauldron/refresh
execute as @s[tag=kill_infinite_cauldron] run function infinite_cauldrons:infinite_cauldron/remove
