tag @s add guardian_to_elder_guardian
execute as @s at @s unless predicate mob_control:location/monument run tag @s remove guardian_to_elder_guardian
execute as @s at @s positioned ~-1 ~-1 ~-1 unless block ~ ~ ~ minecraft:water run tag @s remove guardian_to_elder_guardian
execute as @s at @s positioned ~ ~-1 ~-1 unless block ~ ~ ~ minecraft:water run tag @s remove guardian_to_elder_guardian
execute as @s at @s positioned ~1 ~-1 ~-1 unless block ~ ~ ~ minecraft:water run tag @s remove guardian_to_elder_guardian
execute as @s at @s positioned ~-1 ~ ~-1 unless block ~ ~ ~ minecraft:water run tag @s remove guardian_to_elder_guardian
execute as @s at @s positioned ~ ~ ~-1 unless block ~ ~ ~ minecraft:water run tag @s remove guardian_to_elder_guardian
execute as @s at @s positioned ~1 ~ ~-1 unless block ~ ~ ~ minecraft:water run tag @s remove guardian_to_elder_guardian
execute as @s at @s positioned ~-1 ~1 ~-1 unless block ~ ~ ~ minecraft:water run tag @s remove guardian_to_elder_guardian
execute as @s at @s positioned ~ ~1 ~-1 unless block ~ ~ ~ minecraft:water run tag @s remove guardian_to_elder_guardian
execute as @s at @s positioned ~1 ~1 ~-1 unless block ~ ~ ~ minecraft:water run tag @s remove guardian_to_elder_guardian
execute as @s at @s positioned ~-1 ~-1 ~ unless block ~ ~ ~ minecraft:water run tag @s remove guardian_to_elder_guardian
execute as @s at @s positioned ~ ~-1 ~ unless block ~ ~ ~ minecraft:water run tag @s remove guardian_to_elder_guardian
execute as @s at @s positioned ~1 ~-1 ~ unless block ~ ~ ~ minecraft:water run tag @s remove guardian_to_elder_guardian
execute as @s at @s positioned ~-1 ~ ~ unless block ~ ~ ~ minecraft:water run tag @s remove guardian_to_elder_guardian
execute as @s at @s positioned ~ ~ ~ unless block ~ ~ ~ minecraft:water run tag @s remove guardian_to_elder_guardian
execute as @s at @s positioned ~1 ~ ~ unless block ~ ~ ~ minecraft:water run tag @s remove guardian_to_elder_guardian
execute as @s at @s positioned ~-1 ~1 ~ unless block ~ ~ ~ minecraft:water run tag @s remove guardian_to_elder_guardian
execute as @s at @s positioned ~ ~1 ~ unless block ~ ~ ~ minecraft:water run tag @s remove guardian_to_elder_guardian
execute as @s at @s positioned ~1 ~1 ~ unless block ~ ~ ~ minecraft:water run tag @s remove guardian_to_elder_guardian
execute as @s at @s positioned ~-1 ~-1 ~1 unless block ~ ~ ~ minecraft:water run tag @s remove guardian_to_elder_guardian
execute as @s at @s positioned ~ ~-1 ~1 unless block ~ ~ ~ minecraft:water run tag @s remove guardian_to_elder_guardian
execute as @s at @s positioned ~1 ~-1 ~1 unless block ~ ~ ~ minecraft:water run tag @s remove guardian_to_elder_guardian
execute as @s at @s positioned ~-1 ~ ~1 unless block ~ ~ ~ minecraft:water run tag @s remove guardian_to_elder_guardian
execute as @s at @s positioned ~ ~ ~1 unless block ~ ~ ~ minecraft:water run tag @s remove guardian_to_elder_guardian
execute as @s at @s positioned ~1 ~ ~1 unless block ~ ~ ~ minecraft:water run tag @s remove guardian_to_elder_guardian
execute as @s at @s positioned ~-1 ~1 ~1 unless block ~ ~ ~ minecraft:water run tag @s remove guardian_to_elder_guardian
execute as @s at @s positioned ~ ~1 ~1 unless block ~ ~ ~ minecraft:water run tag @s remove guardian_to_elder_guardian
execute as @s at @s positioned ~1 ~1 ~1 unless block ~ ~ ~ minecraft:water run tag @s remove guardian_to_elder_guardian
execute as @e[tag=guardian_to_elder_guardian] at @s align xyz run summon minecraft:elder_guardian ~0.5 ~ ~0.5
execute as @e[tag=guardian_to_elder_guardian] at @s run clear @p minecraft:dragon_breath 1
execute as @e[tag=guardian_to_elder_guardian] at @s run playsound minecraft:entity.evoker.cast_spell master @a
execute as @e[tag=guardian_to_elder_guardian] at @s run tp @s[y=-127,dy=258] ~ -128 ~
