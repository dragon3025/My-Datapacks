schedule function real_pet_chatter:second 1s

# Decide what mobs are dangerous
tag @e[type=#real_pet_chatter:hostile, tag=!real_pet_chatter_hostile] add real_pet_chatter_hostile

tag @e[type=minecraft:zombified_piglin, nbt=!{AngerTime:0}, tag=!real_pet_chatter_hostile] add real_pet_chatter_hostile
tag @e[type=minecraft:zombified_piglin, nbt={AngerTime:0}, tag=real_pet_chatter_hostile] remove real_pet_chatter_hostile

execute as @e[type=spider, tag=!real_pet_chatter_hostile] at @s if predicate real_pet_chatter:hostile_spider_light_levels run tag @s add real_pet_chatter_hostile
execute as @e[type=spider, tag=real_pet_chatter_hostile] at @s unless predicate real_pet_chatter:hostile_spider_light_levels run tag @s remove real_pet_chatter_hostile

execute as @e[type=cave_spider, tag=!real_pet_chatter_hostile] at @s if predicate real_pet_chatter:hostile_cave_spider_light_levels run tag @s add real_pet_chatter_hostile
execute as @e[type=cave_spider, tag=real_pet_chatter_hostile] at @s unless predicate real_pet_chatter:hostile_cave_spider_light_levels run tag @s remove real_pet_chatter_hostile

# Mob Anger Sounds
## Dogs make angry sounds when angry
execute if score admin mobs_anger_dogs matches 1.. as @e[type=wolf, nbt=!{AngerTime:0}] at @s run function real_pet_chatter:angry_dogs

## Dogs make angry sounds when hostiles nearby unless it's already making sounds from being angry
execute if score admin mobs_anger_dogs matches 1.. as @e[type=wolf, nbt={AngerTime:0}] at @s if entity @e[type=#real_pet_chatter:neutral_or_hostile, tag=real_pet_chatter_hostile, distance=..4, nbt={PersistenceRequired:false}] run function real_pet_chatter:angry_dogs

## Cats make angry sounds when hostiles nearby
execute if score admin mobs_anger_cats matches 1.. as @e[type=cat] at @s if entity @e[type=#real_pet_chatter:neutral_or_hostile, tag=real_pet_chatter_hostile, distance=..4, nbt={PersistenceRequired:false}] run function real_pet_chatter:angry_cats

# Only pets with owners are affected
execute as @e[type=#real_pet_chatter:pets_with_owner_data] unless entity @s[scores={has_owner=1}] store success score @s has_owner run data get entity @s Owner
execute as @e[type=#real_pet_chatter:pets, tag=!chatting_mob, nbt=!{Tame:false}] at @s unless entity @s[type=#real_pet_chatter:pets_with_owner_data, scores={has_owner=0}] run function real_pet_chatter:set_pet_for_chatting

# Fix scores that are too low or high
execute if score admin min_pet_chatter_seconds matches ..0 run scoreboard players set admin min_pet_chatter_seconds 1
execute if score admin max_pet_chatter_seconds < admin min_pet_chatter_seconds run scoreboard players operation amdin max_pet_chatter_seconds = admin min_pet_chatter_seconds
execute as @e[type=#real_pet_chatter:pets, tag=chatting_mob] if score @s pet_chatter_time > admin pet_chatter_limit run scoreboard players operation @s pet_chatter_time = admin pet_chatter_limit

# Special Unmute Conditions
## Pets unmute when hurt, to prevent mobs from being quite when attacked
execute as @e[type=#real_pet_chatter:pets, tag=chatting_mob] store result score @s pet_health run data get entity @s Health
execute as @e[type=#real_pet_chatter:pets, tag=chatting_mob, scores={previous_pet_health=0..}, name=!"silenced"] if score @s pet_health < @s previous_pet_health run function real_pet_chatter:damage_unmute
execute as @e[type=#real_pet_chatter:pets, tag=chatting_mob] run scoreboard players operation @s previous_pet_health = @s pet_health

## Allow pets to make noise no matter what chatting mode when a player is right up to them (this will allow sounds from pets you're riding)
execute as @e[type=#real_pet_chatter:pets, tag=chatting_mob, name=!"silenced"] at @s if entity @p[distance=..1] run data merge entity @s {Silent:false}
execute as @e[type=#real_pet_chatter:pets, tag=chatting_mob, name=!"silenced"] at @s if entity @p[distance=..1] run tag @s remove no_chat

# Tag mob if player is near
execute as @e[type=#real_pet_chatter:pets, tag=chatting_mob] at @s unless entity @p[distance=..32] run tag @s add player_far

# Increase chat time if player is far (with variance)
execute as @e[type=#real_pet_chatter:pets, tag=player_far] unless score @s pet_chatter_time >= @s pet_chatter_limit run scoreboard players add @s pet_chatter_time 1
execute as @e[type=#real_pet_chatter:pets, tag=player_far] if predicate real_pet_chatter:chat_variance_chance unless score @s pet_chatter_time >= @s pet_chatter_limit run scoreboard players add @s pet_chatter_time 1
execute as @e[type=#real_pet_chatter:pets, tag=player_far, scores={pet_chatter_time=2..}] if predicate real_pet_chatter:chat_variance_chance run scoreboard players remove @s pet_chatter_time 1

# Decrease pet chatter time if player is near. Set new random limit if chat time hits 0.
execute as @e[type=#real_pet_chatter:pets, tag=!player_far, tag=!always_chat, scores={pet_chatter_time=1}] at @s store result score @s pet_chatter_limit run loot spawn ~ -128 ~ loot real_pet_chatter:rand_pet_chatter
execute as @e[type=#real_pet_chatter:pets, tag=!player_far, tag=!always_chat, scores={pet_chatter_time=1..}] at @s run scoreboard players remove @s pet_chatter_time 1

# Set chatter time to limit when their is a threat
execute as @e[type=wolf, nbt=!{AngerTime:0}] run scoreboard players operation @s pet_chatter_time = @s pet_chatter_limit
execute as @e[type=#real_pet_chatter:pets, tag=chatting_mob] at @s if entity @e[tag=real_pet_chatter_hostile, distance=..16, nbt={PersistenceRequired:false}] run scoreboard players operation @s pet_chatter_time = @s pet_chatter_limit

# Set chatter time to limit when player is very far
execute as @e[type=#real_pet_chatter:pets, tag=chatting_mob] at @s unless entity @p[distance=..128] run scoreboard players operation @s pet_chatter_time = @s pet_chatter_limit

# Toggle Chatting Status unless the mob has silenced tag from other datapacks
## Mute when score for chatter is 0 unless set to always chat
execute as @e[type=#real_pet_chatter:pets, tag=chatting_mob, scores={pet_chatter_time=..0}, tag=!no_chat, tag=!always_chat] run data merge entity @s {Silent:true}
execute as @e[type=#real_pet_chatter:pets, tag=chatting_mob, scores={pet_chatter_time=..0}, tag=!no_chat, tag=!always_chat] run tag @s add no_chat
## Umute when score chatter time is 1 or more
execute as @e[type=#real_pet_chatter:pets, tag=chatting_mob, scores={pet_chatter_time=1..}, name=!"silenced", tag=no_chat] run data merge entity @s {Silent:false}
execute as @e[type=#real_pet_chatter:pets, tag=chatting_mob, scores={pet_chatter_time=1..}, name=!"silenced", tag=no_chat] run tag @s remove no_chat
## Umute when set to always chat
execute as @e[type=#real_pet_chatter:pets, tag=chatting_mob, tag=always_chat, name=!"silenced", tag=no_chat] run data merge entity @s {Silent:false}
execute as @e[type=#real_pet_chatter:pets, tag=chatting_mob, tag=always_chat, name=!"silenced", tag=no_chat] run tag @s remove no_chat

# Don't mute pets that you're looking at
execute as @a at @s run function real_pet_chatter:look_detection
scoreboard players reset @a detect_traveled_pets_your_looking_at

# Remove tags
tag @e[type=#real_pet_chatter:pets, tag=player_far] remove player_far
tag @e[type=#real_pet_chatter:pets, tag=real_pet_chatter_viewed_pet] remove real_pet_chatter_viewed_pet
