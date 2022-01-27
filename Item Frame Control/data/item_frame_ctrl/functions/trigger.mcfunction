# Transfer Score for both Fixed+Invis into Seperate Scores
scoreboard players add @s[scores={frame_fixed_invisible=1..}] frame_fixed 1
scoreboard players add @s[scores={frame_fixed_invisible=1..}] frame_invisible 1
scoreboard players remove @s[scores={frame_fixed_invisible=1..}] frame_fixed_invisible 1

# Prevent lag by disallowing changing too many item frames
scoreboard players set @s[scores={frame_invisible=21..}] frame_invisible 20
scoreboard players set @s[scores={frame_fixed=21..}] frame_fixed 20
scoreboard players set @s[scores={frame_fixed_invisible=21..}] frame_fixed_invisible 20


# Show edit particles
execute anchored eyes positioned ^ ^ ^1 as @e[type=#item_frame_ctrl:item_frame, nbt={Invisible:0b, Item:{}}, limit=1, sort=nearest, distance=..4] run particle minecraft:note ~ ~ ~ 0.2 0.2 0.2 1 10 force

# Set Frame Fixed
execute as @s[scores={frame_fixed=1..}] anchored eyes positioned ^ ^ ^1 run data merge entity @e[type=#item_frame_ctrl:item_frame,nbt={Fixed:0b, Item:{}}, limit=1, sort=nearest, distance=..4] {Fixed:true}
scoreboard players remove @a[scores={frame_fixed=1..}] frame_fixed 1

# Set Frame Invisible
execute as @s[scores={frame_invisible=1..}] anchored eyes positioned ^ ^ ^1 run data merge entity @e[type=#item_frame_ctrl:item_frame,nbt={Invisible:0b, Item:{}}, limit=1, sort=nearest, distance=..4] {Invisible:true}
scoreboard players remove @a[scores={frame_invisible=1..}] frame_invisible 1
