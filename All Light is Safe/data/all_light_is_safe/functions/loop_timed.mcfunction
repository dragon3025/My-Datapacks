execute as @e[type=all_light_is_safe:hostle, predicate=!all_light_is_safe:light_dangerous, predicate=all_light_is_safe:overworld, tag=!light_check] run tp @s ~ -128 ~
tag @e[type=all_light_is_safe:hostle, tag=!light_check] add light_check

#There should be a function to remove light level markers