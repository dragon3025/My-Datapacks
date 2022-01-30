execute as @s[nbt={Age:0}] if predicate real_pet_chatter:cat_hiss_chance run playsound entity.cat.hiss neutral @a ~ ~ ~
execute as @s[nbt={Age:0}] if predicate real_pet_chatter:cat_growl_chance run playsound entity.cat.growl neutral @a ~ ~ ~
execute as @s[nbt={Age:0}] if entity @e[type=#real_pet_chatter:neutral_or_hostile, tag=real_pet_chatter_hostile, tag=!persistent, distance=..4] if predicate real_pet_chatter:cat_yell_chance run playsound entity.cat.yell neutral @a ~ ~ ~ 2

execute as @s[nbt=!{Age:0}] if predicate real_pet_chatter:cat_hiss_chance run playsound entity.cat.hiss neutral @a ~ ~ ~ 1 2
execute as @s[nbt=!{Age:0}] if predicate real_pet_chatter:cat_growl_chance run playsound entity.cat.growl neutral @a ~ ~ ~ 1 2
execute as @s[nbt=!{Age:0}] if entity @e[type=#real_pet_chatter:neutral_or_hostile, tag=real_pet_chatter_hostile, tag=!persistent, distance=..4] if predicate real_pet_chatter:cat_yell_chance run playsound entity.cat.yell neutral @a ~ ~ ~ 2 2
