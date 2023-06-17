execute as @s[nbt=!{Item:{}}] run function item_frame_ctrl:adjust_lost/no_item
execute as @s[nbt={Fixed:1b}] at @s unless block ~ ~ ~ #item_frame_ctrl:air_or_water run function item_frame_ctrl:adjust_lost/non_visible

execute as @s[tag=frame_control_particle] at @s run particle minecraft:note ~ ~ ~ 0.2 0.2 0.2 1 10 force
tag @s remove frame_control_particle
