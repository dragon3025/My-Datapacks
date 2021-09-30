schedule function unused_or_limited_stuff:second 1s

# End Gateway Placer
execute if score admin uls_end_gateway matches 1.. as @e[type=item_frame,nbt={Item:{id:"minecraft:dragon_breath", tag:{display:{Name:'{"text":"place_gateway"}'}}}},predicate=!unused_or_limited_stuff:location/the_end] at @s if block ~ ~ ~ #unused_or_limited_stuff:air run function unused_or_limited_stuff:gateway_placer
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:dragon_breath", tag:{display:{Name:'{"text":"remove_gateway"}'}}}}, predicate=!unused_or_limited_stuff:location/the_end] at @s if block ~ ~ ~ #unused_or_limited_stuff:air run function unused_or_limited_stuff:gateway_placer
