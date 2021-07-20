#Tick and Seconds
scoreboard players add dummy rp_chatter_tick 1
execute if score admin uni_rp_chatter matches ..0 if score dummy rp_chatter_tick matches 20.. run function real_pet_chatter:loop_seconds
execute if score dummy rp_chatter_tick matches 20.. run scoreboard players set dummy rp_chatter_tick 0

#Dogs make angry sounds when angry
execute if score admin mobs_anger_dogs matches 1.. as @e[type=wolf, nbt=!{AngerTime:0}] at @s run function real_pet_chatter:angry_dogs
#Dogs make angry sounds when hostiles nearby unless it's already making sounds from being angry
execute if score admin mobs_anger_dogs matches 1.. as @e[type=wolf, nbt={AngerTime:0}] at @s if entity @e[tag=real_pet_chatter_hostile, distance=..16, nbt={PersistenceRequired:false}] run function real_pet_chatter:angry_dogs

#Cats make angry sounds when hostiles nearby
execute if score admin mobs_anger_cats matches 1.. as @e[type=cat] at @s if entity @e[tag=real_pet_chatter_hostile, distance=..16, nbt={PersistenceRequired:false}] run function real_pet_chatter:angry_cats

#Pets switch off of cooldown when hurt
execute if score admin uni_rp_chatter matches ..0 as @e[tag=chatting_pet] store result score @s rp_chat_health run data get entity @s Health
execute if score admin uni_rp_chatter matches ..0 as @e[tag=chatting_pet, scores={rpc_prev_health=0..}] if score @s rp_chat_health < @s rpc_prev_health run function real_pet_chatter:pet_away_from_player
execute if score admin uni_rp_chatter matches ..0 as @e[tag=chatting_pet] run scoreboard players operation @s rpc_prev_health = @s rp_chat_health

#Pets are allowed to make noise no matter what chatting mode, when they're looked at directly by a player (this will hurt/death sounds)
execute if score admin uni_rp_chatter matches ..0 as @a at @s anchored eyes facing entity @e[distance=..16, tag=chatting_pet, tag=!silenced, limit=1, sort=nearest] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run function real_pet_chatter:unmute_viewed_pet

#Allow pets to make noise no matter what chatting mode when a player is right up to them (this will allow sounds from pets you're riding)
execute if score admin uni_rp_chatter matches ..0 as @e[tag=chatting_pet] at @s if entity @p[distance=..1] run data merge entity @s {Silent:false}
execute if score admin uni_rp_chatter matches ..0 as @e[tag=chatting_pet] at @s if entity @p[distance=..1] run tag @s remove no_chat

#Prepare for uninstall if set to do so
execute if score admin uni_rp_chatter matches 1.. run scoreboard players reset @e pet_chatter_cool
execute if score admin uni_rp_chatter matches 1.. run scoreboard players reset @e pet_chatter_time
execute if score admin uni_rp_chatter matches 1.. run execute as @e[tag=chatting_pet, tag=!silenced] run data merge entity @s {Silent:false}
execute if score admin uni_rp_chatter matches 1.. run execute as @e[tag=chatting_pet] run tag @s remove no_chat
execute if score admin uni_rp_chatter matches 1.. run execute as @e[tag=chatting_pet] run tag @s remove chatting_pet
execute if score admin uni_rp_chatter matches 1.. run execute as @a unless score @s uni_rp_chatter matches 1.. run tellraw @s {"text": "Real Pet Chatter is set to uninstall, go to every pet that has been muted by this datapack to unmute them. When finished, run the uninstall function", "color": "red"}
execute if score admin uni_rp_chatter matches 1.. run execute as @a unless score @s uni_rp_chatter matches 1.. run scoreboard players set @s uni_rp_chatter 1
