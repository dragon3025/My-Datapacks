scoreboard players set @s[scores={unset_silence_immune=21..}] unset_silence_immune 20

effect give @n[type=!player, distance=..8, tag=silence_immune] glowing 3
tag @n[type=!player, distance=..8, tag=silence_immune] remove silence_immune

scoreboard players remove @s unset_silence_immune 1
