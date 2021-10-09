schedule clear invisible_light:tick

scoreboard objectives remove raider_wave_num
scoreboard objectives remove invisible_light_reveal_time
scoreboard objectives remove reveal_invisible_lights

execute as @e[tag=invisible_light] at @s if predicate invisible_light:water_source run setblock ~ ~ ~ water
execute as @e[tag=invisible_light] at @s unless predicate invisible_light:water_source run setblock ~ ~ ~ air
kill @e[tag=invisible_light]

tag @e remove invisible_light
tag @e remove safe_from_lightblock
