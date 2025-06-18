scoreboard players set @a view_spawn_chunk 0

execute if score #admin view_spawn_chunk matches 1 run tellraw @s {"color": "yellow", "text": "Particles are no longer visible around the Spawn Chunk"}
execute if score #admin view_spawn_chunk matches 1 run return run scoreboard players reset #admin view_spawn_chunk

tellraw @s {"color": "yellow", "text": "Particles are now visible around the Spawn Chunk"}
scoreboard players set #admin view_spawn_chunk 1
