execute as @s positioned ~ ~-1 ~ unless block ~ ~ ~ #unused_or_limited_stuff:air unless block ~ ~ ~ minecraft:dragon_egg at @s run setblock ~ ~ ~ minecraft:dragon_egg
execute as @s positioned ~ ~-1 ~ if block ~ ~-1 ~ minecraft:dragon_egg at @s run kill @s
execute as @s positioned ~ ~-1 ~ unless block ~ ~ ~ #unused_or_limited_stuff:air at @s run kill @s
