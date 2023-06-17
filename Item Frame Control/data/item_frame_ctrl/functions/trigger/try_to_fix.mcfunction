execute as @e[type=#item_frame_ctrl:item_frame, distance=..4, nbt={Fixed:0b, Item:{}}, limit=1, sort=nearest] run function item_frame_ctrl:trigger/fix
scoreboard players remove @s frame_fixed 1
