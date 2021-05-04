execute as @s[predicate=mob_control:chance/20_percent] run tag @s add transform_to_slime_or_witch
execute as @s[tag=transform_to_slime_or_witch,predicate=mob_control:chance/50_percent] run tag @s add transform_to_slime
# Slime chances here pretend that the player is on the highest regional difficulty
execute as @s[tag=transform_to_slime,predicate=mob_control:chance/50_percent] run tag @s add big_slime
execute as @s[tag=transform_to_slime,tag=!big_slime,predicate=mob_control:chance/medium_slime_chance] run tag @s add medium_slime
execute as @s[tag=transform_to_slime_or_witch,tag=!transform_to_slime] run tag @s add transform_to_witch


execute as @s[tag=transform_to_slime,tag=big_slime] at @s align xyz run summon minecraft:slime ~0.5 ~ ~0.5 {Size: 3}
execute as @s[tag=transform_to_slime,tag=medium_slime] at @s align xyz run summon minecraft:slime ~0.5 ~ ~0.5 {Size: 1}
execute as @s[tag=transform_to_slime,tag=!big_slime,tag=!medium_slime] at @s align xyz run summon minecraft:slime ~0.5 ~ ~0.5 {Size: 0}
execute as @s[tag=transform_to_slime] run tag @s add repel_mob

execute as @s[tag=transform_to_witch] at @s align xyz run summon minecraft:witch ~0.5 ~ ~0.5
execute as @s[tag=transform_to_witch] run tag @s add repel_mob

tag @s add tried_swamp_transform
