## Prevent lag
scoreboard players set @s[scores={unset_pet_to_always_chat=201..}] unset_pet_to_always_chat 200

## Emmit Particles
execute as @e[type=#real_pet_chatter:pets, tag=chatting_mob, tag=always_chat, distance=..16, limit=1, sort=nearest] run particle angry_villager ~ ~ ~ 0.5 0.5 0.5 1 10 normal

## Unset to always chat
tag @e[type=#real_pet_chatter:pets, tag=chatting_mob, tag=always_chat, distance=..16, limit=1, sort=nearest] remove always_chat

## Decrease score
scoreboard players remove @s unset_pet_to_always_chat 1
