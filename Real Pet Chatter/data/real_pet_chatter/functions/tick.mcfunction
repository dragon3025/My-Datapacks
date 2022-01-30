schedule function real_pet_chatter:tick 1t

execute as @a[scores={set_mob_for_controlled_chat=1..}] at @s run function real_pet_chatter:controlled_chat/set_mob
execute as @a[scores={unset_mob_for_controlled_chat=1..}] at @s run function real_pet_chatter:controlled_chat/unset_mob

#Enable Scores
scoreboard players enable @a set_mob_for_controlled_chat
scoreboard players enable @a unset_mob_for_controlled_chat
