effect give @e[type=#silence_nearby_mobs:noisy_mobs, distance=..8, tag=!silence_immune, nbt=!{Silent:true}, sort=nearest] glowing 3
execute as @e[type=#silence_nearby_mobs:noisy_mobs, distance=..8, tag=!silence_immune, nbt=!{Silent:true}, sort=nearest] run data merge entity @s {Silent:true}

scoreboard players set @s silence 0
