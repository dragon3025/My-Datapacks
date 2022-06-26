schedule function watchman:10_seconds 10s

## Decide what mobs are dangerous
#Tag Persistent Mobs
tag @e[type=#watchman:neutral_or_hostile, tag=!persistent, nbt={PersistenceRequired:true}] add persistent
tag @e[type=#watchman:neutral_or_hostile, tag=persistent, nbt={PersistenceRequired:false}] remove persistent

#Hostile
tag @e[type=#watchman:hostile, tag=!watchman_hostile] add watchman_hostile

#Neutral
tag @e[type=minecraft:zombified_piglin, tag=!watchman_hostile, nbt=!{AngerTime:0}] add watchman_hostile
tag @e[type=minecraft:zombified_piglin, tag=watchman_hostile, nbt={AngerTime:0}] remove watchman_hostile

execute as @e[type=spider, tag=!watchman_hostile] at @s if predicate watchman:hostile_spider_light_levels run tag @s add watchman_hostile
execute as @e[type=spider, tag=watchman_hostile] at @s unless predicate watchman:hostile_spider_light_levels run tag @s remove watchman_hostile

execute as @e[type=cave_spider, tag=!watchman_hostile] at @s if predicate watchman:hostile_cave_spider_light_levels run tag @s add watchman_hostile
execute as @e[type=cave_spider, tag=watchman_hostile] at @s unless predicate watchman:hostile_cave_spider_light_levels run tag @s remove watchman_hostile
