schedule function tool_swap:tick 1t

scoreboard players enable @a swap_hotbar_with_inventory
scoreboard players enable @a swap_hotbar_with_ender_chest
scoreboard players enable @a swap_selected_with_ender_chest
scoreboard players enable @a swap_selected_with_inventory
scoreboard players enable @a swap_tools

execute as @a[scores={swap_hotbar_with_inventory=1..}] at @s run function tool_swap:swap_hotbar_with_inventory

execute as @a[scores={swap_hotbar_with_ender_chest=1..}, nbt=!{Inventory:[{id:"minecraft:ender_chest"}]}] at @s run tellraw @p {"text": "You don't have an Ender Chest", "color": "red"}
execute as @a[scores={swap_hotbar_with_ender_chest=1..}, nbt={Inventory:[{id:"minecraft:ender_chest"}]}] at @s run function tool_swap:swap_hotbar_with_ender_chest

execute as @a[scores={swap_selected_with_ender_chest=1..}, nbt=!{Inventory:[{id:"minecraft:ender_chest"}]}] at @s run tellraw @p {"text": "You don't have an Ender Chest", "color": "red"}
execute as @a[scores={swap_selected_with_ender_chest=1..}, nbt={Inventory:[{id:"minecraft:ender_chest"}]}] at @s run function tool_swap:swap_selected_with_ender_chest

execute as @a[scores={swap_selected_with_inventory=1..}] at @s run function tool_swap:swap_selected_with_inventory

execute as @a[scores={swap_tools=1..}, nbt=!{Inventory:[{id:"minecraft:ender_chest"}]}] at @s run tellraw @p {"text": "You don't have an Ender Chest", "color": "red"}
execute as @a[scores={swap_tools=1..}, nbt={Inventory:[{id:"minecraft:ender_chest"}]}] at @s run function tool_swap:swap_tools

scoreboard players set @a swap_hotbar_with_inventory 0
scoreboard players set @a swap_hotbar_with_ender_chest 0
scoreboard players set @a swap_selected_with_ender_chest 0
scoreboard players set @a swap_selected_with_inventory 0
scoreboard players set @a swap_tools 0
