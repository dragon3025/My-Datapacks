execute as @s[nbt={Age:0}] if predicate real_pet_chatter:wolf_bark_chance run playsound entity.wolf.ambient neutral @a ~ ~ ~
execute as @s[nbt={Age:0}] if predicate real_pet_chatter:wolf_growl_chance run playsound entity.wolf.growl neutral @a ~ ~ ~

execute as @s[nbt=!{Age:0}] if predicate real_pet_chatter:wolf_bark_chance run playsound entity.wolf.ambient neutral @a ~ ~ ~ 1 2
execute as @s[nbt=!{Age:0}] if predicate real_pet_chatter:wolf_growl_chance run playsound entity.wolf.growl neutral @a ~ ~ ~ 1 2