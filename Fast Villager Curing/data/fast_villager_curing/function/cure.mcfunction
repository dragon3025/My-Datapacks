execute as @e[type=zombie_villager] store result score @s zombie_villager_conversion_time run data get entity @s ConversionTime
execute as @e[scores={zombie_villager_conversion_time=2..}] run data merge entity @s {ConversionTime:1}

advancement revoke @s only fast_villager_curing:player_cure_villager
