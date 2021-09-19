#Fix scores that are too low or high
execute if score admin min_pet_chatter_seconds matches ..0 run scoreboard players set admin min_pet_chatter_seconds 1
execute if score admin max_pet_chatter_seconds < admin min_pet_chatter_seconds run scoreboard players operation amdin max_pet_chatter_seconds = admin min_pet_chatter_seconds
execute as @e[tag=chatting_mob] if score @s pet_chatter_time > admin pet_chatter_limit run scoreboard players operation @s pet_chatter_time = admin pet_chatter_limit

#Decide what mobs are dangerous
tag @e[type=#real_pet_chatter:hostile, tag=!real_pet_chatter_hostile] add real_pet_chatter_hostile

tag @e[type=minecraft:zombified_piglin, nbt=!{AngerTime:0}, tag=!real_pet_chatter_hostile] add real_pet_chatter_hostile
tag @e[type=minecraft:zombified_piglin, nbt={AngerTime:0}, tag=real_pet_chatter_hostile] remove real_pet_chatter_hostile

execute as @e[type=spider, tag=!real_pet_chatter_hostile] at @s if predicate real_pet_chatter:hostile_spider_light_levels run tag @s add real_pet_chatter_hostile
execute as @e[type=spider, tag=real_pet_chatter_hostile] at @s unless predicate real_pet_chatter:hostile_spider_light_levels run tag @s remove real_pet_chatter_hostile

execute as @e[type=cave_spider, tag=!real_pet_chatter_hostile] at @s if predicate real_pet_chatter:hostile_cave_spider_light_levels run tag @s add real_pet_chatter_hostile
execute as @e[type=cave_spider, tag=real_pet_chatter_hostile] at @s unless predicate real_pet_chatter:hostile_cave_spider_light_levels run tag @s remove real_pet_chatter_hostile

#Tag mob if player is near
execute as @e[tag=chatting_mob] at @s unless entity @p[distance=..32] run tag @s add player_near

#Increase chat time if player is near (with variance)
execute as @e[tag=player_near] unless score @s pet_chatter_time >= @s pet_chatter_limit run scoreboard players add @s pet_chatter_time 1
execute as @e[tag=player_near] if predicate real_pet_chatter:chat_variance_chance unless score @s pet_chatter_time >= @s pet_chatter_limit run scoreboard players add @s pet_chatter_time 1
execute as @e[tag=player_near, scores={pet_chatter_time=2..}] if predicate real_pet_chatter:chat_variance_chance run scoreboard players remove @s pet_chatter_time 1

#Decrease pet chatter time if player isn't near. Set new random limit if chat time hits 0.
execute as @e[tag=!player_near, scores={pet_chatter_time=1}] at @s store result score @s pet_chatter_limit run loot spawn ~ -128 ~ loot real_pet_chatter:rand_pet_chatter
execute as @e[tag=!player_near, scores={pet_chatter_time=1..}] at @s run scoreboard players remove @s pet_chatter_time 1

#Set chatter time to limit when their is a threat
execute as @e[type=wolf, nbt=!{AngerTime:0}] run scoreboard players operation @s pet_chatter_time = @s pet_chatter_limit
execute as @e[tag=chatting_mob] at @s if entity @e[tag=real_pet_chatter_hostile, distance=..16, nbt={PersistenceRequired:false}] run scoreboard players operation @s pet_chatter_time = @s pet_chatter_limit

#Set chatter time to limit when player is very far
execute as @e[tag=chatting_mob] at @s unless entity @p[distance=..128] run scoreboard players operation @s pet_chatter_time = @s pet_chatter_limit

#Don't mute pets that you're watching
execute as @a at @s anchored eyes facing entity @e[distance=..16, tag=chatting_mob, tag=!silenced, limit=1, sort=nearest] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run tag @e[distance=..16, tag=chatting_mob, tag=!silenced, limit=1, sort=nearest] add real_pet_chatter_viewed_pet

#Toggle Chatting Status unless the mob has silenced tag from other datapacks
execute as @e[tag=!real_pet_chatter_viewed_pet, tag=chatting_mob, scores={pet_chatter_time=..0}, tag=!no_chat] run data merge entity @s {Silent:true}
execute as @e[tag=!real_pet_chatter_viewed_pet, tag=chatting_mob, scores={pet_chatter_time=..0}, tag=!no_chat] run tag @s add no_chat
execute as @e[tag=chatting_mob, scores={pet_chatter_time=1..}, tag=!silenced, tag=no_chat] run data merge entity @s {Silent:false}
execute as @e[tag=chatting_mob, scores={pet_chatter_time=1..}, tag=!silenced, tag=no_chat] run tag @s remove no_chat
execute as @e[tag=real_pet_chatter_viewed_pet, tag=!silenced, tag=no_chat] run data merge entity @s {Silent:false}
execute as @e[tag=real_pet_chatter_viewed_pet, tag=!silenced, tag=no_chat] run tag @s remove no_chat

#Only pets with owners will chat
execute as @e[type=#real_pet_chatter:pets_with_owner_data] unless entity @s[scores={rpc_has_owner=1}] store success score @s rpc_has_owner run data get entity @s Owner
execute as @e[type=#real_pet_chatter:pets, tag=!chatting_mob, nbt=!{Tame:false}] at @s unless entity @s[type=#real_pet_chatter:pets_with_owner_data, scores={rpc_has_owner=0}] run function real_pet_chatter:set_pet_for_chatting

#Remove tags
tag @e[tag=player_near] remove player_near
tag @e[tag=real_pet_chatter_viewed_pet] remove real_pet_chatter_viewed_pet
