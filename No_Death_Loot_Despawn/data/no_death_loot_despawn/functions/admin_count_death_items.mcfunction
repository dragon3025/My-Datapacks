scoreboard players set admin death_item_count 0
execute as @e[type=item, tag=death_item] run function no_death_loot_despawn:death_item/count
tellraw @s [{"text": "Amount of Death Item entities: "},{"score":{"name":"admin","objective":"death_item_count"}}]
