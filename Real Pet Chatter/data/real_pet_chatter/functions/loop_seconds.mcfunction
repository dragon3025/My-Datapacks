#Fix scores that are too low or high
execute if score admin min_chatter_wait matches ..0 run scoreboard players set admin min_chatter_wait 1
execute if score admin max_chatter_wait < admin min_chatter_wait run scoreboard players operation amdin max_chatter_wait = admin min_chatter_wait
execute if score admin min_pet_chatter matches ..0 run scoreboard players set admin min_pet_chatter 1
execute if score admin max_pet_chatter < admin min_pet_chatter run scoreboard players operation amdin max_pet_chatter = admin min_pet_chatter
execute as @e[type=#real_pet_chatter:pets] if score @s pet_chatter_cool > admin max_chatter_wait run scoreboard players operation @s pet_chatter_cool = admin max_chatter_wait
execute as @e[type=#real_pet_chatter:pets] if score @s pet_chatter_time > admin max_pet_chatter run scoreboard players operation @s pet_chatter_time = admin max_pet_chatter

#Run functions for pets near players
execute as @e[type=#real_pet_chatter:pets] at @s if entity @p[distance=..16] run function real_pet_chatter:pet_near_player

#Decrease cooldown if the player is close enough
execute as @e[type=#real_pet_chatter:pets] at @s if entity @p[distance=..128] run scoreboard players remove @s[scores={pet_chatter_cool=1..}] pet_chatter_cool 1

#Unmute in special situations
execute as @e[type=wolf] at @s if entity @e[type=#real_pet_chatter:hostile, distance=..32] run scoreboard players set @s pet_chatter_cool 0
execute as @e[type=wolf] store result score @s wolf_anger_time run data get entity @s AngerTime
execute as @e[scores={wolf_anger_time=1..}] run scoreboard players set @s pet_chatter_cool 0

#Run functions for pets away from players
execute as @e[type=#real_pet_chatter:pets, tag=!away_from_player] at @s unless entity @p[distance=..128] run function real_pet_chatter:pet_away_from_player

#Toggle Silenced Status
execute as @e[type=#real_pet_chatter:pets, scores={pet_chatter_cool=1..}, tag=!no_chat] run data merge entity @s {Silent:true}
execute as @e[type=#real_pet_chatter:pets, scores={pet_chatter_cool=1..}, tag=!no_chat] run tag @s add no_chat
execute as @e[type=#real_pet_chatter:pets, scores={pet_chatter_cool=..0}, tag=!silenced, tag=no_chat] run data merge entity @s {Silent:false}
execute as @e[type=#real_pet_chatter:pets, scores={pet_chatter_cool=..0}, tag=!silenced, tag=no_chat] run tag @s remove no_chat
