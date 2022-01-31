schedule function real_pet_chatter:10_seconds 10s

## Decide what mobs are dangerous
#Tag Persistent Mobs
tag @e[type=#real_pet_chatter:neutral_or_hostile, tag=!persistent, nbt={PersistenceRequired:true}] add persistent
tag @e[type=#real_pet_chatter:neutral_or_hostile, tag=persistent, nbt={PersistenceRequired:false}] remove persistent

#Hostile
tag @e[type=#real_pet_chatter:hostile, tag=!real_pet_chatter_hostile] add real_pet_chatter_hostile
tag @e[type=#real_pet_chatter:hostile, tag=real_pet_chatter_hostile] add real_pet_chatter_hostile

#Neutral
tag @e[type=minecraft:zombified_piglin, tag=!real_pet_chatter_hostile, nbt=!{AngerTime:0}] add real_pet_chatter_hostile
tag @e[type=minecraft:zombified_piglin, tag=real_pet_chatter_hostile, nbt={AngerTime:0}] remove real_pet_chatter_hostile

execute as @e[type=spider, tag=!real_pet_chatter_hostile] at @s if predicate real_pet_chatter:hostile_spider_light_levels run tag @s add real_pet_chatter_hostile
execute as @e[type=spider, tag=real_pet_chatter_hostile] at @s unless predicate real_pet_chatter:hostile_spider_light_levels run tag @s remove real_pet_chatter_hostile

execute as @e[type=cave_spider, tag=!real_pet_chatter_hostile] at @s if predicate real_pet_chatter:hostile_cave_spider_light_levels run tag @s add real_pet_chatter_hostile
execute as @e[type=cave_spider, tag=real_pet_chatter_hostile] at @s unless predicate real_pet_chatter:hostile_cave_spider_light_levels run tag @s remove real_pet_chatter_hostile

## If a mob is given silenced name from another pack, it needs to be unset for controlled chat
execute as @e[type=#real_pet_chatter:noisy_mobs, tag=chatting_mob_v2, name="silenced"] run data merge entity @s {Silent: true}
execute as @e[type=#real_pet_chatter:noisy_mobs, tag=chatting_mob_v2, name="silenced"] run tag @s remove chatting_mob_v2
