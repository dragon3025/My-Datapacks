schedule function world:tick 1t

scoreboard players add @a world_datapack_player_id 0
execute as @a[scores={world_datapack_player_id=0}] run function world:store_player/get_id

execute as @a[scores={item_count_simplified_1=1..}] run function world:item_count_simplified/stack_size_1
execute as @a[scores={item_count_simplified_16=1..}] run function world:item_count_simplified/stack_size_16
execute as @a[scores={item_count_simplified=1..}] run function world:item_count_simplified/stack_size_64

execute as @a[scores={store_player=1..}] at @s align xyz positioned ~0.5 ~1 ~0.5 run function world:store_player/main

scoreboard players enable @a item_count_simplified
scoreboard players enable @a item_count_simplified_16
scoreboard players enable @a item_count_simplified_1

scoreboard players enable @a store_player

execute if entity @p[tag=find_world_spawn] positioned ~0.5 320 ~0.5 positioned over motion_blocking run particle dust{color:[1, 0, 0], scale:1} ~ ~10 ~ 0.01 5 0.01 1 20 force
