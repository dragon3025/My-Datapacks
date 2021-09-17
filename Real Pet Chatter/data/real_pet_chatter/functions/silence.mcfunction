execute store result score @s pet_chatter_cool run loot spawn ~ -128 ~ loot real_pet_chatter:rand_chatter_wait
execute as @s[scores={pet_chatter_time=..0}] store result score @s pet_chatter_time run loot spawn ~ -128 ~ loot real_pet_chatter:rand_pet_chatter
