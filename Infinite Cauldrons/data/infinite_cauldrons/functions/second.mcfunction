#Run every second
schedule function infinite_cauldrons:second 1s

#Create Infinite Cauldron
execute as @e[type=item,nbt={Item:{id:"minecraft:kelp", Count: 1b}}] at @s if block ~ ~ ~ water_cauldron[level=3] align xyz unless entity @e[type=area_effect_cloud, tag=infinite_cauldron, dx=0, dy=0, dz=0] positioned ~0.5 ~0.5 ~0.5 run function infinite_cauldrons:create_infinite_cauldron
