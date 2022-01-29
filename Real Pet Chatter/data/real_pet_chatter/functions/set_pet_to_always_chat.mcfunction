## Prevent lag
scoreboard players set @s[scores={set_pet_to_always_chat=201..}] set_pet_to_always_chat 200

## Emmit Particles
execute as @e[type=#real_pet_chatter:pets, tag=chatting_mob, tag=!always_chat, distance=..16, limit=1, sort=nearest] run particle heart ~ ~ ~ 0.5 0.5 0.5 1 10 normal

## Unmute and reset chatter time
execute as @e[type=#real_pet_chatter:pets, tag=chatting_mob, tag=!always_chat, distance=..16, limit=1, sort=nearest] run function real_pet_chatter:unmute
execute as @e[type=#real_pet_chatter:pets, tag=chatting_mob, tag=!always_chat, distance=..16, limit=1, sort=nearest] run scoreboard players operation @s pet_chatter_time = @s pet_chatter_limit

## Set to always chat
tag @e[type=#real_pet_chatter:pets, tag=chatting_mob, tag=!always_chat, distance=..16, limit=1, sort=nearest] add always_chat

## Decrease score
scoreboard players remove @s set_pet_to_always_chat 1
