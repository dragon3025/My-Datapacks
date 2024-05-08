scoreboard players set @s[scores={set_silence_immune=21..}] set_silence_immune 20

effect give @e[type=!player, distance=..8, tag=!silence_immune, limit=1, sort=nearest] glowing 3
tag @e[type=!player, distance=..8, tag=!silence_immune, limit=1, sort=nearest] add silence_immune

scoreboard players remove @s set_silence_immune 1
