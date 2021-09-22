#Tick and Seconds
scoreboard players add timer rp_chatter_tick 1
execute if score timer rp_chatter_tick matches 20.. run function real_pet_chatter:loop_seconds
execute if score timer rp_chatter_tick matches 20.. run scoreboard players set timer rp_chatter_tick 0

#Dogs make angry sounds when angry
execute if score admin mobs_anger_dogs matches 1.. as @e[type=wolf, nbt=!{AngerTime:0}] at @s run function real_pet_chatter:angry_dogs
#Dogs make angry sounds when hostiles nearby unless it's already making sounds from being angry
execute if score admin mobs_anger_dogs matches 1.. as @e[type=wolf, nbt={AngerTime:0}] at @s if entity @e[tag=real_pet_chatter_hostile, distance=..4, nbt={PersistenceRequired:false}] run function real_pet_chatter:angry_dogs

#Cats make angry sounds when hostiles nearby
execute if score admin mobs_anger_cats matches 1.. as @e[type=cat] at @s if entity @e[tag=real_pet_chatter_hostile, distance=..4, nbt={PersistenceRequired:false}] run function real_pet_chatter:angry_cats

#Pets quickly unmute when hurt, to prevent mobs from being quite when attacked
execute as @e[tag=chatting_mob] store result score @s rp_chat_health run data get entity @s Health
execute as @e[tag=chatting_mob, scores={rpc_prev_health=0..}] if score @s rp_chat_health < @s rpc_prev_health run function real_pet_chatter:damage_unmute
execute as @e[tag=chatting_mob] run scoreboard players operation @s rpc_prev_health = @s rp_chat_health

#Allow pets to make noise no matter what chatting mode when a player is right up to them (this will allow sounds from pets you're riding)
execute as @e[tag=chatting_mob] at @s if entity @p[distance=..1] run data merge entity @s {Silent:false}
execute as @e[tag=chatting_mob] at @s if entity @p[distance=..1] run tag @s remove no_chat
