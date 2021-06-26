#Fix scores that are too low or high
execute if score admin min_chatter_wait matches ..0 run scoreboard players set admin min_chatter_wait 1
execute if score admin max_chatter_wait < admin min_chatter_wait run scoreboard players operation amdin max_chatter_wait = admin min_chatter_wait
execute if score admin min_pet_chatter matches ..0 run scoreboard players set admin min_pet_chatter 1
execute if score admin max_pet_chatter < admin min_pet_chatter run scoreboard players operation amdin max_pet_chatter = admin min_pet_chatter
execute as @e[tag=chatting_pet] if score @s pet_chatter_cool > admin max_chatter_wait run scoreboard players operation @s pet_chatter_cool = admin max_chatter_wait
execute as @e[tag=chatting_pet] if score @s pet_chatter_time > admin max_pet_chatter run scoreboard players operation @s pet_chatter_time = admin max_pet_chatter

#Run functions for pets near players unless theirs a hostile nearby
execute as @e[tag=chatting_pet] at @s if entity @p[distance=..16] unless entity @s[type=wolf, nbt=!{AngerTime:0}] unless entity @e[type=#real_pet_chatter:hostile, distance=..16, nbt={PersistenceRequired:false}] run function real_pet_chatter:pet_near_player

#Decrease cooldown if the player is close enough
execute as @e[tag=chatting_pet] at @s if entity @p[distance=..128] run scoreboard players remove @s[scores={pet_chatter_cool=1..}] pet_chatter_cool 1
execute as @e[tag=chatting_pet] at @s if entity @p[distance=..128] run tag @s remove away_from_player

#Run functions for pets away from players
execute as @e[tag=chatting_pet, tag=!away_from_player] at @s unless entity @p[distance=..128] run function real_pet_chatter:pet_away_from_player

#Remove cooldown if hostile is nearby
execute as @e[type=wolf, nbt=!{AngerTime:0}] run function real_pet_chatter:pet_away_from_player
execute as @e[tag=chatting_pet] at @s if entity @e[type=#real_pet_chatter:hostile, distance=..16, nbt={PersistenceRequired:false}] run function real_pet_chatter:pet_away_from_player

#Toggle Silenced Status
execute as @e[tag=chatting_pet, scores={pet_chatter_cool=1..}, tag=!no_chat] run data merge entity @s {Silent:true}
execute as @e[tag=chatting_pet, scores={pet_chatter_cool=1..}, tag=!no_chat] run tag @s add no_chat
execute as @e[tag=chatting_pet, scores={pet_chatter_cool=..0}, tag=!silenced, tag=no_chat] run data merge entity @s {Silent:false}
execute as @e[tag=chatting_pet, scores={pet_chatter_cool=..0}, tag=!silenced, tag=no_chat] run tag @s remove no_chat

execute as @e[type=#real_pet_chatter:pets_with_owner_data] unless entity @s[scores={rpc_has_owner=1}] store success score @s rpc_has_owner run data get entity @s Owner
execute as @e[type=#real_pet_chatter:pets, tag=!chatting_pet, nbt=!{Tame:false}] at @s unless entity @s[type=#real_pet_chatter:pets_with_owner_data, scores={rpc_has_owner=0}] run function real_pet_chatter:set_pet_for_chatting
