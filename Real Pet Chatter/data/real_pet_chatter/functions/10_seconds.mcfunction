schedule function real_pet_chatter:10_seconds 10s

# If a mob is given silenced name from another pack, it needs to be unset for controlled chat
execute as @e[type=#real_pet_chatter:noisy_mobs/main, tag=chatting_mob_v2, name="silenced"] run data merge entity @s {Silent: true}
execute as @e[type=#real_pet_chatter:noisy_mobs/main, tag=chatting_mob_v2, name="silenced"] run tag @s remove chatting_mob_v2
