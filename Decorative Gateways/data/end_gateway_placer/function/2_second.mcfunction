schedule function end_gateway_placer:2_second 2s

execute as @e[type=block_display, tag=gateway_placement] at @s unless entity @p[distance=..5, nbt={SelectedItem:{id:"minecraft:stick", components:{"minecraft:custom_data": {gateway_placer: true}}}}] run kill @s
