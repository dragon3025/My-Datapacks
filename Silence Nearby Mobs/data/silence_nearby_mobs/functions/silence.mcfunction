scoreboard players set @s[scores={silence=21..}] silence 20
execute as @e[type=#silence_nearby_mobs:noisy_mobs,distance=..16,nbt=!{CustomName:"{\"text\":\"silenced\"}",Silent:true},limit=1,sort=nearest] at @s run particle angry_villager ~ ~2 ~ 0.1 0.1 0.1 1 10
execute as @e[type=#silence_nearby_mobs:noisy_mobs,distance=..16,nbt=!{CustomName:"{\"text\":\"silenced\"}",Silent:true},limit=1,sort=nearest] run data merge entity @s {CustomName:"{\"text\":\"silenced\"}",Silent:true}
scoreboard players remove @s silence 1
