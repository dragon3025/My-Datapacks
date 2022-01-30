execute store result score @s pet_chatter_limit run loot spawn ~ -128 ~ loot real_pet_chatter:rand_pet_chatter
scoreboard players operation @s pet_chatter_time = @s pet_chatter_limit
data merge entity @s {Silent:false}
