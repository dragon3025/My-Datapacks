schedule function real_pet_chatter:second 1s

# Mob Anger Sounds
## Dogs make angry sounds when angry
execute if score admin mobs_anger_dogs matches 1.. as @e[type=wolf, nbt=!{AngerTime:0}] at @s run function real_pet_chatter:angry_dogs

## Dogs make angry sounds when hostiles nearby unless it's already making sounds from being angry
execute if score admin mobs_anger_dogs matches 1.. as @e[type=wolf, nbt={AngerTime:0}] at @s if entity @e[type=#real_pet_chatter:neutral_or_hostile, tag=real_pet_chatter_hostile, distance=..4, nbt={PersistenceRequired:false}] run function real_pet_chatter:angry_dogs

## Cats make angry sounds when hostiles nearby
execute if score admin mobs_anger_cats matches 1.. as @e[type=cat] at @s if entity @e[type=#real_pet_chatter:neutral_or_hostile, tag=real_pet_chatter_hostile, distance=..4, nbt={PersistenceRequired:false}] run function real_pet_chatter:angry_cats

# Fix scores that are too low or high
execute if score admin min_pet_chatter_seconds matches ..0 run scoreboard players set admin min_pet_chatter_seconds 1
execute if score admin max_pet_chatter_seconds < admin min_pet_chatter_seconds run scoreboard players operation amdin max_pet_chatter_seconds = admin min_pet_chatter_seconds
execute as @e[type=#real_pet_chatter:pets, tag=!always_chat, tag=chatting_mob] if score @s pet_chatter_time > admin pet_chatter_limit run scoreboard players operation @s pet_chatter_time = admin pet_chatter_limit

# Special Unmute Conditions
## Pets unmute when hurt, to prevent mobs from being quite when attacked
execute as @e[type=#real_pet_chatter:pets, tag=!always_chat, tag=chatting_mob] store result score @s pet_health run data get entity @s Health
execute as @e[type=#real_pet_chatter:pets, tag=!always_chat, tag=chatting_mob, scores={previous_pet_health=0..}, name=!"silenced"] if score @s pet_health < @s previous_pet_health run function real_pet_chatter:damage_unmute
execute as @e[type=#real_pet_chatter:pets, tag=!always_chat, tag=chatting_mob] run scoreboard players operation @s previous_pet_health = @s pet_health

## Allow pets to make noise no matter what chatting mode when a player is right up to them (this will allow sounds from pets you're riding)
execute as @a at @s as @e[type=#real_pet_chatter:pets, tag=!always_chat, tag=chatting_mob, name=!"silenced", distance=..1] run function real_pet_chatter:unmute

# Tag mob if player is near
execute as @e[type=#real_pet_chatter:pets, tag=!always_chat, tag=chatting_mob] at @s unless entity @p[distance=..32] run tag @s add player_far

# Increase chat time if player is far (with variance)
execute as @e[type=#real_pet_chatter:pets, tag=!always_chat, tag=chatting_mob, tag=player_far] unless score @s pet_chatter_time >= @s pet_chatter_limit run scoreboard players add @s pet_chatter_time 1
execute as @e[type=#real_pet_chatter:pets, tag=!always_chat, tag=chatting_mob, tag=player_far] if predicate real_pet_chatter:chat_variance_chance unless score @s pet_chatter_time >= @s pet_chatter_limit run scoreboard players add @s pet_chatter_time 1
execute as @e[type=#real_pet_chatter:pets, tag=!always_chat, tag=chatting_mob, tag=player_far, scores={pet_chatter_time=2..}] if predicate real_pet_chatter:chat_variance_chance run scoreboard players remove @s pet_chatter_time 1

# Decrease pet chatter time if player is near. Set new random limit if chat time hits 0.
execute as @e[type=#real_pet_chatter:pets, tag=!always_chat, tag=chatting_mob, tag=!player_far, scores={pet_chatter_time=1}] at @s store result score @s pet_chatter_limit run loot spawn ~ -128 ~ loot real_pet_chatter:rand_pet_chatter
execute as @e[type=#real_pet_chatter:pets, tag=!always_chat, tag=chatting_mob, tag=!player_far, scores={pet_chatter_time=1..}] at @s run scoreboard players remove @s pet_chatter_time 1

# Set chatter time to limit when their is a threat
execute as @e[type=wolf, nbt=!{AngerTime:0}] run scoreboard players operation @s pet_chatter_time = @s pet_chatter_limit
execute as @e[type=#real_pet_chatter:pets, tag=!always_chat, tag=chatting_mob] at @s if entity @e[tag=real_pet_chatter_hostile, distance=..16, nbt={PersistenceRequired:false}] run scoreboard players operation @s pet_chatter_time = @s pet_chatter_limit

# Set chatter time to limit when player is very far
execute as @e[type=#real_pet_chatter:pets, tag=!always_chat, tag=chatting_mob] at @s unless entity @p[distance=..128] run scoreboard players operation @s pet_chatter_time = @s pet_chatter_limit

# Toggle Chatting Status unless the mob has silenced tag from other datapacks
## Mute when score for chatter is 0 unless set to always chat
execute as @e[type=#real_pet_chatter:pets, tag=!always_chat, tag=chatting_mob, scores={pet_chatter_time=..0}, tag=!no_chat] run function real_pet_chatter:mute
## Umute when score chatter time is 1 or more
execute as @e[type=#real_pet_chatter:pets, tag=!always_chat, tag=chatting_mob, scores={pet_chatter_time=1..}, name=!"silenced", tag=no_chat] run function real_pet_chatter:unmute

# Don't mute pets that you're looking at
execute as @a at @s run function real_pet_chatter:look_detection
scoreboard players reset @a detect_traveled_pets_your_looking_at

# Remove tags
tag @e[type=#real_pet_chatter:pets, tag=player_far] remove player_far
tag @e[type=#real_pet_chatter:pets, tag=real_pet_chatter_viewed_pet] remove real_pet_chatter_viewed_pet
