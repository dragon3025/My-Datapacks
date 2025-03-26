schedule function end_gateway_placer:tick 1t

execute as @a[nbt={SelectedItem:{id:"minecraft:stick", components:{"minecraft:custom_data":{gateway_placer:true}}}}] at @s anchored eyes positioned ^0 ^0 ^3 align xyz run function end_gateway_placer:holding_deco_gateway

scoreboard players remove @a[scores={gateway_tool_cooldown=1..}] gateway_tool_cooldown 1
