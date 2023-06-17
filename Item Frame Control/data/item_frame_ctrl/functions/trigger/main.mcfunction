# Transfer Score for both Fixed+Invis into Seperate Scores
execute as @s[scores={frame_fixed_invisible=1..}] run function item_frame_ctrl:trigger/adjust_score

# Prevent lag by disallowing changing too many item frames
scoreboard players set @s[scores={frame_invisible=21..}] frame_invisible 20
scoreboard players set @s[scores={frame_fixed=21..}] frame_fixed 20
scoreboard players set @s[scores={frame_fixed_invisible=21..}] frame_fixed_invisible 20

# Set Frame Fixed
execute as @s[scores={frame_fixed=1..}] anchored eyes positioned ^ ^ ^1 run function item_frame_ctrl:trigger/try_to_fix

# Set Frame Invisible
execute as @s[scores={frame_invisible=1..}] anchored eyes positioned ^ ^ ^1 run function item_frame_ctrl:trigger/try_to_invis

# Show edit particles
execute as @e[tag=frame_control_particle] at @s run function item_frame_ctrl:trigger/particles

# Repeat if unfinished
execute as @s[predicate=item_frame_ctrl:frame_trigger] at @s run function item_frame_ctrl:trigger/main
