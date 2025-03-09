execute as @s[tag=ensp_spawn_check_fail] run return run tp @s ~ -1000 ~

# Magma Cubes will inherit their tags from killed cubes that they spawned from

execute unless dimension the_nether run return run tag @s add ensp_spawn_check

execute if predicate easy_nether_spawn_proof:light_lv_0 run return run tag @s add ensp_spawn_check

# If it likely spawned from a Spawner, let it spawn
execute as @s[type=#easy_nether_spawn_proof:spawner_mob] if entity @p[distance=..24] run return run tag @s add ensp_spawn_check
execute as @s[type=#easy_nether_spawn_proof:spawner_mob] if block ~ ~-1 ~ #easy_nether_spawn_proof:spawner_surface \
    run return run tag @s add ensp_spawn_check

# If it spawned on a natural surface, let it spawn.
execute if predicate easy_nether_spawn_proof:biome/basalt_deltas if block ~ ~-1 ~ #easy_nether_spawn_proof:biome/basalt_deltas \
    run return run tag @s add ensp_spawn_check
execute if predicate easy_nether_spawn_proof:biome/crimson_forest if block ~ ~-1 ~ #easy_nether_spawn_proof:biome/crimson_forest \
    run return run tag @s add ensp_spawn_check
execute if predicate easy_nether_spawn_proof:biome/nether_wastes if block ~ ~-1 ~ #easy_nether_spawn_proof:biome/nether_wastes \
    run return run tag @s add ensp_spawn_check
execute if predicate easy_nether_spawn_proof:biome/soul_sand_valley if block ~ ~-1 ~ #easy_nether_spawn_proof:biome/soul_sand_valley \
    run return run tag @s add ensp_spawn_check
execute if predicate easy_nether_spawn_proof:biome/warped_forest if block ~ ~-1 ~ #easy_nether_spawn_proof:biome/warped_forest \
    run return run tag @s add ensp_spawn_check

execute as @s[predicate=easy_nether_spawn_proof:in_fortress] if block ~ ~-1 ~ nether_bricks run return run tag @s add ensp_spawn_check
execute as @s[predicate=easy_nether_spawn_proof:in_bastion] if block ~ ~-1 ~ #easy_nether_spawn_proof:bastion run return run tag @s add ensp_spawn_check

execute as @s[nbt={PersistenceRequired:true}] run return run tag @s add ensp_spawn_check
execute as @s on vehicle on passengers run return run tag @s add ensp_spawn_check
execute as @s[type=enderman] if data entity @s carriedBlockState run return run tag @s add ensp_spawn_check

tag @s add ensp_spawn_check_fail
tp @s ~ -1000 ~
