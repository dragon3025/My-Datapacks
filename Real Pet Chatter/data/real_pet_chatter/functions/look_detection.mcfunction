tag @e[type=#real_pet_chatter:noisy_mobs, distance=..1, limit=1, sort=nearest] add real_pet_chatter_viewed_pet

# If pet found, increase score to prevent looking any further
execute if entity @e[type=#real_pet_chatter:noisy_mobs, tag=real_pet_chatter_viewed_pet, distance=..1] run scoreboard players set @s real_pet_chatter_look_detect_dist 16

execute as @e[type=#real_pet_chatter:noisy_mobs, tag=real_pet_chatter_viewed_pet, tag=chatting_mob_v2, tag=!angry_cat, name=!"silenced", nbt={Silent:true}] run data merge entity @s {Silent:false}
tag @e[type=#real_pet_chatter:noisy_mobs, tag=real_pet_chatter_viewed_pet] remove real_pet_chatter_viewed_pet

scoreboard players add @s real_pet_chatter_look_detect_dist 1
execute as @s[scores={real_pet_chatter_look_detect_dist=..16}] positioned ^ ^ ^1 run function real_pet_chatter:look_detection
