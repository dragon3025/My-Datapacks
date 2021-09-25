execute if score timer dragon3025_timer_tick matches 0 as @e[type=item,nbt={Item:{id:"minecraft:kelp", Count: 1b}}] at @s if block ~ ~ ~ water_cauldron[level=3] align xyz unless entity @e[tag=infinite_cauldron, dx=0, dy=0, dz=0] positioned ~0.5 ~0.5 ~0.5 run function infinite_cauldrons:create_water_cauldron

execute as @e[tag=infinite_cauldron] at @s run function infinite_cauldrons:infinite_cauldron
