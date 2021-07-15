scoreboard players add dummy alis_tick 1
execute if score dummy alis_tick matches 20.. run function all_light_is_safe:loop_timed
execute if score dummy alis_tick matches 20.. run scoreboard players set dummy alis_tick 0
