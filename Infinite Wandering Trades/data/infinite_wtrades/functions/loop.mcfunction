scoreboard players add dummy infinite_wt_tick 1
execute if score dummy infinite_wt_tick matches 20.. run function infinite_wtrades:loop_seconds
execute if score dummy infinite_wt_tick matches 20.. run scoreboard players set dummy infinite_wt_tick 0
