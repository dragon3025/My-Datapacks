schedule function no_death_loot:tick 1t

# No Despawning Death Items
## Set Items as Death Items
execute as @a[scores={died=1..}] at @s run tag @e[type=item,distance=..2] add death_item
scoreboard players reset @a died

## Get Amount of Nearby Death Items
scoreboard players set dummy death_item_count 0
execute as @e[type=item, tag=death_item] run scoreboard players add dummy death_item_count 1

## Prevent Death Items from Despawning if amount is < 500
execute unless score dummy death_item_count matches 500.. as @e[type=item, tag=death_item] run function no_death_loot_despawn:death_item
