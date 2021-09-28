schedule function unused_or_limited_stuff:second 1s

# Give Ender Dragon Egg when killing Ender Dragon. Don't reset killed Enderdragon Status, if admin score is set to 1 (this means players can only get it once, in adition to the 1st egg that dropped).
execute if score admin uls_dragon_egg matches 1 as @a[scores={killed_enderdrgn=1}] run give @s dragon_egg
execute if score admin uls_dragon_egg matches 1 as @a[scores={killed_enderdrgn=1}] run scoreboard players set @s killed_enderdrgn 2
execute if score admin uls_dragon_egg matches 2.. as @a[scores={killed_enderdrgn=1}] at @s run give @a[distance=..128] dragon_egg
execute if score admin uls_dragon_egg matches 2.. run scoreboard players reset @a killed_enderdrgn

# End Gateway Placer
execute if score admin uls_end_gateway matches 1.. as @e[type=item_frame,nbt={Item:{id:"minecraft:dragon_breath", tag:{display:{Name:'{"text":"place_gateway"}'}}}},predicate=!unused_or_limited_stuff:location/the_end] at @s if block ~ ~ ~ #unused_or_limited_stuff:air run function unused_or_limited_stuff:gateway_placer
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:dragon_breath", tag:{display:{Name:'{"text":"remove_gateway"}'}}}}, predicate=!unused_or_limited_stuff:location/the_end] at @s if block ~ ~ ~ #unused_or_limited_stuff:air run function unused_or_limited_stuff:gateway_placer

# Remove special frame status
execute as @e[type=#unused_or_limited_stuff:item_frame, nbt=!{Item:{}}] run data merge entity @s {Invisible:0b}
execute as @e[type=#unused_or_limited_stuff:item_frame, nbt={Fixed:1b}] at @s unless block ~ ~ ~ #unused_or_limited_stuff:air_or_water run data merge entity @s {Fixed:0b}
