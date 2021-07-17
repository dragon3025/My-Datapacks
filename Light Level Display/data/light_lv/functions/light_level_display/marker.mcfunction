kill @s[predicate=light_lv:light_safe_for_nether]
kill @s[predicate=!light_lv:location/the_nether,predicate=light_lv:light_safe]

kill @s[predicate=!light_lv:hostile_block_check/spawn_block]

# Nothing spawns in a non-water block above water.
execute as @s[predicate=!light_lv:location/water] at @s positioned ~ ~-1 ~ if predicate light_lv:location/water run kill @s
# Aquatic hostiles only spawn in water blocks that has a water block directly below it.
execute as @s[predicate=light_lv:location/water] at @s positioned ~ ~-1 ~ unless predicate light_lv:location/water run kill @s
# Aquatic hostiles only spawn in oceans and rivers (except for warm ocean).
kill @s[predicate=light_lv:location/water, predicate=!light_lv:location/ocean_or_river_except_warm_ocean]
# Drowned can only spawn below Y:58, Guardians can still spawn above this in monuments though.
kill @s[predicate=light_lv:location/water, predicate=!light_lv:location/ocean_monument, predicate=light_lv:location/oceans_except_warm_ocean, predicate=light_lv:location/above_drown_spawn]
# In monuments Guardian's can spawn as high as Y:61
kill @s[predicate=light_lv:location/water, predicate=light_lv:location/ocean_monument, predicate=light_lv:location/above_guardian_spawn]

# Not all failed surfaces of objects that only take up part of a block space may not get detected.
execute as @s at @s positioned ~ ~-1 ~ if predicate light_lv:hostile_block_check/failed_surfaces run kill @s

#Safer Light Level Compatiblity
execute if score dummy safer_lt_instald matches 1 run kill @s[predicate=!safer_light:above_ground, predicate=safer_light:light_safe, predicate=safer_light:overworld]
execute if score dummy safer_lt_instald matches 1 run kill @s[predicate=safer_light:above_ground, predicate=safer_light:light_safe_surface, predicate=safer_light:overworld]
