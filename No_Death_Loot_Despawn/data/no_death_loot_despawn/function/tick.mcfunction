schedule function no_death_loot_despawn:tick 1t

execute as @a[scores={died=1..}] at @s run function no_death_loot_despawn:dead_player
