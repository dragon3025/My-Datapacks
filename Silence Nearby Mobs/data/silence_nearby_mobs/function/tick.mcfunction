schedule function silence_nearby_mobs:tick 1t

# Triggers
execute as @a[scores={silence=1..}] at @s run function silence_nearby_mobs:silence
execute as @a[scores={unsilence=1..}] at @s run function silence_nearby_mobs:unsilence
execute as @a[scores={set_silence_immune=1..}] at @s run function silence_nearby_mobs:set_silence_immune
execute as @a[scores={unset_silence_immune=1..}] at @s run function silence_nearby_mobs:unset_silence_immune


scoreboard players enable @a silence
scoreboard players enable @a unsilence
scoreboard players enable @a set_silence_immune
scoreboard players enable @a unset_silence_immune
