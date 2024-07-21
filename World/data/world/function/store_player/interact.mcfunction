advancement revoke @s only world:interaction

execute as @e[type=interaction, nbt={interaction:{}}, tag=store_player_storage] at @s unless block ~ ~ ~ #air on target run tellraw @s {"color": "red", "text": "Before interacting with this marker, remove the block that this marker is in."}

execute as @e[type=interaction, nbt={interaction:{}}, tag=store_player_storage] at @s if block ~ ~ ~ #air on passengers at @s unless score @p world_datapack_player_id = @s world_datapack_player_id on target run tellraw @s {"color": "red", "text": "You don't own this."}

execute as @e[type=interaction, nbt={interaction:{}}, tag=store_player_storage] at @s if block ~ ~ ~ #air on passengers at @s if score @p world_datapack_player_id = @s world_datapack_player_id run function world:store_player/interaction_entity

execute as @e[type=interaction, nbt={interaction:{}}, tag=store_player_storage] run data remove entity @s interaction
