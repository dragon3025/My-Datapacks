execute as @s[scores={pet_chatter_cool=1..}] run scoreboard players set @s pet_chatter_cool 0
execute store result score @s pet_chatter_time run loot spawn ~ -128 ~ loot real_pet_chatter:rand_pet_chatter
tag @s add away_from_player
