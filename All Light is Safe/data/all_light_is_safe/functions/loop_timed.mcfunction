execute as @e[type=#all_light_is_safe:hostile, predicate=all_light_is_safe:overworld, tag=!light_check] at @s run function all_light_is_safe:check_light
tag @e[type=#all_light_is_safe:hostile, tag=!light_check] add light_check
