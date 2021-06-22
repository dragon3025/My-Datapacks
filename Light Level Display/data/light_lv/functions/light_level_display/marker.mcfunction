kill @s[predicate=light_lv:light_safe_for_nether]
kill @s[predicate=!light_lv:location/the_nether,predicate=light_lv:light_safe]

kill @s[predicate=!light_lv:hostile_block_check/spawn_block]

#Drowned can't spawn if the water is 1 block high, Guardians can if it's a monument
execute as @s at @s unless predicate light_lv:location/monument positioned ~ ~1 ~ unless predicate light_lv:location/ocean_or_river_water positioned ~ ~ ~ run kill @s[predicate=light_lv:location/ocean_or_river_water]
# Not all failed surfaces of objects that only take up part of a block space may not get detected.
execute as @s at @s positioned ~ ~-1 ~ if predicate light_lv:hostile_block_check/failed_surfaces run kill @s
