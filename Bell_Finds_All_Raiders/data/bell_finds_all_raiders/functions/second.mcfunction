schedule function bell_finds_all_raiders:second 1s

# Bells Help Find Raids
execute as @e[type=#minecraft:raiders] store result score @s raider_wave_num run data get entity @s Wave 1
#execute as @a at @s if block ~ ~-1 ~ bell run effect give @e[scores={raider_wave_num=1..}, limit=1, sort=nearest] minecraft:glowing 3
#execute as @a at @s if block ~ ~ ~ bell run effect give @e[scores={raider_wave_num=1..}, limit=1, sort=nearest] minecraft:glowing 3
#execute as @a at @s if block ~ ~1 ~ bell run effect give @e[scores={raider_wave_num=1..}, limit=1, sort=nearest] minecraft:glowing 3
#execute as @a at @s if block ~ ~2 ~ bell run effect give @e[scores={raider_wave_num=1..}, limit=1, sort=nearest] minecraft:glowing 3
#execute as @a at @s if block ~1 ~ ~ bell run effect give @e[scores={raider_wave_num=1..}, limit=1, sort=nearest] minecraft:glowing 3
#execute as @a at @s if block ~-1 ~ ~ bell run effect give @e[scores={raider_wave_num=1..}, limit=1, sort=nearest] minecraft:glowing 3
#execute as @a at @s if block ~ ~ ~1 bell run effect give @e[scores={raider_wave_num=1..}, limit=1, sort=nearest] minecraft:glowing 3
#execute as @a at @s if block ~ ~ ~-1 bell run effect give @e[scores={raider_wave_num=1..}, limit=1, sort=nearest] minecraft:glowing 3

execute as @a[scores={bell_rung=1..}] at @s run effect give @e[scores={raider_wave_num=1..}] minecraft:glowing 3

scoreboard players reset @a bell_rung
