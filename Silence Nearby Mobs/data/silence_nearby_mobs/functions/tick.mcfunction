schedule function silence_nearby_mobs:tick 1t

# Triggers
execute as @a[scores={silence=1..}] at @s run function silence_nearby_mobs:silence
execute as @a[scores={unsilence=1..}] at @s run function silence_nearby_mobs:unsilence

scoreboard players enable @a silence
scoreboard players enable @a unsilence
