scoreboard players set @s[scores={unsilence=21..}] unsilence 20
execute as @e[type=#silence_nearby_mobs:noisy_mobs,distance=..16,nbt={CustomName:"{\"text\":\"silenced\"}",Silent:true},limit=1,sort=nearest] at @s run particle note ~ ~2 ~ 0.1 0.1 0.1 1 10
execute as @e[type=#silence_nearby_mobs:noisy_mobs,distance=..16,nbt={CustomName:"{\"text\":\"silenced\"}",Silent:true},limit=1,sort=nearest] run data merge entity @s {Silent:false, CustomName:""}
scoreboard players remove @s unsilence 1
