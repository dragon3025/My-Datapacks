tag @e[distance=..1, tag=chatting_mob_v2, nbt={Silent:true}, limit=1, sort=nearest] add real_pet_chatter_viewed_pet

# If pet found, increase score to prevent looking any further
execute if entity @e[type=#real_pet_chatter:pets, tag=real_pet_chatter_viewed_pet, distance=..1] run scoreboard players set @s real_pet_chatter_look_detect_dist 16

execute as @e[type=#real_pet_chatter:pets, tag=real_pet_chatter_viewed_pet] run data merge entity @s {Silent:false}
tag @e[type=#real_pet_chatter:pets, tag=real_pet_chatter_viewed_pet] remove real_pet_chatter_viewed_pet

scoreboard players add @s real_pet_chatter_look_detect_dist 1
execute as @s[scores={real_pet_chatter_look_detect_dist=..16}] positioned ^ ^ ^1 run function real_pet_chatter:look_detection
