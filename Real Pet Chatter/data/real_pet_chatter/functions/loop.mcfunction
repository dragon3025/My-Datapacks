#Tick and Seconds
scoreboard players add dummy rp_chatter_tick 1
execute if score admin uni_rp_chatter matches ..0 if score dummy rp_chatter_tick matches 20.. run function real_pet_chatter:loop_seconds
execute if score dummy rp_chatter_tick matches 20.. run scoreboard players set dummy rp_chatter_tick 0

#Dogs make angry sounds when angry
execute if score admin mobs_anger_dogs matches 1.. as @e[type=wolf, nbt=!{AngerTime:0}] at @s run function real_pet_chatter:angry_dogs
#Dogs make angry sounds when hostiles nearby unless it's already making sounds from being angry
execute if score admin mobs_anger_dogs matches 1.. as @e[type=wolf, nbt={AngerTime:0}] at @s if entity @e[type=#real_pet_chatter:hostile, distance=..16, nbt={PersistenceRequired:false}] run function real_pet_chatter:angry_dogs

#Cats make angry sounds when hostiles nearby
execute if score admin mobs_anger_cats matches 1.. as @e[type=cat] at @s if entity @e[type=#real_pet_chatter:hostile, distance=..16, nbt={PersistenceRequired:false}] run function real_pet_chatter:angry_cats

#Prepare for uninstall if set to do so
execute if score admin uni_rp_chatter matches 1.. run scoreboard players reset @e pet_chatter_cool
execute if score admin uni_rp_chatter matches 1.. run scoreboard players reset @e pet_chatter_time
execute if score admin uni_rp_chatter matches 1.. run execute as @e[tag=chatting_pet, tag=!silenced] run data merge entity @s {Silent:false}
execute if score admin uni_rp_chatter matches 1.. run execute as @e[tag=chatting_pet] run tag @s remove no_chat
execute if score admin uni_rp_chatter matches 1.. run execute as @e[tag=chatting_pet] run tag @s remove chatting_pet
execute if score admin uni_rp_chatter matches 1.. run execute as @a unless score @s uni_rp_chatter matches 1.. run tellraw @s {"text": "Real Pet Chatter is set to uninstall, go to every pet that has been muted by this datapack to unmute them. When finished, run the uninstall function", "color": "red"}
execute if score admin uni_rp_chatter matches 1.. run execute as @a unless score @s uni_rp_chatter matches 1.. run scoreboard players set @s uni_rp_chatter 1
