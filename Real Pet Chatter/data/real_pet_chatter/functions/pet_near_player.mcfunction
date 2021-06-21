execute as @s unless score @s pet_chatter_cool matches 1.. if score @s pet_chatter_time matches ..0 run function real_pet_chatter:silence
#execute as @s unless score @s pet_chatter_cool matches 1.. run scoreboard players remove @s pet_chatter_time 1
execute as @s unless score @s pet_chatter_cool matches 1.. unless entity @s[type=wolf, nbt=!{AngerTime:0}] unless entity @e[type=#real_pet_chatter:hostile, distance=..16, nbt={PersistenceRequired:false}] run scoreboard players remove @s pet_chatter_time 1
