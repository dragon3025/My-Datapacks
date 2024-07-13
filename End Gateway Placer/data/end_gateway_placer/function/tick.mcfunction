schedule function end_gateway_placer:tick 1t

execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", components:{"minecraft:custom_name":'"deco_gateway"'}}}] at @s anchored eyes positioned ^0 ^0 ^3 align xyz run function end_gateway_placer:holding_deco_gateway

scoreboard players reset @a toggle_decorative_gateway
