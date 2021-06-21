# Give Ender Dragon Egg when killing Ender Dragon. Don't reset killed Enderdragon Status, if admin score is set to 1 (this means players can only get it once, in adition to the 1st egg that dropped).
execute if score admin uls_dragon_egg matches 1 as @a[scores={killed_enderdrgn=1}] run give @s dragon_egg
execute if score admin uls_dragon_egg matches 2.. as @a[scores={killed_enderdrgn=1}] at @s run give @a[distance=..128] dragon_egg
execute if score admin uls_dragon_egg matches 2.. run scoreboard players reset @a killed_enderdrgn

# Turn White Rabbits into the Killer Bunny by renaming it "The Killer Bunny"
execute if score admin uls_killer_bunny matches 1.. as @e[type=minecraft:rabbit,nbt={RabbitType: 1, CustomName: '{"text":"The Killer Bunny"}'}] at @s run function unused_or_limited_stuff:transform/the_killer_bunny

# End Gateway Placer
execute if score admin uls_end_gateway matches 1.. as @e[type=item_frame,nbt={Item:{id:"minecraft:dragon_breath", tag:{display:{Name:'{"text":"place_gateway"}'}}}},predicate=!drgn_twks:location/the_end] at @s if block ~ ~ ~ #unused_or_limited_stuff:air run function unused_or_limited_stuff:gateway_placer
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:dragon_breath", tag:{display:{Name:'{"text":"remove_gateway"}'}}}},predicate=!drgn_twks:location/the_end] at @s if block ~ ~ ~ #unused_or_limited_stuff:air run function unused_or_limited_stuff:gateway_placer

# Prevent frames from becoming very hard to find
execute as @e[type=minecraft:item_frame, nbt=!{Item:{}}] run data merge entity @s {Invisible:0b}
execute as @e[type=minecraft:item_frame, nbt={Fixed:1b}] at @s unless block ~ ~ ~ #unused_or_limited_stuff:non_solid unless block ~ ~ ~ minecraft:water run data merge entity @s {Fixed:0b}
