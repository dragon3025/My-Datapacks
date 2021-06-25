execute as @e[type=horse] at @s run function real_pet_chatter:fix_mob_self
execute as @e[type=#real_pet_chatter:pets_with_owner_data, tag=!has_owner] at @s run function real_pet_chatter:fix_mob_self
