schedule function take_a_seat:tick 1t

scoreboard players enable @a sit

execute as @a[scores={sit=1..}] at @s run function take_a_seat:summon_chair
execute as @e[type=dolphin, tag=chair] at @s run function take_a_seat:chair
