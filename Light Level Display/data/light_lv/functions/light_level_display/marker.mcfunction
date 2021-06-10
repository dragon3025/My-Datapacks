execute as @s[predicate=light_lv:light_safe_for_nether] run say light_safe_for_nether
execute as @s[predicate=!light_lv:location/the_nether,predicate=light_lv:light_safe] run say not_nether_and_light_safe

execute as @s[predicate=!light_lv:hostile_block_check/spawn_block] run say not_spawn_block
execute as @s at @s positioned ~ ~-1 ~ if predicate light_lv:hostile_block_check/failed_surfaces run say failed_surface



kill @s[predicate=light_lv:light_safe_for_nether]
kill @s[predicate=!light_lv:location/the_nether,predicate=light_lv:light_safe]

kill @s[predicate=!light_lv:hostile_block_check/spawn_block]
# Not all failed surfaces of objects that only take up part of a block space may not get detected.
execute as @s at @s positioned ~ ~-1 ~ if predicate light_lv:hostile_block_check/failed_surfaces run kill @s
