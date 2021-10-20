schedule function tool_swap:tick 1t

scoreboard players enable @a swap_hotbar_with_inventory
scoreboard players enable @a swap_hotbar_with_ender_chest
scoreboard players enable @a rotate_hotbar_with_inventory
scoreboard players enable @a rotate_hotbar_with_ender_chest
scoreboard players enable @a swap_selected_with_ender_chest
scoreboard players enable @a swap_selected_with_inventory
scoreboard players enable @a swap_tools

tag @a[predicate=tool_swap:needs_ender_chest] add needs_ender_chest
tellraw @a[tag=needs_ender_chest] {"text": "You don't have an Ender Chest", "color": "red"}

execute as @a[scores={swap_hotbar_with_inventory=1..}] at @s run function tool_swap:swap_hotbar_with_inventory

execute as @a[scores={swap_hotbar_with_ender_chest=1..}, tag=!needs_ender_chest] at @s run function tool_swap:swap_hotbar_with_ender_chest

execute as @a[scores={rotate_hotbar_with_inventory=1..}] at @s run function tool_swap:rotate_hotbar_with_inventory

execute as @a[scores={rotate_hotbar_with_ender_chest=1..}, tag=!needs_ender_chest] at @s run function tool_swap:rotate_hotbar_with_ender_chest

execute as @a[scores={swap_selected_with_ender_chest=1..}, tag=!needs_ender_chest] at @s run function tool_swap:swap_selected_with_ender_chest

execute as @a[scores={swap_selected_with_inventory=1..}] at @s run function tool_swap:swap_selected_with_inventory

execute as @a[scores={swap_tools=1..}, tag=!needs_ender_chest] at @s run function tool_swap:swap_tools

tag @a remove needs_ender_chest

scoreboard players set @a swap_hotbar_with_inventory 0
scoreboard players set @a swap_hotbar_with_ender_chest 0
scoreboard players set @a rotate_hotbar_with_inventory 0
scoreboard players set @a rotate_hotbar_with_ender_chest 0
scoreboard players set @a swap_selected_with_ender_chest 0
scoreboard players set @a swap_selected_with_inventory 0
scoreboard players set @a swap_tools 0
