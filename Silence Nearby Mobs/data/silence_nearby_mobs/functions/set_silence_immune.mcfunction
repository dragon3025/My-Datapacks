scoreboard players set @s[scores={set_silence_immune=21..}] set_silence_immune 20

effect give @n[type=!player, distance=..8, tag=!silence_immune] glowing 3
tag @n[type=!player, distance=..8, tag=!silence_immune] add silence_immune

scoreboard players remove @s set_silence_immune 1
