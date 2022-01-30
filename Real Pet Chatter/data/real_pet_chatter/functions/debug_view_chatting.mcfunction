schedule function real_pet_chatter:debug_view_chatting 1t

execute as @e[type=#real_pet_chatter:pets, tag=chatting_mob_v2, nbt=!{Silent:true}] at @s if entity @p[distance=..128] run particle note ~ ~1.5 ~ 0.1 0.2 0.1 1 1 force
execute as @e[type=#real_pet_chatter:pets, tag=chatting_mob_v2, nbt={Silent:true}] at @s if entity @p[distance=..128] run particle angry_villager ~ ~1.5 ~ 0.1 0.2 0.1 1 1 force
