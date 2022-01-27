#Run every 5 ticks
schedule function infinite_cauldrons:5_ticks 5t

#Infinite Cauldron Processing
execute as @e[type=area_effect_cloud, tag=infinite_cauldron] at @s run function infinite_cauldrons:infinite_cauldron
