execute as @s unless score @s pet_chatter_cool matches 1.. if score @s pet_chatter_time matches ..0 run function real_pet_chatter:silence
execute as @s unless score @s pet_chatter_cool matches 1.. run scoreboard players remove @s pet_chatter_time 1

tag @s remove away_from_player
