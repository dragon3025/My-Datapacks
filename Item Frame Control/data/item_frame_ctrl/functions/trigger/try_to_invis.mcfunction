execute as @e[type=#item_frame_ctrl:item_frame, distance=..4, nbt={Invisible:0b, Item:{}}, limit=1, sort=nearest] run function item_frame_ctrl:trigger/invis
scoreboard players remove @s frame_invisible 1
