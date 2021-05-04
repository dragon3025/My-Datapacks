kill @s[predicate=light_lv:light_safe_for_nether]
kill @s[predicate=!light_lv:location/the_nether,predicate=light_lv:light_safe]

kill @s[predicate=!light_lv:hostile_block_check/spawn_block]
# Not all failed surfaces of objects that only take up part of a block space may not get detected.
execute as @s at @s positioned ~ ~-1 ~ if predicate light_lv:hostile_block_check/failed_surfaces run kill @s
