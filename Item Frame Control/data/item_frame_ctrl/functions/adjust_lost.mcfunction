tag @e[type=#item_frame_ctrl:item_frame, nbt=!{Item:{}}] add frame_control_particle
execute as @e[type=#item_frame_ctrl:item_frame, nbt=!{Item:{}}] run data merge entity @s {Invisible:0b}

execute as @e[type=#item_frame_ctrl:item_frame, nbt={Fixed:1b}] at @s unless block ~ ~ ~ #item_frame_ctrl:air_or_water run tag @s add frame_control_particle
execute as @e[type=#item_frame_ctrl:item_frame, nbt={Fixed:1b}] at @s unless block ~ ~ ~ #item_frame_ctrl:air_or_water run data merge entity @s {Fixed:0b}

execute as @e[tag=frame_control_particle] at @s run particle minecraft:note ~ ~ ~ 0.2 0.2 0.2 1 10 force
tag @e remove frame_control_particle

scoreboard players set @s frame_adjust_lost 0
