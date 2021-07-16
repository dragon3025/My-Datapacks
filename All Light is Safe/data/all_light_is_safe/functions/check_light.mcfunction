execute store result score @s sky_test_y run data get entity @s Pos[2]
scoreboard players remove @s sky_test_y 1
function all_light_is_safe:test_sky_coverage
execute as @s[tag=!spawned_under_block, predicate=all_light_is_safe:light_safe_surface] run tag @s add safe_light_despawn
execute as @s[tag=spawned_under_block, predicate=all_light_is_safe:light_safe] run tag @s add safe_light_despawn
execute as @s[tag=safe_light_despawn] run tp @s ~ -128 ~
