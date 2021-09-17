# Surface Creepers don't grief
execute as @e[predicate=no_surface_creeper_grief:surface_creeper] at @s if entity @p[distance=..4] run gamerule mobGriefing false
execute as @e[predicate=no_surface_creeper_grief:surface_creeper] at @s if entity @p[distance=..4] run scoreboard players set dummy mob_grief_cool 31
execute if score dummy mob_grief_cool matches ..0 run gamerule mobGriefing true
execute if score dummy mob_grief_cool matches ..0 run scoreboard players set dummy mob_grief_cool 0
scoreboard players remove dummy mob_grief_cool 1
