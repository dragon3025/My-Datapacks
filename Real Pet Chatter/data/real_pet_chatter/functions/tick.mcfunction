schedule function real_pet_chatter:tick 1t

# Trigger setting and unsetting pet to always chat
## Prevent lag
scoreboard players set @a[scores={set_pet_to_be_always_chat=201..}] set_pet_to_be_always_chat 200
scoreboard players set @a[scores={unset_pet_to_be_always_chat=201..}] unset_pet_to_be_always_chat 200
## Set to always chat
execute as @a[scores={set_pet_to_be_always_chat=1..}] at @s at @e[tag=chatting_mob, tag=!always_chat, distance=..16, limit=1, sort=nearest] run particle heart ~ ~ ~ 0.5 0.5 0.5 1 10 normal
execute as @a[scores={set_pet_to_be_always_chat=1..}] at @s run tag @e[tag=chatting_mob, tag=!always_chat, distance=..16, limit=1, sort=nearest] add always_chat
## Unset to always chat
execute as @a[scores={unset_pet_to_be_always_chat=1..}] at @s at @e[tag=chatting_mob, tag=always_chat, distance=..16, limit=1, sort=nearest] run particle angry_villager ~ ~ ~ 0.5 0.5 0.5 1 10 normal
execute as @a[scores={unset_pet_to_be_always_chat=1..}] at @s run tag @e[tag=chatting_mob, tag=always_chat, distance=..16, limit=1, sort=nearest] remove always_chat
## Decrease score
scoreboard players remove @a[scores={set_pet_to_be_always_chat=1..}] set_pet_to_be_always_chat 1
scoreboard players remove @a[scores={unset_pet_to_be_always_chat=1..}] unset_pet_to_be_always_chat 1

#Dogs make angry sounds when angry
execute if score admin mobs_anger_dogs matches 1.. as @e[type=wolf, nbt=!{AngerTime:0}] at @s run function real_pet_chatter:angry_dogs
#Dogs make angry sounds when hostiles nearby unless it's already making sounds from being angry
execute if score admin mobs_anger_dogs matches 1.. as @e[type=wolf, nbt={AngerTime:0}] at @s if entity @e[tag=real_pet_chatter_hostile, distance=..4, nbt={PersistenceRequired:false}] run function real_pet_chatter:angry_dogs

#Cats make angry sounds when hostiles nearby
execute if score admin mobs_anger_cats matches 1.. as @e[type=cat] at @s if entity @e[tag=real_pet_chatter_hostile, distance=..4, nbt={PersistenceRequired:false}] run function real_pet_chatter:angry_cats

#Pets quickly unmute when hurt, to prevent mobs from being quite when attacked
execute as @e[tag=chatting_mob] store result score @s pet_health run data get entity @s Health
execute as @e[tag=chatting_mob, scores={previous_pet_health=0..}, name=!"silenced", tag=!silenced] if score @s pet_health < @s previous_pet_health run function real_pet_chatter:damage_unmute
execute as @e[tag=chatting_mob] run scoreboard players operation @s previous_pet_health = @s pet_health

#Allow pets to make noise no matter what chatting mode when a player is right up to them (this will allow sounds from pets you're riding)
execute as @e[tag=chatting_mob, name=!"silenced", tag=!silenced] at @s if entity @p[distance=..1] run data merge entity @s {Silent:false}
execute as @e[tag=chatting_mob, name=!"silenced", tag=!silenced] at @s if entity @p[distance=..1] run tag @s remove no_chat

#Don't mute pets that you're looking at
execute as @a at @s run function real_pet_chatter:look_detection
scoreboard players reset @a detect_traveled_pets_your_looking_at

#Enable Scores
scoreboard players enable @a set_pet_to_be_always_chat
scoreboard players enable @a unset_pet_to_be_always_chat
