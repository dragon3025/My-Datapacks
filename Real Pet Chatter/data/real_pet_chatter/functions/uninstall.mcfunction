execute as @e[tag=chatting_mob, name=!"silenced"] run data merge entity @s {Silent:false}

tag @e remove no_chat
tag @e remove chatting_mob

scoreboard objectives remove max_pet_chatter_seconds
scoreboard objectives remove min_pet_chatter_seconds
scoreboard objectives remove mobs_anger_cats
scoreboard objectives remove mobs_anger_dogs
scoreboard objectives remove rp_chatter_tick
scoreboard objectives remove pet_chatter_time
scoreboard objectives remove pet_chatter_limit
scoreboard objectives remove pet_health
scoreboard objectives remove previous_pet_health
scoreboard objectives remove has_owner
scoreboard objectives remove has_rider

tellraw @s {"text": "Real Pet Chatter uninstalled. You can now disable or remove the datapack. If there were mobs that weren't loaded when this command was used, they are muted, and have the following tags left on them: 'no_chat' and 'chatting_mob'. You can fix them with /tag command and '/data merge entity @s {Silent:false}'", "color": "red"}