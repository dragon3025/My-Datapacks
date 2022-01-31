scoreboard players set @s[scores={set_mob_for_controlled_chat=11..}] set_mob_for_controlled_chat 10
execute as @e[type=#real_pet_chatter:pets, tag=!chatting_mob_v2, name=!"silenced", limit=1, sort=nearest, distance=..4] at @s run function real_pet_chatter:controlled_chat/set_self
scoreboard players remove @s set_mob_for_controlled_chat 1
