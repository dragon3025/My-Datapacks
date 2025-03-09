schedule function easy_nether_spawn_proof:tick 1t

execute as @e[type=#easy_nether_spawn_proof:nether_mob, tag=!ensp_spawn_check] at @s run function easy_nether_spawn_proof:spawn_check
