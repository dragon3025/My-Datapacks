schedule function tool_swap:tick 1t

# Allow triggers
scoreboard players enable @a swap_hotbar_with_inventory
scoreboard players enable @a swap_hotbar_with_ender_chest
scoreboard players enable @a rotate_hotbar_with_inventory
scoreboard players enable @a rotate_hotbar_with_ender_chest
scoreboard players enable @a swap_selected_with_ender_chest
scoreboard players enable @a swap_selected_with_inventory
scoreboard players enable @a swap_tools

# Using Ender Chest trigger without an Ender Chest
tag @a[predicate=tool_swap:needs_ender_chest] add needs_ender_chest

# Don't need an Ender Chest if one is on the ground
execute as @a[tag=needs_ender_chest] at @s if entity @e[type=item, nbt={Item:{id:"minecraft:ender_chest"}}, distance=..16] run tag @s remove needs_ender_chest

# Don't need an Ender Chest if standing on the side of one
execute as @a[tag=needs_ender_chest] at @s run function tool_swap:check_for_ender_chest_block

# Tell player then need an Ender Chest
tellraw @a[tag=needs_ender_chest] {"text": "You don't have an Ender Chest", "color": "red"}

# Swapping Commands
execute as @a[predicate=tool_swap:used_swap_command] at @s run function tool_swap:use_trigger

# Tag no longer needed
tag @a remove needs_ender_chest

# Reset trigger scores
scoreboard players set @a swap_hotbar_with_inventory 0
scoreboard players set @a swap_hotbar_with_ender_chest 0
scoreboard players set @a rotate_hotbar_with_inventory 0
scoreboard players set @a rotate_hotbar_with_ender_chest 0
scoreboard players set @a swap_selected_with_ender_chest 0
scoreboard players set @a swap_selected_with_inventory 0
scoreboard players set @a swap_tools 0
