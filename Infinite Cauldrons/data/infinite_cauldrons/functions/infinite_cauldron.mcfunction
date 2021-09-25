execute unless block ~ ~ ~ water_cauldron unless block ~ ~ ~ cauldron run tag @s add kill_infinite_cauldron
data merge entity @s {Duration:1000000000}
execute as @s[tag=!kill_infinite_cauldron] run setblock ~ ~ ~ water_cauldron[level=3]
execute as @s[tag=kill_infinite_cauldron] run summon item ~ ~ ~ {Item:{id:"minecraft:kelp", Count:1b}}
kill @s[tag=kill_infinite_cauldron]
