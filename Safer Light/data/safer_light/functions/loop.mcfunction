execute as @e[type=#safer_light:hostile, predicate=safer_light:overworld, predicate=!safer_light:hostile_spawnable_structures, tag=!light_check] at @s run function safer_light:check_light
tag @e[type=#safer_light:hostile, tag=!light_check] add light_check
