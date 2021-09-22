scoreboard players add timer mob_control_tick 1
execute if score timer mob_control_tick matches 20.. run function mob_control:loop_seconds
execute if score timer mob_control_tick matches 20.. run scoreboard players set timer mob_control_tick 0

# Enable Trigger Objectives
execute if score admin mob_ctrl_copy_ho matches 1.. run scoreboard players enable @a copy_horse_stats
