schedule function item_frame_ctrl:tick 1t

scoreboard players enable @a frame_fixed_invisible
scoreboard players enable @a frame_fixed
scoreboard players enable @a frame_invisible
scoreboard players enable @a frame_adjust_lost

execute as @a[predicate=item_frame_ctrl:frame_trigger] at @s run function item_frame_ctrl:trigger/main
execute as @a[scores={frame_adjust_lost=1..}] at @s run function item_frame_ctrl:adjust_lost/main
