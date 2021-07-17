execute as @e[type=#safer_light:hostile, predicate=safer_light:overworld, tag=!light_check] at @s run function safer_light:check_light
tag @e[type=#safer_light:hostile, tag=!light_check] add light_check
