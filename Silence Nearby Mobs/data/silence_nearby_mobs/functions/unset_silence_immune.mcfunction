scoreboard players set @s[scores={unset_silence_immune=21..}] unset_silence_immune 20

effect give @e[type=!player, distance=..8, tag=silence_immune, limit=1, sort=nearest] glowing 3
tag @e[type=!player, distance=..8, tag=silence_immune, limit=1, sort=nearest] remove silence_immune

scoreboard players remove @s unset_silence_immune 1
