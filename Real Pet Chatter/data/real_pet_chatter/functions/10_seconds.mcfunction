schedule function real_pet_chatter:10_seconds 10s

# Decide what mobs are dangerous
tag @e[type=#real_pet_chatter:hostile, tag=!real_pet_chatter_hostile] add real_pet_chatter_hostile

tag @e[type=minecraft:zombified_piglin, nbt=!{AngerTime:0}, tag=!real_pet_chatter_hostile] add real_pet_chatter_hostile
tag @e[type=minecraft:zombified_piglin, nbt={AngerTime:0}, tag=real_pet_chatter_hostile] remove real_pet_chatter_hostile

execute as @e[type=spider, tag=!real_pet_chatter_hostile] at @s if predicate real_pet_chatter:hostile_spider_light_levels run tag @s add real_pet_chatter_hostile
execute as @e[type=spider, tag=real_pet_chatter_hostile] at @s unless predicate real_pet_chatter:hostile_spider_light_levels run tag @s remove real_pet_chatter_hostile

execute as @e[type=cave_spider, tag=!real_pet_chatter_hostile] at @s if predicate real_pet_chatter:hostile_cave_spider_light_levels run tag @s add real_pet_chatter_hostile
execute as @e[type=cave_spider, tag=real_pet_chatter_hostile] at @s unless predicate real_pet_chatter:hostile_cave_spider_light_levels run tag @s remove real_pet_chatter_hostile

# Only pets with owners are affected
execute as @e[type=#real_pet_chatter:pets_with_owner_data] unless entity @s[scores={has_owner=1}] store success score @s has_owner run data get entity @s Owner
execute as @e[type=#real_pet_chatter:pets, tag=!chatting_mob, nbt=!{Tame:false}] at @s unless entity @s[type=#real_pet_chatter:pets_with_owner_data, scores={has_owner=0}] run function real_pet_chatter:set_pet_for_chatting
