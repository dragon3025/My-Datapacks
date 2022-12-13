effect give @e[type=#silence_nearby_mobs:noisy_mobs, distance=..8, nbt={Silent:true}, sort=nearest] glowing 3
execute as @e[type=#silence_nearby_mobs:noisy_mobs, distance=..8, nbt={Silent:true}, sort=nearest] run data merge entity @s {Silent:false}

scoreboard players set @s unsilence 0
