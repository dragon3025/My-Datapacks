scoreboard players add dummy safer_light_tick 1
execute if score dummy safer_light_tick matches 20.. run function safer_light:loop_timed
execute if score dummy safer_light_tick matches 20.. run scoreboard players set dummy safer_light_tick 0
