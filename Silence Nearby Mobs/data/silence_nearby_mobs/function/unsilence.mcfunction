effect give @e[type=!player, distance=..8, nbt={Silent:true}] glowing 3
execute as @e[type=!player, distance=..8, nbt={Silent:true}] run data merge entity @s {Silent:false}

scoreboard players set @s unsilence 0
