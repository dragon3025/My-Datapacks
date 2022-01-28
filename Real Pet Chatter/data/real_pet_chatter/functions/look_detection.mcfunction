tag @e[distance=..1, tag=chatting_mob, nbt={Silent:true}, name=!"silenced", limit=1, sort=nearest] add real_pet_chatter_viewed_pet

# If pet found, increase score to prevent looking any further
execute if entity @e[type=#real_pet_chatter:pets, tag=real_pet_chatter_viewed_pet, distance=..1] run scoreboard players set @s detect_traveled_pets_your_looking_at 16

execute as @e[type=#real_pet_chatter:pets, tag=real_pet_chatter_viewed_pet, name=!"silenced", tag=no_chat] run data merge entity @s {Silent:false}
execute as @e[type=#real_pet_chatter:pets, tag=real_pet_chatter_viewed_pet, name=!"silenced", tag=no_chat] run tag @s remove no_chat
tag @e[type=#real_pet_chatter:pets, tag=real_pet_chatter_viewed_pet] remove real_pet_chatter_viewed_pet

scoreboard players add @s detect_traveled_pets_your_looking_at 1
execute as @s[scores={detect_traveled_pets_your_looking_at=..16}] positioned ^ ^ ^1 run function real_pet_chatter:look_detection
