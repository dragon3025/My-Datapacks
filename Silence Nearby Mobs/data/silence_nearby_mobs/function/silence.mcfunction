effect give @e[type=!player, distance=..8, tag=!silence_immune, nbt=!{Silent:true}] glowing 3
execute as @e[type=!player, distance=..8, tag=!silence_immune, nbt=!{Silent:true}] run data merge entity @s {Silent:true}

scoreboard players set @s silence 0
