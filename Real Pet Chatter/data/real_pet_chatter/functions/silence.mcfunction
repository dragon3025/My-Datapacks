scoreboard players operation @s math_input1 = admin min_chatter_wait
scoreboard players operation @s math_input2 = admin max_chatter_wait
function real_pet_chatter:math/random

scoreboard players operation @s math_input1 = admin min_pet_chatter
scoreboard players operation @s math_input2 = admin max_pet_chatter
execute as @s[scores={pet_chatter_time=..0}] run function real_pet_chatter:math/random_chatter