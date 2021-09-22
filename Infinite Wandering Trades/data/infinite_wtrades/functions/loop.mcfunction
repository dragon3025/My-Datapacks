scoreboard players add timer infinite_wt_tick 1
execute if score timer infinite_wt_tick matches 20.. run function infinite_wtrades:loop_seconds
execute if score timer infinite_wt_tick matches 20.. run scoreboard players set timer infinite_wt_tick 0
