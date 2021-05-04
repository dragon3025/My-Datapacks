scoreboard players add dummy silence_nm_tick 1
execute if score dummy silence_nm_tick matches 20.. run function silence_nearby_mobs:loop_seconds
execute if score dummy silence_nm_tick matches 20.. run scoreboard players set dummy silence_nm_tick 0
