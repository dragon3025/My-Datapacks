schedule function bell_finds_all_raiders:second 1s

execute as @a[scores={bell_rung=1..}] as @e[type=#raiders] unless data entity @s {Wave:0} run effect give @s minecraft:glowing 3

scoreboard players reset @a bell_rung
