schedule function real_pet_chatter:tick 1t

execute as @a[scores={set_pet_to_always_chat=1..}] at @s run function real_pet_chatter:set_pet_to_always_chat
execute as @a[scores={unset_pet_to_always_chat=1..}] at @s run function real_pet_chatter:unset_pet_to_always_chat

#Enable Scores
scoreboard players enable @a set_pet_to_always_chat
scoreboard players enable @a unset_pet_to_always_chat
