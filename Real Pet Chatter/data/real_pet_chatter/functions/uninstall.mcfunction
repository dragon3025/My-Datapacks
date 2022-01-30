schedule clear real_pet_chatter:tick
schedule clear real_pet_chatter:second
schedule clear real_pet_chatter:debug_view_chatting

execute as @e[type=#real_pet_chatter:pets, tag=chatting_mob_v2] run data merge entity @s {Silent:false}

tag @e remove chatting_mob_v2

scoreboard objectives remove max_pet_chatter_seconds
scoreboard objectives remove min_pet_chatter_seconds
scoreboard objectives remove mobs_anger_cats
scoreboard objectives remove mobs_anger_dogs
scoreboard objectives remove rp_chatter_tick
scoreboard objectives remove pet_chatter_time
scoreboard objectives remove pet_chatter_limit
scoreboard objectives remove pet_health
scoreboard objectives remove previous_pet_health
scoreboard objectives remove has_rider
scoreboard objectives remove real_pet_chatter_look_detect_dist

tellraw @s {"text": "All mobs that weren't close enought to players to be loaded when this command was used, may still be fixed. You can fix them by running this command again when nearby before uninstalling.", "color": "red"}
