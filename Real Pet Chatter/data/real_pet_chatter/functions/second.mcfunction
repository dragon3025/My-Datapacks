schedule function real_pet_chatter:second 1s

## Tag cats and dogs for Anger
# Remove tag to redecide what pets are angry
tag @e[type=#real_pet_chatter:pets, tag=angry_pet] remove angry_pet
tag @e[type=cat, tag=angry_cat] remove angry_cat

#Dogs
execute if score admin mobs_anger_dogs matches 1.. as @e[type=wolf, nbt=!{AngerTime:0}] run tag @s add angry_pet
execute if score admin mobs_anger_cats matches 1.. as @e[type=#real_pet_chatter:pets] at @s if entity @e[type=#real_pet_chatter:neutral_or_hostile, tag=real_pet_chatter_hostile, tag=!persistent, distance=..4] run tag @s add angry_pet
tag @e[type=cat, tag=angry_pet] add angry_cat

# Mob Anger Sounds
## Dogs make angry sounds when angry
execute if score admin mobs_anger_dogs matches 1.. as @e[type=wolf, tag=angry_pet] at @s run function real_pet_chatter:angry_sounds/dog/main

## Cats make angry sounds when angry
execute if score admin mobs_anger_cats matches 1.. as @e[type=cat, tag=angry_pet] at @s run function real_pet_chatter:angry_sounds/cat/main

# Fix scores that are too low or high
execute if score admin min_pet_chatter_seconds matches ..0 run scoreboard players set admin min_pet_chatter_seconds 1
execute if score admin max_pet_chatter_seconds < admin min_pet_chatter_seconds run scoreboard players operation amdin max_pet_chatter_seconds = admin min_pet_chatter_seconds

#Chatting Pet Functions
execute as @e[type=#real_pet_chatter:pets, tag=chatting_mob_v2, name=!"silenced"] at @s run function real_pet_chatter:chatting_pet_second

# Don't mute pets that you're looking at
execute as @a at @s run function real_pet_chatter:look_detection
scoreboard players reset @a real_pet_chatter_look_detect_dist
