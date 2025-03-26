execute store result score #doImmediateRespawn temp run gamerule doImmediateRespawn
execute if score #doImmediateRespawn temp matches 0 as @e[type=item, distance=..2] run function no_death_loot_despawn:death_item/main
execute if score #doImmediateRespawn temp matches 1 as @e[type=item, nbt={Age:0s}] run function no_death_loot_despawn:death_item/main
scoreboard players reset @a died
