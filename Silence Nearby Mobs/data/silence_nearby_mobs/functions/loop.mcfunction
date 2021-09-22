scoreboard players add timer silence_nm_tick 1
execute if score timer silence_nm_tick matches 20.. run function silence_nearby_mobs:loop_seconds
execute if score timer silence_nm_tick matches 20.. run scoreboard players set timer silence_nm_tick 0
