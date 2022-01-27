schedule function item_frame_ctrl:tick 1t

scoreboard players enable @a frame_fixed_invisible
scoreboard players enable @a frame_fixed
scoreboard players enable @a frame_invisible

execute as @a[predicate=item_frame_ctrl:frame_trigger] at @s run function item_frame_ctrl:trigger
