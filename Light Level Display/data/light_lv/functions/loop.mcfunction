scoreboard players add dummy light_level_tick 1

execute if score dummy light_level_tick matches 5.. run function light_lv:loop_timed
execute if score dummy light_level_tick matches 5.. run scoreboard players set dummy light_level_tick 0

execute as @e[tag=light_lv] at @s run particle dust 1 0 0 1 ~ ~ ~ 0.01 0.01 0.01 1 1 force

# Enable Trigger Objectives
scoreboard players enable @a light_lv_toggle
