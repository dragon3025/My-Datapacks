execute as @e[type=zombie_villager] store result score @s temp run data get entity @s ConversionTime
execute as @e[scores={temp=2..}] run data merge entity @s {ConversionTime:1}

advancement revoke @s only fast_villager_curing:player_cure_villager
