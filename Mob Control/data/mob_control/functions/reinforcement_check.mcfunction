execute at @s unless predicate mob_control:hostile_block_check/spawn_block run tag @s add repel_mob
execute as @s if predicate mob_control:light_safe run tag @s add repel_mob
execute at @s positioned ~ ~-1 ~ if predicate mob_control:hostile_block_check/failed_surfaces run tag @s add repel_mob

tag @s[tag=!repel_mob] add reinforcement_safe
