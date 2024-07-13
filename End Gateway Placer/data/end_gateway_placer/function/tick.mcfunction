schedule function end_gateway_placer:tick 1t

#carrot_on_a_stick[custom_name='"Decorative Gateway Tool"',lore=['"Use to place or remove End Gateways"']]

execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", components:{"minecraft:lore":['"Use to place or remove decorative End Gateways"']}}}] at @s anchored eyes positioned ^0 ^0 ^3 align xyz run function end_gateway_placer:holding_deco_gateway

scoreboard players reset @a toggle_decorative_gateway
