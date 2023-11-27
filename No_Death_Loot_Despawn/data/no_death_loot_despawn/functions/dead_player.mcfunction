execute store result score admin doImmediateRespawn run gamerule doImmediateRespawn
execute if score admin doImmediateRespawn matches 0 as @e[type=item, distance=..2] run function no_death_loot_despawn:death_item
execute if score admin doImmediateRespawn matches 1 as @e[type=item, nbt={Age:0s}] run function no_death_loot_despawn:death_item
scoreboard players reset @a died
