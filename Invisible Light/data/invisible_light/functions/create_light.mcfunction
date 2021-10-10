execute if predicate invisible_light:water_source run setblock ~ ~ ~ light[level=0, waterlogged=true]
execute unless predicate invisible_light:water_source run setblock ~ ~ ~ light[level=0]
execute positioned ~0.5 ~0.5 ~0.5 run summon area_effect_cloud ~ ~ ~ {Duration:1000000000, Tags:["invisible_light"]}
kill @s
