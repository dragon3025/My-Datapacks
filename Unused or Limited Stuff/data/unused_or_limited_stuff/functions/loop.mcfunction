scoreboard players add dummy uls_tick 1
execute if score dummy uls_tick matches 20.. run function unused_or_limited_stuff:loop_seconds
execute if score dummy uls_tick matches 20.. run scoreboard players set dummy uls_tick 0

scoreboard players enable @a frame_fixed
scoreboard players enable @a frame_invisible
scoreboard players enable @a frame_fixd_invis
scoreboard players enable @a find_light_blcks

# Transform Evoker to Illusioner by hitting it with Dragon Breath
execute if score admin uls_illusioner matches 1.. as @e[type=minecraft:pillager, nbt={HurtTime:10s}] at @s if entity @e[type=minecraft:player,distance=..6,nbt={SelectedItem: {id: "minecraft:dragon_breath"}}] run function unused_or_limited_stuff:transform/illusioner

# Transform a Newly Tamed Horse to Zombie Horse by hitting it with Rotten Flesh
execute if score admin uls_zombie_horse matches 1.. as @e[type=minecraft:horse, nbt={Tame:1b}] at @s run function unused_or_limited_stuff:transform/zombie_horse_test

# Prevent lag by disallowing changing too many item frames
scoreboard players set @a[scores={frame_invisible=21..}] frame_invisible 20
scoreboard players set @a[scores={frame_fixed=21..}] frame_fixed 20
scoreboard players set @a[scores={frame_fixd_invis=21..}] frame_fixd_invis 20

# Particles for Toggle Frame Visiblity and Fixed
execute as @a[predicate=unused_or_limited_stuff:frame_invisible] at @s anchored eyes positioned ^ ^ ^1 run execute as @e[type=#unused_or_limited_stuff:item_frame,nbt={Invisible:0b, Item:{}}, limit=1, sort=nearest, distance=..4] at @s run particle minecraft:note ~ ~ ~ 0.2 0.2 0.2 1 10 force
execute as @a[predicate=!unused_or_limited_stuff:frame_invisible, scores={frame_fixed=1..}] at @s anchored eyes positioned ^ ^ ^1 run execute as @e[type=#unused_or_limited_stuff:item_frame, nbt={Fixed:0b, Item:{}}, limit=1, sort=nearest, distance=..4] at @s run particle minecraft:note ~ ~ ~ 0.2 0.2 0.2 1 10 force

# Toggle Frame Visiblity and Fixed
execute as @a[predicate=unused_or_limited_stuff:frame_invisible] at @s anchored eyes positioned ^ ^ ^1 run data merge entity @e[type=#unused_or_limited_stuff:item_frame,nbt={Invisible:0b, Item:{}}, limit=1, sort=nearest, distance=..4] {Invisible:true}
execute as @a[predicate=unused_or_limited_stuff:frame_fixed] at @s anchored eyes positioned ^ ^ ^1 run data merge entity @e[type=#unused_or_limited_stuff:item_frame,nbt={Fixed:0b, Item:{}}, limit=1, sort=nearest, distance=..4] {Fixed:true}

# Reduce item frame changing score
scoreboard players remove @a[scores={frame_invisible=1..}] frame_invisible 1
scoreboard players remove @a[scores={frame_fixed=1..}] frame_fixed 1
scoreboard players remove @a[scores={frame_fixd_invis=1..}] frame_fixd_invis 1
