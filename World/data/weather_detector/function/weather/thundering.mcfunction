execute as @e[type=item_frame, nbt={Item:{id:"minecraft:trident"}}] if data entity @s Item.components."minecraft:enchantments"."minecraft:channeling" at @s run function weather_detector:copper_bulb/thundering

scoreboard players set #admin watd_weather 2
