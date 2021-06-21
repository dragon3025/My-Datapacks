scoreboard players operation @s math_input1 = admin min_pet_chatter
scoreboard players operation @s math_input2 = admin max_pet_chatter
execute as @s run function real_pet_chatter:math/random_chatter
tag @s add chatting_pet
