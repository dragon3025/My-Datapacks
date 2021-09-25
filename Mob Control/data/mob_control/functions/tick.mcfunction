schedule function mob_control:tick 1t

# Enable Trigger Objectives
execute if score admin mob_ctrl_copy_ho matches 1.. run scoreboard players enable @a copy_horse_stats
