schedule function hostile_status:10_seconds 10s

## Decide what mobs are dangerous
#Tag Persistent Mobs
tag @e[type=#hostile_status:neutral_or_hostile, tag=!persistent, nbt={PersistenceRequired:true}] add persistent
tag @e[type=#hostile_status:neutral_or_hostile, tag=persistent, nbt={PersistenceRequired:false}] remove persistent

#Hostile
tag @e[type=#hostile_status:hostile, tag=!hostile] add hostile

#Neutral
tag @e[type=minecraft:zombified_piglin, tag=!hostile, nbt=!{AngerTime:0}] add hostile
tag @e[type=minecraft:zombified_piglin, tag=hostile, nbt={AngerTime:0}] remove hostile

execute as @e[type=spider, tag=!hostile] at @s if predicate hostile_status:hostile_spider_light_levels run tag @s add hostile
execute as @e[type=spider, tag=hostile] at @s unless predicate hostile_status:hostile_spider_light_levels run tag @s remove hostile

execute as @e[type=cave_spider, tag=!hostile] at @s if predicate hostile_status:hostile_cave_spider_light_levels run tag @s add hostile
execute as @e[type=cave_spider, tag=hostile] at @s unless predicate hostile_status:hostile_cave_spider_light_levels run tag @s remove hostile
