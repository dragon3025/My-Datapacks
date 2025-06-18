schedule function world:tick 1t

execute as @e[type=marker, tag=bedrock_breaker] at @s run function world:bedrock_breaker
execute as @e[type=tnt, nbt={fuse:1s}] at @s run summon marker ~ ~ ~ {Tags:["bedrock_breaker"]}

execute as @a[predicate=world:is_swimming] at @s if entity @e[type=#world:frames, distance=..15, nbt={Item:{id:"minecraft:poisonous_potato", components:{"minecraft:custom_data":{"dolphins_kelp":true}}}}] run effect give @s dolphins_grace 5

execute as @a[scores={view_spawn_chunk=1..}] at @s run function world:view_spawn_chunk/trigger
execute if score #admin view_spawn_chunk matches 1 positioned ~-10 320 ~-10 run function world:spawn_chunk_particles/main

scoreboard players enable @a view_spawn_chunk
