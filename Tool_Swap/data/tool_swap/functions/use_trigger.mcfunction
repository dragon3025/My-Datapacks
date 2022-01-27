execute as @s[scores={swap_tools=1..}, tag=!needs_ender_chest] run function tool_swap:swap_tools
execute as @s[scores={swap_hotbar_with_ender_chest=1..}, tag=!needs_ender_chest] run function tool_swap:swap_hotbar_with_ender_chest
execute as @s[scores={rotate_hotbar_with_ender_chest=1..}, tag=!needs_ender_chest] run function tool_swap:rotate_hotbar_with_ender_chest
execute as @s[scores={swap_selected_with_ender_chest=1..}, tag=!needs_ender_chest] run function tool_swap:swap_selected_with_ender_chest

execute as @s[scores={swap_hotbar_with_inventory=1..}] run function tool_swap:swap_hotbar_with_inventory
execute as @s[scores={rotate_hotbar_with_inventory=1..}] run function tool_swap:rotate_hotbar_with_inventory
execute as @s[scores={swap_selected_with_inventory=1..}] run function tool_swap:swap_selected_with_inventory
