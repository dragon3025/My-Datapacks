tag @s remove no_chat
tag @s remove chatting_pet
scoreboard players reset @s pet_chatter_cool
scoreboard players reset @s pet_chatter_time
execute as @s[tag=!silenced] run data merge entity @s {Silent:false}
