schedule clear real_pet_chatter:tick
schedule clear real_pet_chatter:second
schedule clear real_pet_chatter:10_seconds
schedule clear real_pet_chatter:debug_view_chatting

execute as @e[type=#real_pet_chatter:noisy_mobs, tag=chatting_mob_v2] run data merge entity @s {Silent:false}

tag @e remove chatting_mob_v2
tag @e remove persistent
tag @e remove hostile
tag @e remove angry_pet
tag @e remove angry_cat

scoreboard objectives remove max_pet_chatter_seconds
scoreboard objectives remove min_pet_chatter_seconds
scoreboard objectives remove mobs_anger_cats
scoreboard objectives remove mobs_anger_dogs
scoreboard objectives remove pet_chatter_time
scoreboard objectives remove pet_chatter_limit
scoreboard objectives remove pet_health
scoreboard objectives remove previous_pet_health
scoreboard objectives remove real_pet_chatter_look_detect_dist
scoreboard objectives remove set_mob_for_controlled_chat
scoreboard objectives remove unset_mob_for_controlled_chat
