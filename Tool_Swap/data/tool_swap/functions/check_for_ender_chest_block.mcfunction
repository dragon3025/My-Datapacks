execute as @s[tag=needs_ender_chest] if block ~ ~ ~ ender_chest run tag @s remove needs_ender_chest
execute as @s[tag=needs_ender_chest] if block ~1 ~ ~ ender_chest run tag @s remove needs_ender_chest
execute as @s[tag=needs_ender_chest] if block ~-1 ~ ~ ender_chest run tag @s remove needs_ender_chest
execute as @s[tag=needs_ender_chest] if block ~ ~ ~1 ender_chest run tag @s remove needs_ender_chest
execute as @s[tag=needs_ender_chest] if block ~ ~ ~-1 ender_chest run tag @s remove needs_ender_chest
