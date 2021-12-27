schedule function real_pet_chatter:debug_view_chatting 1t

execute as @e[tag=chatting_mob, nbt=!{Silent:true}] at @s if entity @p[distance=..128] run particle note ~ ~1 ~ 0.1 0.1 0.1 1 1 force
execute as @e[tag=chatting_mob, nbt=!{Silent:true}] at @s if entity @p[distance=..128] run particle note ~ ~2 ~ 0.1 0.1 0.1 1 1 force
execute as @e[tag=chatting_mob, nbt={Silent:true}] at @s if entity @p[distance=..128] run particle angry_villager ~ ~1 ~ 0.1 0.1 0.1 1 1 force
execute as @e[tag=chatting_mob, nbt={Silent:true}] at @s if entity @p[distance=..128] run particle angry_villager ~ ~2 ~ 0.1 0.1 0.1 1 1 force
