schedule function end_gateway_placer:2_second 2s

execute as @e[type=block_display, tag=gateway_placement] at @s unless entity @p[distance=..5, nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", components:{"minecraft:custom_name":'"deco_gateway"'}}}] run kill @s
