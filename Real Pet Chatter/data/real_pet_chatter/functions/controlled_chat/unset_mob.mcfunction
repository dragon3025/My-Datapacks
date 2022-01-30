scoreboard players set @s[scores={unset_mob_for_controlled_chat=11..}] unset_mob_for_controlled_chat 10
execute as @e[type=#real_pet_chatter:pets, tag=chatting_mob_v2, limit=1, sort=nearest, distance=..16] at @s run particle angry_villager ~ ~2 ~ 0.1 0.1 0.1 1 10
execute as @e[type=#real_pet_chatter:pets, tag=chatting_mob_v2, limit=1, sort=nearest, distance=..16] at @s run tag @s remove chatting_mob_v2
scoreboard players remove @s unset_mob_for_controlled_chat 1
