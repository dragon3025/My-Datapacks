execute as @e[type=#item_frame_ctrl:item_frame, nbt=!{Item:{}}] run data merge entity @s {Invisible:0b}
execute as @e[type=#item_frame_ctrl:item_frame, nbt={Fixed:1b}] at @s unless block ~ ~ ~ #item_frame_ctrl:air_or_water run data merge entity @s {Fixed:0b}

scoreboard players set @s frame_adjust_lost 0
