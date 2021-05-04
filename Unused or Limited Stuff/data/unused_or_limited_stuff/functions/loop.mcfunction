scoreboard players add dummy uls_tick 1
execute if score dummy uls_tick matches 20.. run function unused_or_limited_stuff:loop_seconds
execute if score dummy uls_tick matches 20.. run scoreboard players set dummy uls_tick 0

scoreboard players enable @a set_frame_fixed
scoreboard players enable @a set_frame_invisi
scoreboard players enable @a set_frame_nonfix
scoreboard players enable @a set_frame_visibl
scoreboard players enable @a set_frame_fixinv

# Transform Evoker to Illusioner by hitting it with Dragon Breath
execute if score admin uls_illusioner matches 1.. as @e[type=minecraft:evoker, nbt={HurtTime:10s}] at @s if entity @e[type=minecraft:player,distance=..6,nbt={SelectedItem: {id: "minecraft:dragon_breath"}}] run function unused_or_limited_stuff:transform/illusioner

# Transform a Newly Tamed Horse to Zombie Horse by hitting it with Rotten Flesh
execute if score admin uls_zombie_horse matches 1.. as @e[type=minecraft:horse, nbt={Tame:1b}] at @s run function unused_or_limited_stuff:transform/zombie_horse_test

# Prevent lag by disallowing changing too many item frames
scoreboard players set @a[scores={set_frame_invisi=21..}] set_frame_invisi 20
scoreboard players set @a[scores={set_frame_visibl=21..}] set_frame_visibl 20
scoreboard players set @a[scores={set_frame_fixed=21..}] set_frame_fixed 20
scoreboard players set @a[scores={set_frame_nonfix=21..}] set_frame_nonfix 20
scoreboard players set @a[scores={set_frame_fixinv=21..}] set_frame_fixinv 20

# Particles for Toggle Frame Visiblity and Fixed
execute as @a[predicate=unused_or_limited_stuff:set_frame_invisible] at @s anchored eyes positioned ^ ^ ^1 run execute as @e[type=minecraft:item_frame,nbt={Invisible:0b, Item:{}},limit=1,sort=nearest,distance=..32] at @s run particle minecraft:note ~ ~ ~ 0.2 0.2 0.2 1 10 force
execute as @a[scores={set_frame_visibl=1..}] at @s anchored eyes positioned ^ ^ ^1 run execute as @e[type=minecraft:item_frame,nbt={Invisible:1b},limit=1,sort=nearest,distance=..32] at @s run particle minecraft:note ~ ~ ~ 0.2 0.2 0.2 1 10 force
execute as @a[predicate=unused_or_limited_stuff:set_frame_fixed] at @s anchored eyes positioned ^ ^ ^1 run execute as @e[type=minecraft:item_frame,nbt={Fixed:0b, Item:{}},limit=1,sort=nearest,distance=..32] at @s run particle minecraft:note ~ ~ ~ 0.2 0.2 0.2 1 10 force
execute as @a[scores={set_frame_nonfix=1..}] at @s anchored eyes positioned ^ ^ ^1 run execute as @e[type=minecraft:item_frame,nbt={Fixed:1b},limit=1,sort=nearest,distance=..32] at @s run particle minecraft:note ~ ~ ~ 0.2 0.2 0.2 1 10 force

# Toggle Frame Visiblity and Fixed
execute as @a[predicate=unused_or_limited_stuff:set_frame_invisible] at @s anchored eyes positioned ^ ^ ^1 run data merge entity @e[type=minecraft:item_frame,nbt={Invisible:0b, Item:{}},limit=1,sort=nearest,distance=..32] {Invisible:1b}
execute as @a[predicate=unused_or_limited_stuff:set_frame_fixed] at @s anchored eyes positioned ^ ^ ^1 run data merge entity @e[type=minecraft:item_frame,nbt={Fixed:0b, Item:{}},limit=1,sort=nearest,distance=..32] {Fixed:1b}
execute as @a[scores={set_frame_visibl=1..}] at @s anchored eyes positioned ^ ^ ^1 run data merge entity @e[type=minecraft:item_frame,nbt={Invisible:1b},limit=1,sort=nearest,distance=..32] {Invisible:0b}
execute as @a[scores={set_frame_nonfix=1..}] at @s anchored eyes positioned ^ ^ ^1 run data merge entity @e[type=minecraft:item_frame,nbt={Fixed:1b},limit=1,sort=nearest,distance=..32] {Fixed:0b}

# Reduce item frame changing score
scoreboard players remove @a[scores={set_frame_invisi=1..}] set_frame_invisi 1
scoreboard players remove @a[scores={set_frame_visibl=1..}] set_frame_visibl 1
scoreboard players remove @a[scores={set_frame_fixed=1..}] set_frame_fixed 1
scoreboard players remove @a[scores={set_frame_nonfix=1..}] set_frame_nonfix 1
scoreboard players remove @a[scores={set_frame_fixinv=1..}] set_frame_fixinv 1
