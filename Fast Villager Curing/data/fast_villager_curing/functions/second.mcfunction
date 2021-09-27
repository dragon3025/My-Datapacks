schedule function fast_villager_curing:second 1s

# Curing Zombie Villagers is much faster now
execute as @e[type=zombie_villager] store result score @s zombie_villager_conversion_time run data get entity @s ConversionTime
execute as @e[scores={zombie_villager_conversion_time=2..}] run data merge entity @s {ConversionTime:1}
